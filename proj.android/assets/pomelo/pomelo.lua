LJ >@/Users/edwardzhou/cocos_work/DDZ/luaScripts/pomelo/pomelo.lua     G        G    . [³27  7  >+  7>: )  : 
  T: T4 % >: 4 %	   %
 7 >'  : 2  : 2  : 2  : 3 2  :2  :3 2  :2  ::: '  : '  : '  : 'd : )  : )  : )  : 3" 3 + : + :!:#2  :$: )  :% 7 + 7&7' 97 + 7(7) 97 + 7*7+ 97 + 7,7- 9G  ÀÀÀÀonKickTYPE_KICKonDataTYPE_DATAheartbeatTYPE_HEARTBEAThandshakeTYPE_HANDSHAKEinitCallback	usersys  version	type  handshakeBufferhandshakeCallbackheartbeatTimeoutIdheartbeatIdgapThresholdnextHeartbeatTimeoutheartbeatTimeoutheartbeatingIntervalprotosclientserver  
abbrs	dict  	datarouteMaphandlerscallbacks
reqIdself.socket =>[Pomelo:ctor] self=> 
printpomelo.lua_websocketrequireWebSocketClasssocketgetProtobufProtobuf	ctor
super				!!"#$$%%&'()++-----...../////000002ProtobufFactory JS_WS_CLIENT_TYPE JS_WS_CLIENT_VERSION Package self  \WebSocketClass  \  
 
 AN:  77%  $  T %  $7 7:7:   7	  	 >G  initWebSockethanshakeCallbackhandshakeCallback	userhandshakeBuffer:
ws://	port	hostinitCallback


self  params  cb  host port url  Ò  ?e+  7 +  7+ 7+ 7 + 7> =  =+  7 >G      À	sendhandshakeBufferstrencodeTYPE_HANDSHAKEencodePackage Protocol cjson _this event  obj  á  0j+   7 + 77 >+ >+  7  T+  4 7>+  7:G  À  À	timeosnextHeartbeatTimeoutheartbeatTimeout	datadecodeprocessPackage_this Package cb event   }  q+   7 %   >4 %   >G  À[error] socket error: 
printio-error	emit_this event   u  
v4  % >+   7%   >G  À
close	emit[Pomelo] local onclose
print_this event   À
 $]$7  
  T4 % >  7 >4 %  $>  1 1 1 1 7	 7
	 >:  % : 7  :7  :7  :7  :0  G  À ÀÀoncloseonerroronmessageonopenarraybufferbinaryTypenewWebSocketClass    connect to disconnect2already has a socket opened, disconnect first
printsocket  !!""##$$Package Protocol cjson self  %url  %cb  %_this onopen onmessage onerror onclose  á  
 -54  % >7   T7 7  T7  7>7 7  T7  7>7 )  :)  : 7   T4 7 >)  : 7   T4 4 >4	 )  :G  	slefheartbeatTimeoutIdclearTimeoutheartbeatIdonmessage
closedisconnectsocket[Pomelo:disconnect]
print


self  .  	 #>4   > T  T 2  T  T2    T7  TG  7  :   7 7   >7 7 97 7 9G  routeMapcallbackssendMessage
reqId
routefunction	type		
self  $route  $msg  $cb  $ _   
 ¯  T2    7  '    >G  sendMessageself  route  msg   º  L²´ +  7 '   T+  72  7 7  T7 776  T4 + % >4  % >7 7	  > 4  %
 >T+ 7+ 7	 > =  '  7   T7 6  T7 6' +  7	 	 
   > + 7	+ 7	 >	  7 
 >G  À ÀÀÀ	sendTYPE_DATA	dictstrencode+[Pomelo:sendMessage] msg after encodedencodeProtobuf$[Polemo:sendMessage] msg before"[Polemo:sendMessage] Protocol	dumpclientprotos	dataTYPE_REQUESTTYPE_NOTIFY			 Message Protocol cjson Package self  MreqId  Mroute  Mmsg  Mtype Jprotos DcompressRoute &packet  F   Ö7   7 >G  	sendsocketself  packet   ?   ò+     7   > G    heartbeatTimeoutCbself  ï 	 "í+   )  :  +     7  + > +   4 7>+  7: +   4 1 +  7>: G   ÀÀ setTimeoutheartbeatTimeoutIdheartbeatTimeout	timeosnextHeartbeatTimeout	sendheartbeatIdself obj   	 :Ü+  7 +  7>  7  >7   T4 7 >)  : 7   T0 4 1 7 >: 0  G  G  ÀheartbeatInterval setTimeoutheartbeatIdclearTimeOutheartbeatTimeoutId	sendTYPE_HEARTBEATencode		Package self  data  obj  ?   û +     7   > G   ÀheartbeatTimeoutCb     self  ÷ 
 %ø4  4 7>7  T4 1  >: T  7 % >  7	 >0  G  disconnectheartbeat timeout	emit setTimeoutheartbeatTimeoutIdgapThreshold	timeosnextHeartbeatTimeoutself  gap  Ý  2t+  7 + 7 > =  7+  T  7 % % >G  7+  T  7 % % >G    7  >+ 7+ 7	>  7
  >7   T7 7 >)  : G  À ÀÀ	ÀÀsocketinitCallback	sendTYPE_HANDSHAKE_ACKencodehandshakeInithandshake failclient version not fullfil
error	emit	codestrdecodedecode	cjson Protocol RES_OLD_CLIENT RES_OK Package self  3data  3obj & ÷  ;+  7  >7'   T7 76:7 7)  97  TG    7  >:  7  >G  ÀprocessMessagedeCompose	bodyrouteMap
routeiddecodeMessage self  data  msg  ?   ©  7  % >G  onKick	emitself  data   O   ­7  76  7>G  	body	typehandlersself  msg   ß   1±7 
  T7 '  T  7 77>G  7 7 67 7 )  94  > TG   7>G  function	typecallbacks	body
route	emitid



self  msg  cb  è 
 +aÃ2  7    T7  7  T7  777  777'   T6  T2  H 6:76  T7 7 7@ T+  7+ 7	7> ?  H À Àstrdecode	bodydecodeProtobufcompressRoute
route
abbrsserverprotos	data				


cjson Protocol self  ,msg  ,protos *abbrs route  Ä   $Þ	7  7  T77  T   7  >4 7 > T7 7>G  	userfunctionhandshakeCallback	typeinitDataheartbeatsys	data	self  data   ¾ 
  :lé   T7   TG  7   T2  : 7 77 7  T7 :7 2  :4  >D7	 7		9	BNû  T7 3 7  T2  :7  T2  ::7	   T7	 7
3 7:7:>G  decoderProtosencoderProtos  	initProtobufclient  server
pairs
abbrsprotos	dict	datasys

 self  ;data  ;dict -protos +
  _k _v     3 VÏ 4   % > 4  % >4  % >4  % >% % 7 7  '	È '
ô'õ4	 %
  >5
 1 5 1 5 4
 1 :4
 1 :4
 1 :4
 1 :4
 1 :4
 1 :4
 1 :4
 1 :4
 1  :4
 1" :!4
 1$ :#4
 1& :%4
 1( :'4
 1* :)4
 1, :+4
 1. :-4
 10 :/4
 12 :14
 0  H  initData handshakeInit deCompose processMessage processPackage onKick onData handshake heartbeatTimeoutCb heartbeat 	send sendMessage notify request disconnect initWebSocket 	init 	ctorclearTimeout setTimeout Pomelo
classMessagePackage
0.0.1lua-websocketcjson.safepomelo.emitterpomelo.protobuf.protobufpomelo.protocol.protocolrequire              
                L  N [ N ]  ]     ­  ¯ ² ¯ ´ Ô ´ Ö Ú Ö Ü ö Ü ø  ø ')+)-/-1A1C\C^g^iiProtocol SProtobufFactory PEmitter Mcjson JJS_WS_CLIENT_TYPE IJS_WS_CLIENT_VERSION HPackage GMessage FEventEmitter ERES_OK DRES_FAIL CRES_OLD_CLIENT B  