require 'GuiConstants'
require 'PokeCard'
local GamePlayer = require('GamePlayer')

local GameScene = class('GameScene', function()
  return cc.Scene:create()
end)

function GameScene.extend(target, ...)
  local t = tolua.getpeer(target)
  if not t then
    t = {}
    tolua.setpeer(target, t)
  end
  setmetatable(t, GameScene)
  if type(target.ctor) == 'function' then
    target:ctor(...)
  end

  return target
end

function GameScene:ctor(...)
  cc.SpriteFrameCache:getInstance():addSpriteFramesWithFile('poke_cards.plist')
  
  self.visibleSize = cc.Director:getInstance():getVisibleSize()
  self.origin = cc.Director:getInstance():getVisibleOrigin()

  self:registerScriptHandler(function(event)
    print('event => ', event)
    if event == "enterTransitionFinish" then
      self:init()
    elseif event == 'exit' then
      self:cleanup()
    end
  end)
end

function GameScene:cleanup()
end

function GameScene:init()
  local this = self
  self:initKeypadHandler()

  local rootLayer = cc.Layer:create()
  self:addChild(rootLayer)

  local ui = ccs.GUIReader:getInstance():widgetFromJsonFile('UI/Gaming/Gaming.json')
  rootLayer:addChild(ui)
  self.uiWidget = ui
  self:bindControlsVariables()

  local pokeCardsLayer = cc.Layer:create()
  self.SelfPokeCards:addNode(pokeCardsLayer)
  self.pokeCardsLayer = pokeCardsLayer
  
  self.selfUserId = 1

  PokeCard.sharedPokeCard(pokeCardsLayer)
--   PokeCard.reloadAllCardSprites(pokeCardsLayer)
--   self.cardContentSize = PokeCard.getByPokeChars('A')[1].card_sprite:getContentSize()
--   dump(self.visibleSize, 'visibleSize')
-- --pokeCards = PokeCard.getByPokeChars('AcjmDrBekRuvCVNXp')
--   self.pokeCards = PokeCard.getByPokeChars('AcjmDrBekRuvCVNXpWSY')
--   table.sort(self.pokeCards, sortDescBy('index'))
--   self:showCards()
  
  self:initPokeCardsLayerTouchHandler()

  self:showSysTime()
  self:initPlayers()
  
end

function GameScene:Ready_onClicked(sender, event)
  local this = self
  if event == ccui.TouchEventType.ended then
    PokeCard.releaseAllCards()
    PokeCard.reloadAllCardSprites(self.pokeCardsLayer)
    this.cardContentSize = PokeCard.getByPokeChars('A')[1].card_sprite:getContentSize()

    local p1, p2, p3, lordPokeCards = PokeCard.slicePokeCards()
    self.pokeCards = p1
    self.selfPlayerInfo.pokeCards = p1
    self.nextPlayerInfo.pokeCards = p2
    self.prevPlayerInfo.pokeCards = p3
    self.lordPokeCards = lordPokeCards
    self:doUpdatePlayersUI()
    this:showCards()
  end
end

function GameScene:initKeypadHandler()
  local function onKeyReleased(keyCode, event)
    if keyCode == cc.KeyCode.KEY_BACKSPACE then
      --      if type(self.onMainMenu) == 'function' then
      --        self.onMainMenu()
      --      end
      cc.Director:getInstance():popScene()
    elseif keyCode == cc.KeyCode.KEY_MENU  then
    end
  end

  local listener = cc.EventListenerKeyboard:create()
  listener:registerScriptHandler(onKeyReleased, cc.Handler.EVENT_KEYBOARD_RELEASED )
  self:getEventDispatcher():addEventListenerWithSceneGraphPriority(listener, self)
end

function GameScene:bindControlsVariables()
  local VarBinding = require('utils.UIVariableBinding')
  VarBinding.bind(self.uiWidget, self, self)
end

function GameScene:showSysTime()
  self:runAction(cc.RepeatForever:create(cc.Sequence:create(
    cc.CallFunc:create(function()
      local tm = os.date("*t")
      self.SysTime:setText( string.format("%02d:%02d:%02d", tm.hour, tm.min, tm.sec) )
    end),
    cc.DelayTime:create(1.0)
  )))  
end

function GameScene:initPlayers()
  self.selfUserId = 1
  local this = self
  local Heads = {'head1', 'head2', 'head3', 'head4', 'head5', 'head6', 'head7', 'head8'}
  local Status = {ddz.PlayerStatus.None, ddz.PlayerStatus.Ready}
  local Roles = {ddz.PlayerRoles.None, ddz.PlayerRoles.Farmer, ddz.PlayerRoles.Lord, ddz.PlayerRoles.Farmer}
  table.shuffle(Roles)
  local playersInfo = {
    GamePlayer.new({userId=1, name='我自己', role=Roles[1], status=ddz.PlayerStatus.None}),
    GamePlayer.new({userId=2, name='张无忌', role=Roles[2], status=ddz.PlayerStatus.Ready}),
    GamePlayer.new({userId=3, name='东方不败', role=Roles[3], status=ddz.PlayerStatus.Ready})
  }
  for _, playerInfo in pairs(playersInfo) do
    playerInfo.headIcon = Heads[ math.random(#Heads) ]
  end
  table.shuffle(playersInfo)
  
  self.players = playersInfo

  this:doPlayerJoin(self.players)
end


local function createScene()
  --local scene = cc.Scene:create()
  return GameScene.new()
end

require('gaming.UIPlayerUpdatePlugin').bind(GameScene)
require('gaming.SPlayerJoinPlugin').bind(GameScene)
require('gaming.UIPokecardPickPlugin').bind(GameScene)

return createScene