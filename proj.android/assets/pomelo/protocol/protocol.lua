LJ I@/Users/edwardzhou/cocos_work/DDZ/luaScripts/pomelo/protocol/protocol.lua�   i$'    T�H  '   '	 I
�
 T�H 

69  K�H 			
target  offset  source  from  count  copy_size max_src_length   i 	 �  %z72  '   '�4  7  !>'  ' I�4
 7

    >
4   2 4 7
 ' '��> < '  >K�H 	bytecopyArraysubstring	ceil	math����														
str  &byteArray $offset #str_length "batch_size !batch   i tmp_str  �  
 &tH2  '�4  7  !>' '  ' I�2	  4
 	 '     >
4
 7

 4 74 	 > =  =
K�4 7 %	 >H concatunpack	charstringinsert
tablecopyArray	ceil	math							









buffer  'msg_buffer %batch_size $batch offset   i tmp msg  s  _+  7   T�+  7  T�) T�) H �TYPE_RESPONSETYPE_REQUESTMessage type   �   c+  7   T
�+  7  T�+  7  T�) T�) H �TYPE_PUSHTYPE_NOTIFYTYPE_REQUESTMessage type   o &h'    Q	� +  7  ' > 	 T�H  �rshift bit id  len tmp_id  �  'lr+  7   T�+  7  T�+  7  T	�+  7  T�4 %   $>+ 7  ' >9'   T�+ 76' >9+ H � ��borlshiftunknown message type: 
errorTYPE_PUSHTYPE_RESPONSETYPE_NOTIFYTYPE_REQUESTMessage bit MSG_FLAG_BYTES type  (compressRoute  (buffer  (offset  ( � 	 N� +  7   ' >9  T�Q�+  7  ' >  +  7+  7   ' >'� >9 T�H  �borrshift	band						
bit id  !idBytes  !buffer  !offset  !index  � >��'    T�+   T�4  % >+ 7+ 7 ' >'� >9 + 7 '� >9 T!�
  T�+ 74 7 >'� >9 2 4 7 ' '��> < 4    '	 
 > T�'  9 H 	� �copyArray	bytelenstringrshift	bandroute number is overflow
error����		MSG_ROUTE_CODE_MAX bit compressRoute  ?route  ?buffer  ?offset  ?routeArray 1	 � 
D�	  +    >  T	�2 4  7  ' '��> <   4    ' 	 > H �copyArray	bytestring����typeof msg  buffer  offset  msgArray  � 2`�'  '   T� 2  +  7 '�   >9 +  7 '� +  7 '	 > =9 +  7 '� +  7 '	 > =9 +  7 '�  >9 4    '	 
 >H  �copyArrayrshift	band						
bit type  3body  3length 1offset 0buffer , � "^�8 ' +  7 6 ' >+  7  6 ' >6 )  '   T	�2  4  '   +	 	 	
 >3 ::H  ��	body	type  copyArraylshift



bit PKG_HEAD_BYTES buffer  #type !index  length body  � a��/'  +   >  T�+   > + +  >  T�'   T�+  >  T�4 % >+ T�+ 4 7 >'�  T�4 % >4 7 >
  T�2 ;  2  ' +	 
    >		 +	  
 >	 	 T
�+	 
     >		 +	 
 >	 	 T
�+		 
    >		 
  T	�+	
 
   >		 H ����������� route maxlength is overflowlenstring!error flag for number route!
errornumber			     !!!!!!!%%%%%&&&&&&&**++++++.msgHasId calculateMsgIdBytes MSG_FLAG_BYTES msgHasRoute typeof MSG_ROUTE_CODE_BYTES MSG_ROUTE_LEN_BYTES encodeMsgFlag encodeMsgId encodeMsgRoute encodeMsgBody id  btype  bcompressRoute  broute  bmsg  bidBytes `msgLen Ubuffer ,)offset ( � x��4  ' '  )  6  +  7  + >+  7 +  7	 '
 >+	 >+ 	 >  T	$�6  +	  7	 	
 ' >		 +	  7	 	
 '� >	'
  
	 T	�Q	�+	  7		
 ' >		 6  +	  7		
 +  7  ' > =		 T	�+ 	 >  T	%�'   T�+  76	 '
 >+	  7		
 6

 >		T�6  '	  	 T	�2  4	 
 '     >	+	 7		
 >		 T	�%  2	  4
 	 '     >
3
 :
:	
:

:
:	
H
  �
�����	body
routecompressRoute	typeid  strdecodecopyArrayborlshiftrshift	band					








 !!!"#######$$$$$$&(--.///////2222333bit MSG_COMPRESS_ROUTE_MASK MSG_TYPE_MASK msgHasId msgHasRoute Protocol buffer  ybytesLen woffset vid uroute tflag scompressRoute mtype 	dbyte #routeLen 9bodyLen body  �  "?� �4   % > 4  % >2  4 ' ' ' ' ' (	  '
 ' 2  :2  :77' :' :' :' :	' :
'  :' :' :' :1 5 1 :1 :1 1 1 1 1 1 1 1 :1 :1  :1! :0  �H    decode encode        strdecode strencodecopyArray TYPE_PUSHTYPE_RESPONSETYPE_NOTIFYTYPE_REQUESTTYPE_KICKTYPE_DATATYPE_HEARTBEATTYPE_HANDSHAKE_ACKTYPE_HANDSHAKEMessagePackage	typestructbitrequire��         	 
                            ! ! " " 5 5 F 7 [ H a f p ~ � � � � � � � 4pprrbit <struct 9Protocol 8typeof 7PKG_HEAD_BYTES 6MSG_FLAG_BYTES 5MSG_ROUTE_CODE_BYTES 4MSG_ID_MAX_BYTES 3MSG_ROUTE_LEN_BYTES 2MSG_ROUTE_CODE_MAX 1MSG_COMPRESS_ROUTE_MASK 0MSG_TYPE_MASK /Package *Message )msgHasId msgHasRoute calculateMsgIdBytes encodeMsgFlag encodeMsgId encodeMsgRoute encodeMsgBody 
  