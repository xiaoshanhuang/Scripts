FasdUAS 1.101.10   ��   ��    k             l     ��  ��     !/usr/bin/osascript     � 	 	 & ! / u s r / b i n / o s a s c r i p t   
  
 l     ��������  ��  ��        l     ��  ��      CONFIGURATION     �      C O N F I G U R A T I O N      l     ����  r         m     ����   o      ����  0 numberofemails numberOfEmails��  ��        l    ����  r        m       �   . M a i l . a p p   i s   n o t   r u n n i n g  o      ���� &0 notrunningmessage notRunningMessage��  ��        l     ��������  ��  ��         l    !���� ! r     " # " m    	��
�� boovtrue # o      ���� $0 onlyprimaryinbox onlyPrimaryInbox��  ��      $ % $ l    &���� & r     ' ( ' m     ) ) � * *  [ G m a i l ] / S t a r r e d ( o      ���� $0 mailboxselection mailBoxSelection��  ��   %  + , + l     �� - .��   - ( "set mailBoxSelection to "! Action"    . � / / D s e t   m a i l B o x S e l e c t i o n   t o   " !   A c t i o n " ,  0 1 0 l     �� 2 3��   2 % set mailBoxSelection to "INBOX"    3 � 4 4 > s e t   m a i l B o x S e l e c t i o n   t o   " I N B O X " 1  5 6 5 l    7���� 7 r     8 9 8 m     : : � ; ; 
 G m a i l 9 o      ���� $0 accountselection accountSelection��  ��   6  < = < l     ��������  ��  ��   =  > ? > l   $ @���� @ r    $ A B A K      C C �� D E�� 0 include   D m    ��
�� boovtrue E �� F G�� 0 ansi   F m     H H � I I  3 5 G �� J K�� 0 pre   J m     L L � M M    "   K �� N���� 0 post   N m     O O � P P  ��   B o      ���� 0 unread_options  ��  ��   ?  Q R Q l  % ; S���� S r   % ; T U T K   % 7 V V �� W X�� 0 include   W m   & '��
�� boovtrue X �� Y Z�� 0 ansi   Y m   ( + [ [ � \ \  8 Z �� ] ^�� 0 pre   ] m   , / _ _ � ` `    "   ^ �� a���� 0 post   a m   0 3 b b � c c  ��   U o      ���� 0 read_options  ��  ��   R  d e d l  < m f���� f r   < m g h g K   < i i i �� j k�� 0 include   j m   = >��
�� boovtrue k �� l m�� 0 ansi   l m   ? B n n � o o  0 m �� p q�� 0 pre   p m   C F r r � s s   q �� t u�� 0 post   t m   G J v v � w w   u �� x���� 0 padding   x K   M e y y �� z {�� 0 max   z m   P Q����   { �� | }�� 0 min   | m   T U����   } �� ~ �� 0 side   ~ m   X [ � � � � �  l e f t  �� ����� 0 char   � m   ^ a � � � � �   ��  ��   h o      ���� 0 subj_options  ��  ��   e  � � � l  n � ����� � r   n � � � � K   n � � � �� � ��� 0 include   � m   o p��
�� boovfals � �� � ��� 0 ansi   � m   q t � � � � �  0 � �� � ��� 0 pre   � m   u x � � � � �   � �� � ��� 0 post   � m   y | � � � � �    -   � �� ����� 0 padding   � K    � � � �� � ��� 0 max   � m   � �����   � �� � ��� 0 min   � m   � �����   � �� � ��� 0 side   � m   � � � � � � �  b o t h � �� ����� 0 char   � m   � � � � � � �   ��  ��   � o      ���� 0 from_options  ��  ��   �  � � � l  � � ����� � r   � � � � � K   � � � � �� � ��� 0 include   � m   � ���
�� boovfals � �� � ��� 0 ansi   � m   � � � � � � �  0 � �� � ��� 0 pre   � m   � � � � � � �   � �� � ��� 0 post   � m   � � � � � � �   � �� ����� 0 padding   � K   � � � � �� � ��� 0 max   � m   � �����   � �� � ��� 0 min   � m   � �����   � �� � ��� 0 side   � m   � � � � � � � 
 r i g h t � �� ����� 0 char   � m   � � � � � � �   ��  ��   � o      ���� 0 body_options  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   CODE STARTS HERE    � � � � "   C O D E   S T A R T S   H E R E �  � � � l     ��������  ��  ��   �  � � � i      � � � I      �� ����� 0 replace_chars   �  � � � o      ���� 0 	this_text   �  � � � o      ���� 0 search_string   �  ��� � o      ���� 0 replacement_string  ��  ��   � k       � �  � � � r      � � � l     ����� � o     ���� 0 search_string  ��  ��   � 1    ��
�� 
txdl �  � � � r     � � � n    	 � � � 2    	��
�� 
citm � o    ���� 0 	this_text   � l      ����� � o      ���� 0 	item_list  ��  ��   �  � � � r     � � � l    ����� � o    ���� 0 replacement_string  ��  ��   � n      � � � 1    ��
�� 
txdl � 1    ��
�� 
ascr �  � � � r     � � � c     � � � l    ���� � o    �~�~ 0 	item_list  ��  �   � m    �}
�} 
TEXT � o      �|�| 0 	this_text   �  � � � r     � � � m     � � � � �   � n      � � � 1    �{
�{ 
txdl � 1    �z
�z 
ascr �  ��y � L      � � o    �x�x 0 	this_text  �y   �  �  � l     �w�v�u�w  �v  �u     i     I      �t�s�t 0 
pad_string    o      �r�r 0 	this_text   �q o      �p�p 0 options  �q  �s   k     �		 

 r      m      �   o      �o�o 
0 output    Q     r     n    
 o    
�n�n 0 max   o    �m�m 0 options   o      �l�l 0 max   R      �k�j�i
�k .ascrerr ****      � ****�j  �i   r     m    �h�h�� o      �g�g 0 max    l   �f�e�d�f  �e  �d    Q    + ! r     "#" n    $%$ o    �c�c 0 min  % o    �b�b 0 options  # o      �a�a 0 min    R      �`�_�^
�` .ascrerr ****      � ****�_  �^  ! r   ( +&'& m   ( )�]�]��' o      �\�\ 0 min   ()( l  , ,�[�Z�Y�[  �Z  �Y  ) *+* Q   , ?,-., r   / 4/0/ n   / 2121 o   0 2�X�X 0 side  2 o   / 0�W�W 0 options  0 o      �V�V 0 side  - R      �U�T�S
�U .ascrerr ****      � ****�T  �S  . r   < ?343 m   < =55 �66  l e f t4 o      �R�R 0 side  + 787 l  @ @�Q�P�O�Q  �P  �O  8 9:9 Q   @ S;<=; r   C H>?> n   C F@A@ o   D F�N�N 0 char  A o   C D�M�M 0 options  ? o      �L�L 0 char  < R      �K�J�I
�K .ascrerr ****      � ****�J  �I  = r   P SBCB m   P QDD �EE   C o      �H�H 0 char  : FGF l  T T�G�F�E�G  �F  �E  G HIH Z   T �JK�DLJ A   T YMNM n   T WOPO 1   U W�C
�C 
lengP o   T U�B�B 0 	this_text  N o   W X�A�A 0 min  K k   \ �QQ RSR r   \ cTUT l  \ aV�@�?V \   \ aWXW o   \ ]�>�> 0 min  X l  ] `Y�=�<Y n   ] `Z[Z 1   ^ `�;
�; 
leng[ o   ] ^�:�: 0 	this_text  �=  �<  �@  �?  U o      �9�9 0 padding  S \]\ Z   d s^_�8�7^ =   d g`a` o   d e�6�6 0 side  a m   e fbb �cc  b o t h_ r   j oded ^   j mfgf o   j k�5�5 0 padding  g m   k l�4�4 e o      �3�3 0 padding  �8  �7  ] hih l  t t�2�1�0�2  �1  �0  i jkj Z   t �lm�/�.l G   t non =   t wpqp o   t u�-�- 0 side  q m   u vrr �ss  l e f to =   z }tut o   z {�,�, 0 side  u m   { |vv �ww  b o t hm U   � �xyx r   � �z{z b   � �|}| o   � ��+�+ 
0 output  } o   � ��*�* 0 char  { o      �)�) 
0 output  y o   � ��(�( 0 padding  �/  �.  k ~~ l  � ��'�&�%�'  �&  �%   ��� r   � ���� b   � ���� o   � ��$�$ 
0 output  � o   � ��#�# 0 	this_text  � o      �"�" 
0 output  � ��� l  � ��!� ��!  �   �  � ��� Z   � ������ G   � ���� =   � ���� o   � ��� 0 side  � m   � ��� ��� 
 r i g h t� =   � ���� o   � ��� 0 side  � m   � ��� ���  b o t h� U   � ���� r   � ���� b   � ���� o   � ��� 
0 output  � o   � ��� 0 char  � o      �� 
0 output  � I  � ����
� .sysorondlong        doub� l  � ����� o   � ��� 0 padding  �  �  � ���
� 
dire� m   � ��
� olierndU�  �  �  �  �D  L r   � ���� o   � ��� 0 	this_text  � o      �� 
0 output  I ��� l  � �����  �  �  � ��� Z   � ����
�	� F   � ���� ?   � ���� o   � ��� 0 max  � m   � ���  � A   � ���� o   � ��� 0 max  � n   � ���� 1   � ��
� 
leng� o   � ��� 
0 output  � r   � ���� n   � ���� 7  � ����
� 
cha � m   � ��� � o   � ��� 0 max  � o   � �� �  
0 output  � o      ���� 
0 output  �
  �	  � ��� l  � ���������  ��  ��  � ���� L   � ��� o   � ����� 
0 output  ��   ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 f  � ��� o      ���� 0 
org_string  � ���� o      ���� 0 options  ��  ��  � k     W�� ��� r     ��� I    �����
�� .sysontocTEXT       shor� m     ���� ��  � o      ���� 0 esc  � ��� l   ��������  ��  ��  � ��� r    ��� o    	���� 0 
org_string  � o      ���� 0 _string  � ��� Q    >���� k    �� ��� r    ��� n    ��� o    ���� 0 padding  � o    ���� 0 options  � o      ���� 0 pad_options  � ���� r    ��� n   ��� I    ������� 0 
pad_string  � ��� o    ���� 0 _string  � ���� o    ���� 0 pad_options  ��  ��  �  f    � o      ���� 0 _string  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � L   & >�� b   & =��� b   & ;��� b   & 9��� b   & 5��� b   & 3��� b   & /��� b   & -��� b   & )��� o   & '���� 0 esc  � m   ' (�� ���  [� n   ) ,��� o   * ,���� 0 ansi  � o   ) *���� 0 options  � m   - .�� ���  m� n   / 2��� o   0 2���� 0 pre  � o   / 0���� 0 options  � o   3 4���� 0 _string  � n   5 8� � o   6 8���� 0 post    o   5 6���� 0 options  � o   9 :���� 0 esc  � m   ; < �  [ 0 m�  l  ? ?��������  ��  ��   �� L   ? W b   ? V b   ? T	
	 b   ? R b   ? N b   ? L b   ? H b   ? F b   ? B o   ? @���� 0 esc   m   @ A �  [ n   B E o   C E���� 0 ansi   o   B C���� 0 options   m   F G �  m n   H K o   I K���� 0 pre   o   H I���� 0 options   o   L M���� 0 _string   n   N Q  o   O Q���� 0 post    o   N O���� 0 options  
 o   R S���� 0 esc   m   T U!! �""  [ 0 m��  � #$# l     ��������  ��  ��  $ %&% l  � �'����' O   � �()( r   � �*+* l  � �,����, n   � �-.- 1   � ���
�� 
pnam. 2   � ���
�� 
prcs��  ��  + o      ���� 0 mylist myList) m   � �//�                                                                                  sevs  alis    �  Macintosh HD               �0��H+     2System Events.app                                               0���Y        ����  	                CoreServices    �1�      ���       2   ,   +  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��  & 010 l     ��������  ��  ��  1 2��2 l  �X3����3 Z   �X45��64 E   � �787 o   � ����� 0 mylist myList8 m   � �99 �::  M a i l5 O   �T;<; k   �S== >?> r   �@A@ I  � ���B��
�� .sysontocTEXT       shorB m   � ����� 
��  A o      ���� 0 nl  ? CDC r  EFE b  GHG b  IJI o  ���� $0 mailboxselection mailBoxSelectionJ o  ���� 0 nl  H o  ���� 0 nl  F o      ���� 0 	theoutput 	theOutputD KLK l ��������  ��  ��  L MNM Z  OP��QO = RSR o  ���� $0 onlyprimaryinbox onlyPrimaryInboxS m  ��
�� boovfalsP k  �TT UVU r  WXW J  ����  X o      ���� 0 thelist theListV YZY X  �[��\[ Z  6�]^��_] A  6U`a` l 6Sb����b I 6S��c��
�� .corecnte****       ****c n  6Oded 2 KO��
�� 
mssge l 6Kf����f 6 6Kghg n  6<iji 4 7<��k
�� 
mbxpk m  :;���� j o  67���� 0 _acc  h = ?Jlml 1  @D��
�� 
pnamm m  EInn �oo 
 i n b o x��  ��  ��  ��  ��  a o  ST����  0 numberofemails numberOfEmails^ r  Xypqp b  Xursr o  X[���� 0 thelist theLists n  [ttut 2 pt��
�� 
mssgu l [pv����v 6 [pwxw n  [ayzy 4 \a��{
�� 
mbxp{ m  _`���� z o  [\���� 0 _acc  x = do|}| 1  ei��
�� 
pnam} m  jn~~ � 
 i n b o x��  ��  q o      ���� 0 thelist theList��  _ r  |���� b  |���� o  |���� 0 thelist theList� n  ���� 7 ������
�� 
mssg� m  ������ � o  ������  0 numberofemails numberOfEmails� l ������� 6 ���� n  ���� 4 �����
�� 
mbxp� m  ������ � o  ����� 0 _acc  � = ����� 1  ����
�� 
pnam� m  ���� ��� 
 i n b o x��  ��  � o      �� 0 thelist theList�� 0 _acc  \ 2 !&�~
�~ 
mactZ ��� l ���}�|�{�}  �|  �{  � ��� r  ����� n  ����� 1  ���z
�z 
leng� o  ���y�y 0 thelist theList� o      �x�x 0 len  � ��� Z  �����w�v� ?  ����� o  ���u�u 0 len  � m  ���t�t � k  ���� ��� r  ����� m  ���s�s � o      �r�r 0 insertpoint insertPoint� ��q� V  ����� k  ���� ��� Z  �����p�� @  ����� n  ����� 1  ���o
�o 
rdrc� n  ����� 4 ���n�
�n 
cobj� m  ���m�m��� o  ���l�l 0 thelist theList� n  ����� 1  ���k
�k 
rdrc� n  ����� 4 ���j�
�j 
cobj� m  ���i�i � o  ���h�h 0 thelist theList� r  ���� b  ���� J  ���� ��g� n  ����� 4 ���f�
�f 
cobj� m  ���e�e��� o  ���d�d 0 thelist theList�g  � n  �
��� 7 �
�c��
�c 
cobj� m   �b�b � l 	��a�`� \  	��� o  �_�_ 0 len  � m  �^�^ �a  �`  � o  ���]�] 0 thelist theList� o      �\�\ 0 thelist theList�p  � k  ��� ��� r  ��� m  �[�[ � o      �Z�Z 0 lookfor lookFor� ��� V  T��� r  FO��� [  FK��� o  FI�Y�Y 0 lookfor lookFor� m  IJ�X�X � o      �W�W 0 lookfor lookFor� F  E��� A  #��� o  �V�V 0 lookfor lookFor� o  "�U�U 0 insertpoint insertPoint� @  &A��� n  &4��� 1  04�T
�T 
rdrc� n  &0��� 4  )0�S�
�S 
cobj� o  ,/�R�R 0 lookfor lookFor� o  &)�Q�Q 0 thelist theList� n  4@��� 1  <@�P
�P 
rdrc� n  4<��� 4 7<�O�
�O 
cobj� m  :;�N�N��� o  47�M�M 0 thelist theList� ��L� r  U���� b  U���� b  Us��� n  Uh��� 7 Xh�K��
�K 
cobj� m  ^`�J�J � l ag��I�H� \  ag��� o  be�G�G 0 lookfor lookFor� m  ef�F�F �I  �H  � o  UX�E�E 0 thelist theList� J  hr�� ��D� n  hp��� 4 kp�C�
�C 
cobj� m  no�B�B��� o  hk�A�A 0 thelist theList�D  � n  s���� 7 v��@��
�@ 
cobj� o  |��?�? 0 lookfor lookFor� l ����>�=� \  ��� � o  ���<�< 0 len    m  ���;�; �>  �=  � o  sv�:�: 0 thelist theList� o      �9�9 0 thelist theList�L  � �8 r  �� [  �� o  ���7�7 0 insertpoint insertPoint m  ���6�6  o      �5�5 0 insertpoint insertPoint�8  � B  �� o  ���4�4 0 insertpoint insertPoint o  ���3�3 0 len  �q  �w  �v  � 	 l ���2�1�0�2  �1  �0  	 
�/
 Z  ���.�- ?  �� n  �� 1  ���,
�, 
leng o  ���+�+ 0 thelist theList o  ���*�*  0 numberofemails numberOfEmails r  �� n  �� 7 ���)
�) 
cobj m  ���(�(  o  ���'�'  0 numberofemails numberOfEmails o  ���&�& 0 thelist theList o      �%�% 0 thelist theList�.  �-  �/  ��  Q Z  ��$ A  �� l ���#�" I ���!� 
�! .corecnte****       **** n  �� 2 ���
� 
mssg n  �� !  4  ���"
� 
mbxp" o  ���� $0 mailboxselection mailBoxSelection! 4  ���#
� 
mact# o  ���� $0 accountselection accountSelection�   �#  �"   o  ����  0 numberofemails numberOfEmails r  ��$%$ n  ��&'& 2 ���
� 
mssg' n  ��()( 4  ���*
� 
mbxp* o  ���� $0 mailboxselection mailBoxSelection) 4  ���+
� 
mact+ o  ���� $0 accountselection accountSelection% o      �� 0 thelist theList�$   r  �,-, n  �./. 7  �01
� 
mssg0 m  �� 1 o  	��  0 numberofemails numberOfEmails/ n  � 232 4  � �4
� 
mbxp4 o  ���� $0 mailboxselection mailBoxSelection3 4  ���5
� 
mact5 o  ���� $0 accountselection accountSelection- o      �� 0 thelist theListN 676 l ��
�	�  �
  �	  7 898 X  O:�;: k  'J<< =>= Z  'z?@�A? > '.BCB n ',DED 1  (,�
� 
isrdE o  '(�� 0 
themessage 
theMessageC m  ,-�
� boovtrue@ Z  1TFG�HF = 18IJI n  16KLK o  46�� 0 include  L o  14�� 0 unread_options  J m  67� 
�  boovtrueG r  ;JMNM n ;FOPO I  <F��Q���� 0 f  Q RSR m  <?TT �UU  S V��V o  ?B���� 0 unread_options  ��  ��  P  f  ;<N o      ���� 0 theindicator theIndicator�  H r  MTWXW m  MPYY �ZZ  X o      ���� 0 theindicator theIndicator�  A Z  Wz[\��][ = W^^_^ n  W\`a` o  Z\���� 0 include  a o  WZ���� 0 read_options  _ m  \]��
�� boovtrue\ r  apbcb n alded I  bl��f���� 0 f  f ghg m  beii �jj  h k��k o  eh���� 0 read_options  ��  ��  e  f  abc o      ���� 0 theindicator theIndicator��  ] r  szlml m  svnn �oo  m o      ���� 0 theindicator theIndicator> pqp l {{��������  ��  ��  q rsr Z  {�tu��vt = {�wxw n  {�yzy o  ~����� 0 include  z o  {~���� 0 from_options  x m  ����
�� boovtrueu k  ��{{ |}| r  ��~~ I �������
�� .emaleafnnull���     ctxt� n  ����� 1  ����
�� 
sndr� o  ������ 0 
themessage 
theMessage��   o      ���� 0 	thesender 	theSender} ���� r  ����� n ����� I  ��������� 0 f  � ��� o  ������ 0 	thesender 	theSender� ���� o  ������ 0 from_options  ��  ��  �  f  ��� o      ���� 0 	thesender 	theSender��  ��  v r  ����� m  ���� ���  � o      ���� 0 	thesender 	theSenders ��� l ����������  ��  ��  � ��� Z  �������� = ����� n  ����� o  ������ 0 include  � o  ������ 0 subj_options  � m  ����
�� boovtrue� k  ���� ��� r  ����� n  ����� 1  ����
�� 
subj� o  ������ 0 
themessage 
theMessage� o      ���� 0 
thesubject 
theSubject� ���� r  ����� n ����� I  ��������� 0 f  � ��� o  ������ 0 
thesubject 
theSubject� ���� o  ������ 0 subj_options  ��  ��  �  f  ��� o      ���� 0 
thesubject 
theSubject��  ��  � r  ����� m  ���� ���  � o      ���� 0 
thesubject 
theSubject� ��� l ����������  ��  ��  � ��� Z  �.������ = ����� n  ����� o  ������ 0 include  � o  ������ 0 body_options  � m  ����
�� boovtrue� k  �$�� ��� r  ����� n  ����� 1  ����
�� 
ctnt� o  ������ 0 
themessage 
theMessage� o      ���� 0 thebody theBody� ��� r  ����� n ����� I  ��������� 0 f  � ��� o  ������ 0 thebody theBody� ���� o  ������ 0 body_options  ��  ��  �  f  ��� o      ���� 0 thebody theBody� ���� r  �$��� n � ��� I    ������� 0 replace_chars  � ��� n  ��� I  ������� 0 replace_chars  � ��� o  ���� 0 thebody theBody� ��� I �����
�� .sysontocTEXT       shor� m  ���� 
��  � ���� m  �� ���  ��  ��  �  f   � ��� I �����
�� .sysontocTEXT       shor� m  ���� ��  � ���� m  �� ���  ��  ��  �  f  � � o      ���� 0 thebody theBody��  ��  � r  '.��� m  '*�� ���  � o      ���� 0 thebody theBody� ���� r  /J��� b  /F��� b  /B��� b  />��� b  /:��� b  /6��� o  /2���� 0 	theoutput 	theOutput� o  25���� 0 theindicator theIndicator� o  69���� 0 	thesender 	theSender� o  :=���� 0 
thesubject 
theSubject� o  >A���� 0 thebody theBody� o  BE���� 0 nl  � o      ���� 0 	theoutput 	theOutput��  � 0 
themessage 
theMessage; o  ���� 0 thelist theList9 ��� l PP��������  ��  ��  � ���� o  PS���� 0 	theoutput 	theOutput��  < m   � ����                                                                                  emal  alis    F  Macintosh HD               �0��H+     OMail.app                                                        W��G        ����  	                Applications    �1�      �h�       O  #Macintosh HD:Applications: Mail.app     M a i l . a p p    M a c i n t o s h   H D  Applications/Mail.app   / ��  ��  6 o  WX���� &0 notrunningmessage notRunningMessage��  ��  ��       "��������� �� ) :�� ������������������������  �  ������������������������������~�}�|�{�z�y�x�w�v�u�t�s�r�q�p�o�n�� 0 replace_chars  �� 0 
pad_string  �� 0 f  
�� .aevtoappnull  �   � ****��  0 numberofemails numberOfEmails�� &0 notrunningmessage notRunningMessage�� $0 onlyprimaryinbox onlyPrimaryInbox�� $0 mailboxselection mailBoxSelection�� $0 accountselection accountSelection�� 0 unread_options  �� 0 read_options  �� 0 subj_options  �� 0 from_options  �� 0 body_options  � 0 mylist myList�~ 0 nl  �} 0 	theoutput 	theOutput�| 0 thelist theList�{ 0 theindicator theIndicator�z 0 	thesender 	theSender�y 0 
thesubject 
theSubject�x 0 thebody theBody�w  �v  �u  �t  �s  �r  �q  �p  �o  �n  � �m ��l�k	
�j�m 0 replace_chars  �l �i�i   �h�g�f�h 0 	this_text  �g 0 search_string  �f 0 replacement_string  �k  	 �e�d�c�b�e 0 	this_text  �d 0 search_string  �c 0 replacement_string  �b 0 	item_list  
 �a�`�_�^ �
�a 
txdl
�` 
citm
�_ 
ascr
�^ 
TEXT�j !�*�,FO��-E�O���,FO��&E�O���,FO�� �]�\�[�Z�] 0 
pad_string  �\ �Y�Y   �X�W�X 0 	this_text  �W 0 options  �[   �V�U�T�S�R�Q�P�O�V 0 	this_text  �U 0 options  �T 
0 output  �S 0 max  �R 0 min  �Q 0 side  �P 0 char  �O 0 padding   �N�M�L�K�J5�ID�Hbrv�G���F�E�D�C�N 0 max  �M  �L  �K 0 min  �J 0 side  �I 0 char  
�H 
leng
�G 
bool
�F 
dire
�E olierndU
�D .sysorondlong        doub
�C 
cha �Z ��E�O 
��,E�W 
X  iE�O 
��,E�W 
X  iE�O 
��,E�W 
X  �E�O 
��,E�W 
X  �E�O��,� t���,E�O��  
�l!E�Y hO�� 
 �� �&  �kh��%E�[OY��Y hO��%E�O�� 
 �� �&   �a a l kh��%E�[OY��Y hY �E�O�j	 	���,�& �[a \[Zk\Z�2E�Y hO�� �B��A�@�?�B 0 f  �A �>�>   �=�<�= 0 
org_string  �< 0 options  �@   �;�:�9�8�7�; 0 
org_string  �: 0 options  �9 0 esc  �8 0 _string  �7 0 pad_options   �6�5�4�3�2�1��0��/�.!�6 
�5 .sysontocTEXT       shor�4 0 padding  �3 0 
pad_string  �2  �1  �0 0 ansi  �/ 0 pre  �. 0 post  �? X�j E�O�E�O ��,E�O)��l+ E�W X  ��%��,%�%��,%�%��,%�%�%O��%��,%�%��,%�%��,%�%�%� �-�,�+�*
�- .aevtoappnull  �   � **** k    X        $  5  >  Q  d  �  � %   2�)�)  �,  �+   �(�'�( 0 _acc  �' 0 
themessage 
theMessage ]�&�% �$�# )�" :�!� � H� L� O�� [ _ b� n r v���� �� ��� � � � � �� � � � � ��/���9�����
�	����!n�~����� ������T����Yin������������������������& �%  0 numberofemails numberOfEmails�$ &0 notrunningmessage notRunningMessage�# $0 onlyprimaryinbox onlyPrimaryInbox�" $0 mailboxselection mailBoxSelection�! $0 accountselection accountSelection�  0 include  � 0 ansi  � 0 pre  � 0 post  � � 0 unread_options  � 0 read_options  � 0 padding  � 0 max  � 0 min  � 0 side  � 0 char  � 
� 0 subj_options  � 0 from_options  � 0 body_options  
� 
prcs
� 
pnam� 0 mylist myList
� .sysontocTEXT       shor� 0 nl  � 0 	theoutput 	theOutput�
 0 thelist theList
�	 
mact
� 
kocl
� 
cobj
� .corecnte****       ****
� 
mbxp!  
� 
mssg
� 
leng� 0 len  � 0 insertpoint insertPoint
�  
rdrc�� 0 lookfor lookFor
�� 
bool
�� 
isrd�� 0 f  �� 0 theindicator theIndicator
�� 
sndr
�� .emaleafnnull���     ctxt�� 0 	thesender 	theSender
�� 
subj�� 0 
thesubject 
theSubject
�� 
ctnt�� 0 thebody theBody�� 0 replace_chars  �� �*Y�E�O�E�OeE�O�E�O�E�O�e������a E` O�e�a �a �a a E` O�e�a �a �a a a ja ja a a a a a  E` !O�f�a "�a #�a $a a ja ja a %a a &a a  E` 'O�f�a (�a )�a *a a ja ja a +a a ,a a  E` -Oa . *a /-a 0,E` 1UO_ 1a 2ha 3^a  j 4E` 5O�_ 5%_ 5%E` 6O�f �jvE` 7O �*a 8-[a 9a :l ;kh  �a <k/a =[a 0,\Za >81a ?-j ;� &_ 7�a <k/a =[a 0,\Za @81a ?-%E` 7Y +_ 7�a <k/a =[a 0,\Za A81[a ?\[Zk\Z�2%E` 7[OY��O_ 7a B,E` CO_ Ck �lE` DO �h_ D_ C_ 7a :i/a E,_ 7a :k/a E, '_ 7a :i/kv_ 7[a :\[Zk\Z_ Ck2%E` 7Y }kE` FO ;h_ F_ D	 !_ 7a :_ F/a E,_ 7a :i/a E,a G&_ FkE` F[OY��O_ 7[a :\[Zk\Z_ Fk2_ 7a :i/kv%_ 7[a :\[Z_ F\Z_ Ck2%E` 7O_ DkE` D[OY�/Y hO_ 7a B,� _ 7[a :\[Zk\Z�2E` 7Y hY K*a 8�/a <�/a ?-j ;� *a 8�/a <�/a ?-E` 7Y *a 8�/a <�/[a ?\[Zk\Z�2E` 7O=_ 7[a 9a :l ;kh �a H,e (_ �,e  )a I_ l+ JE` KY 	a LE` KY %_ �,e  )a M_ l+ JE` KY 	a NE` KO_ '�,e  "�a O,j PE` QO)_ Q_ 'l+ JE` QY 	a RE` QO_ !�,e  �a S,E` TO)_ T_ !l+ JE` TY 	a UE` TO_ -�,e  D�a V,E` WO)_ W_ -l+ JE` WO))_ Wa  j 4a Xm+ Ya Zj 4a [m+ YE` WY 	a \E` WO_ 6_ K%_ Q%_ T%_ W%_ 5%E` 6[OY��O_ 6UY ��� 
�� boovtrue� ����"�� 0 include  
�� boovtrue" �� H#�� 0 ansi  # �� L$�� 0 pre  $ �� O���� 0 post  ��  � ����%�� 0 include  
�� boovtrue% �� [&�� 0 ansi  & �� _'�� 0 pre  ' �� b���� 0 post  ��    ����(�� 0 include  
�� boovtrue( �� n)�� 0 ansi  ) �� r*�� 0 pre  * �� v+�� 0 post  + ��,���� 0 padding  , ����-�� 0 max  ��  - ����.�� 0 min  ��  . �� �/�� 0 side  / �� ����� 0 char  ��  ��   ����0�� 0 include  
�� boovfals0 �� �1�� 0 ansi  1 �� �2�� 0 pre  2 �� �3�� 0 post  3 ��4���� 0 padding  4 ����5�� 0 max  ��  5 ����6�� 0 min  ��  6 �� �7�� 0 side  7 �� ����� 0 char  ��  ��   ����8�� 0 include  
�� boovfals8 �� �9�� 0 ansi  9 �� �:�� 0 pre  : �� �;�� 0 post  ; ��<���� 0 padding  < ����=�� 0 max  ��  = ����>�� 0 min  ��  > �� �?�� 0 side  ? �� ����� 0 char  ��  ��   ��@�� 9@ 9 ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyA �zz  l o g i n w i n d o wB �{{  S y s t e m U I S e r v e rC �||  D o c kD �}}  t a l a g e n tE �~~  F i n d e rF �  T I S w i t c h e rG ���  i T u n e s H e l p e rH ���  C i t a t i o n sI ���  B e t t e r S n a p T o o lJ ���  B u s y S y n cK ��� $ N o t i f i c a t i o n C e n t e rL ��� * M a i l T a b   P r o   f o r   G m a i lM ��� * b a c k g r o u n d i n s t r u m e n t sN ���  S o g o u S e r v i c e sO ���  B E S C l i e n t U IP ��� ( c o m . a p p l e . d o c k . e x t r aQ ���  A p p l e S p e l lR ���   W e b K i t P l u g i n H o s tS ���  G o o g l e   C h r o m eT ��� ( G o o g l e   C h r o m e   H e l p e rU ��� ( G o o g l e   C h r o m e   H e l p e rV ��� ( G o o g l e   C h r o m e   H e l p e rW ��� ( G o o g l e   C h r o m e   H e l p e rX ��� ( G o o g l e   C h r o m e   H e l p e rY ��� ( G o o g l e   C h r o m e   H e l p e rZ ��� ( G o o g l e   C h r o m e   H e l p e r[ ��� ( G o o g l e   C h r o m e   H e l p e r\ ���  G e e k T o o l   H e l p e r] ��� 0 c o m . a p p l e . S h a r e K i t H e l p e r^ ��� ( G o o g l e   C h r o m e   H e l p e r_ ���  S y s t e m   E v e n t s` ���  G o o g l e   D r i v ea ���  m d w o r k e rb ���  P T P C a m e r ac ���  i T u n e sd ��� . I m a g e   C a p t u r e   E x t e n s i o ne ���  r c df ��� $ A p p l e S c r i p t   E d i t o rg ���  S o g o u I n p u th ���  G e e k T o o li ��� ( G o o g l e   C h r o m e   H e l p e rj ��� . G o o g l e   C h r o m e   H e l p e r   E Hk ��� . G o o g l e   C h r o m e   H e l p e r   E Hl ��� ( G o o g l e   C h r o m e   H e l p e rm ��� ( G o o g l e   C h r o m e   H e l p e rn ��� ( G o o g l e   C h r o m e   H e l p e ro ��� ( G o o g l e   C h r o m e   H e l p e rp ���   G o o g l e T a l k P l u g i nq ���  M a i lr ��� ( G o o g l e   C h r o m e   H e l p e rs ��� ( G o o g l e   C h r o m e   H e l p e rt ��� ( G o o g l e   C h r o m e   H e l p e ru ��� ( G o o g l e   C h r o m e   H e l p e rv ���  D i c t a t i o n I Mw ���  m d w o r k e rx ���  q u i c k l o o k dy ��� $ Q u i c k L o o k S a t e l l i t e ���  
 ���� [ G m a i l ] / S t a r r e d 
 
  [ 8 m   "    [ 0 m  [ 0 m R e :   F w :  �lS��   f M R IR:o�|�~�  [ 0 m 
  [ 8 m   "    [ 0 m  [ 0 mO�e9��RNfetOS`��  [ 0 m 
  [ 8 m   "    [ 0 m  [ 0 m R e :  QsN� B P�oN�  [ 0 m 
  [ 8 m   "    [ 0 m  [ 0 m p a r k i n g   t i c k e t   S A - 2 4 9 3 4 2  [ 0 m 
  [ 8 m   "    [ 0 m  [ 0 m��W΂�bM��RNf  [ 0 m 
  [ 8 m   "    [ 0 m  [ 0 m E E G   r e s p o n s e   f u n c t i o n   m o d e l  [ 0 m 
 ����� �  ������� �� �������� ����� ����
�� 
mact� ��� 
 G m a i l
�� 
mbxp� ���  [ G m a i l ] / S t a r r e d
�� 
mssg��  %=
�� kfrmID  � �� �������� ����� ����
�� 
mact� ��� 
 G m a i l
�� 
mbxp� ���  [ G m a i l ] / S t a r r e d
�� 
mssg��  %?
�� kfrmID  � �� �������� ����� ����
�� 
mact� ��� 
 G m a i l
�� 
mbxp� ���  [ G m a i l ] / S t a r r e d
�� 
mssg��  %>
�� kfrmID  � �� �������� ����� ����
�� 
mact� ��� 
 G m a i l
�� 
mbxp� ���  [ G m a i l ] / S t a r r e d
�� 
mssg��  %@
�� kfrmID  � �� �������� ����� ����
�� 
mact� ��� 
 G m a i l
�� 
mbxp� ���  [ G m a i l ] / S t a r r e d
�� 
mssg��  %A
�� kfrmID  � �� �������� ����� ����
�� 
mact� ��� 
 G m a i l
�� 
mbxp� ���  [ G m a i l ] / S t a r r e d
�� 
mssg��  %B
�� kfrmID   ���   [ 8 m   "    [ 0 m ��� F  [ 0 m E E G   r e s p o n s e   f u n c t i o n   m o d e l  [ 0 m��  ��  ��  ��  ��  ��  ��  ��  ��  ��   ascr  ��ޭ