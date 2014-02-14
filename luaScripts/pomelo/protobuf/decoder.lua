local codec = require("pomelo.protobuf.codec")
local util = require('pomelo.protobuf.util')

local DecoderFactory = {}

DecoderFactory.getDecoder = function()
  local Decoder = {}
  
  local buffer
  local offset = 1
  
  local decodeMsg, isFinish, getHead, peekHead, decodeProp, decodeArray, getBytes, peekBytes
  
  function Decoder.init(protos)
    Decoder.protos = protos or {}
  end
  
  function Decoder.setProtos(protos)
    Decoder.protos = protos or MsgDecoder.protos
  end
  
  function Decoder.decode(route, buf)
    local protos = Decoder.protos[route]
    
    buffer = buf
    offset = 1
    
    if protos then
      do return decodeMsg({}, protos, #buffer) end
    end
    
    return nil
  end
  
  decodeMsg = function(msg, protos, length)
    dump(protos, 'decodeMsg.protos')
    while offset < length do
      print(string.format('[decodeMsg] offset: %d, length: %d', offset, length))
      local head = getHead()
      local type = head.type
      local tag = head.tag
      print(string.format('type: %s, tag: %s', type, tag))
      local name = protos.__tags[tag]
      print('name: ', name)
      if protos[name] then
        if protos[name].option == 'required' or protos[name].option == 'optional' then
          msg[name] = decodeProp(protos[name].type, protos)
        elseif protos[name].option == 'repeated' then
          if not msg[name] then
            msg[name] = {}
          end
          decodeArray(msg[name], protos[name].type, protos)
        end
      end
    end
    
    return msg
  end
  
  isFinish = function(msg, protos)
    return not protos.__tags[peekHead().tag]
  end
  
  getHead = function()
    local tag = codec.decodeUInt32(getBytes())
    
    return {
      type = bit.band(tag, 0x07), 
      tag = bit.rshift(tag, 3)
    }
  end
  
  peekHead = function()
    local tag = codec.decodeUInt32(peekBytes())
  
    return {
      type = bit.band(tag, 0x07), 
      tag = bit.rshift(tag, 3)
    }
  end
  
  decodeProp = function(type, protos)
    if type == 'uInt32' then
      do return codec.decodeUInt32(getBytes()) end
    elseif type == 'int32' or type == 'sInt32' then
      do return codec.decodeSInt32(getBytes()) end
    elseif type == 'float' then
      local float = codec.decodeFloat(buffer, offset)
      offset = offset + 4
      do return float end
    elseif type == 'double' then
      local double = codec.decodeDouble(buffer, offset)
      offset = offset + 8
      do return double end
    elseif type == 'string' then
      local length = codec.decodeUInt32(getBytes())
      local str = codec.decodeStr(buffer, offset, length)
      offset = offset + length
      do return str end
    else
      if protos and protos.__messages[type] then
        local length = codec.decodeUInt32(getBytes()) - 1
        local msg = {}
        print('[decodeProp] offset: ', offset, 'length:', length)
        decodeMsg(msg, protos.__messages[type], offset + length)
        do return msg end
      end
    end
  end
  
  decodeArray = function(array, type, protos)
    if util.isSimpleType(type) then
      local length = codec.decodeUInt32(getBytes())
      for i=1, length do
        table.insert(array, decodeProp(type))
      end
    else
      table.insert(array, decodeProp(type, protos))
    end
  end
  
  getBytes = function(flag)
    local bytes = {}
    local pos = offset
    flag = flag or false
    
    local b
    
    repeat
      b = buffer[pos]
      table.insert(bytes, b)
      pos = pos + 1
    until b < 128
    
    if not flag then
      offset = pos
    end
    
    print(string.format('getBytes: (len: %d, offset: %d ) bytes:', #bytes, offset), table.concat(bytes, ', '))
    
    return bytes
  end
  
  peekBytes = function()
    return getBytes(true)
  end
  
  return Decoder  
end

return DecoderFactory
