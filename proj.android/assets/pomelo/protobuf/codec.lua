LJ F@/Users/edwardzhou/cocos_work/DDZ/luaScripts/pomelo/protobuf/codec.luać  =4  74   > = '   T)  H 2  Q 4  7 > T 4 7  > 	 TļH insert
tabletonumber
floor	math 				

n  n result tmp next  « $
4  74   > = '   T4  7 > T +  7 @ ĄencodeUInt32abstonumber
floor	math				Codec n  n  Ā  <$'  '     ' I 6 4  7 '	 >4 7'	 
> '  TH KķH pow	math	bandbitbytes  n   index m  { (2
+  7   >'  	 T'’’   H ĄdecodeUInt32	Codec bytes  n 
flag 	  *>+  7 %   >2 4 7 ' '’’> <  H  Ą	bytestringf	packĄstruct float  floatPack 	 p  #C+  7 % 4 74    > =  =H  Ą	charstringfunpackstruct bytes  float   %H+  7 %   >2 4 7 ' '’’> <  H  Ą	bytestringd	packĄstruct double  str 	 q  $M+  7 % 4 74    > =  =H  Ą	charstringdunpackstruct bytes  double  ² 
 JR2 4  7 ' '’’> <  4  >T9 ANüH ipairs	bytestringĄbytes  offset  str  strBytes 		  _k _byte   ³  @\2  '   ' I4  7	 
6

 >Kł4 74  > ?  unpack	charstringinsert
tablebytes  offset  length  tmp   i  }  e4    > T'’’H 2 4 7  ' '’’> <   H 	bytestring	typeĄstr   Ē   . m4   % > 2  1 :1 :1 :1	 :1 :
1 :1 :1 :1 :1 :1 :0  H  byteLength decodeStr encodeStr decodeDouble encodeDouble decodeFloat encodeFloat decodeSInt32 decodeUInt32 encodeSInt32 encodeUInt32structrequire""00<<AAFFKKPPZZcckkmmstruct Codec   