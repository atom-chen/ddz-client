LJ H@/Users/edwardzhou/cocos_work/DDZ/luaScripts/pomelo/protobuf/encoder.luaC  +    T2  : G   ÀprotosEncoder protos   Æ  /+  7 6 +   >  T4 % >)  H 4 7 >+ 7 >4 %   >2  ' 
  T+  	 
  > 4 % 	 >'  T)  H  À  encodeMsg return length => byteLengthencode
cjson+[Encoder.encode] checkMsg return false
printprotosEncoder checkMsg codec encodeMsg route  0msg  0protos ,json_str length buffer offset  ¼ 	 R¤-"  T) H 4   >DF7 T4 6 > T) H 776  T7+  6 7	7
6	
	>T07 T4 6 >
  T(776  T#+  6 7	7
6	
	>T7 T6   T776  T6 4 	 >T
+   776>  T) H ANôBN¸) H ipairsrepeatedoptional__messagesnil	typerequiredoption
pairs		!!checkMsg msg  Sprotos  SI I I_name F_proto  Fnested 6  _ 
_value  
 ÿ  KÂQ4   >DD4	 %
  %  % 6>	6	 	 T
96	4
  % 7	% 7	%	 $7
	>
7
	
 T
7
	
 T
+
  7	7
	>
4 
  % $>+    
 > +  7	    > T
7
	
 T

 '  
 T
+
  	     >

 BNºH repeated's tag	dumpoptionalrequiredtag, tag => 	type, type => option proto:[option => 
 --- 
_data_name:
print
pairs						





encodeTag writeBytes encodeProp encodeArray buffer  Loffset  Lprotos  Lmsg  LG G G_name D_data  Dproto 8e_tag   iÚh#  T
+    + 7	  > = T\ T T
+    + 7	  > = TN T
+    + 7	  > = TB T
+    + 7	  > =T6	 T+ 7
  >+    +	 7		
 >	 = + 7  	  >T76  T2  ' +  	 7
6

  > +   	 +
 7

 >
 = '  '	 I6
9KüH   __messagesencodeStrbyteLengthstringencodeDoubledoubleencodeFloat
floatencodeSInt32sInt32
int32encodeUInt32uInt32								

"writeBytes codec encodeMsg value  jtype  joffset  jbuffer  jprotos  jlength 9tmpBuffer length   i    ?È'  +  7 7>  T +   +	 7
7>	 = +   +	 7		
  >	 = 4   >T	+ 
 7  > A	N	÷T4   >T	+   + 77> = + 
 7   > A	N	íH    ipairsencodeUInt32tag	typeisSimpleType





util writeBytes encodeTag codec encodeProp array  @proto  @offset  @buffer  @protos  @i >
 
 
_ element    _ element   o 	 	8 4   >T9  ANüH ipairsbuffer  
offset  
bytes  
  _ byte   °  7©+  7 6   T' + 74 74 7 ' > > ?     lshiftborbitencodeUInt32
TYPESconstant codec type  tag  value  Õ 
 x¨2   * 1 :  1 : 1 1 1 1 1 1	 0  H   ÀÀÀ       encode 	init$	H_ ¥§§codec util constant Encoder checkMsg encodeMsg  encodeProp  encodeArray  writeBytes  encodeTag   Õ   : ±4   % > 4  % >4  % >2  1 :0  H  getEncoderpomelo.protobuf.constantpomelo.protobuf.utilpomelo.protobuf.codecrequire¯¯±±codec util constant EncoderFactory   