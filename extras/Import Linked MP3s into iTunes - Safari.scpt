FasdUAS 1.101.10   ��   ��    k             l     �� ��    @ : AppleScript to scan the currently-visible page in Safari,       	  l     �� 
��   
 C = download any linked .mp3 files, and import them into iTunes.    	     l     ������  ��        l     �� ��    G A WARNING: you must have "Copy files into iTunes Music Folder when         l     �� ��    < 6 adding to Library" checked in the iTunes preferences.         l     ������  ��        l     �� ��    J D Written by Alastair, http://girtby.net/offerings/import-linked-mp3s         l     �� ��      Version of 2005-05-17         l     ������  ��        l     �� ��    ? 9 Licensed under the Creative Commons Attribution License,        !   l     �� "��   " 6 0 see http://creativecommons.org/licenses/by/2.0/    !  # $ # l     ������  ��   $  % & % l     �� '��   ' L F Change this to the name of the playlist you want to add new tracks to    &  ( ) ( j     �� *�� 0 playlistname playlistName * m      + +  Podcasts    )  , - , l     ������  ��   -  . / . l     0�� 0 O      1 2 1 k     3 3  4 5 4 l   ������  ��   5  6 7 6 l   �� 8��   8 5 / look in the description for linked music first    7  9 : 9 r     ; < ; n    
 = > = 1    
��
�� 
conT > 4    �� ?
�� 
docu ? m    ����  < o      ���� 0 html   :  @�� @ r     A B A n     C D C 1    ��
�� 
pURL D 4    �� E
�� 
docu E m    ����  B o      ���� 0 pageurl pageURL��   2 m      F F�null     c����  �
Safari.app�ր    �%���(��֠   w�   )       �<(�$������xsfri   alis    L  Macintosh HD               �XH+    �
Safari.app                                                       Y���.�        ����  	                Applications    ���      ���@      �  $Macintosh HD:Applications:Safari.app   
 S a f a r i . a p p    M a c i n t o s h   H D  Applications/Safari.app   / ��  ��   /  G H G l     ������  ��   H  I J I l   " K�� K r    " L M L n      N O N 1     ��
�� 
psxp O l    P�� P I   �� Q R
�� .earsffdralis        afdr Q m     S S 
 temp    R �� T��
�� 
from T m    ��
�� fldmfldu��  ��   M o      ���� 0 
tempfolder 
tempFolder��   J  U V U l  # ( W�� W r   # ( X Y X m   # $ Z Z  "    Y n      [ \ [ 1   % '��
�� 
txdl \ 1   $ %��
�� 
ascr��   V  ] ^ ] l  ) - _�� _ r   ) - ` a ` J   ) +����   a o      ���� 0 theurls theURLs��   ^  b c b l     ������  ��   c  d e d l  . 7 f�� f r   . 7 g h g n  . 3 i j i 2   / 3��
�� 
citm j o   . /���� 0 html   h o      ���� 0 theitemlist theItemList��   e  k l k l  8 { m�� m X   8 { n�� o n Z   N v p q���� p F   N j r s r F   N _ t u t C   N S v w v o   N O���� 0 i   w m   O R x x  http:    u D   V [ y z y o   V W���� 0 i   z m   W Z { { 
 .mp3    s H   b f | | E   b e } ~ } o   b c���� 0 theurls theURLs ~ o   c d���� 0 i   q r   m r  �  b   m p � � � o   m n���� 0 theurls theURLs � o   n o���� 0 i   � o      ���� 0 theurls theURLs��  ��  �� 0 i   o o   ; >���� 0 theitemlist theItemList��   l  � � � l     ������  ��   �  � � � l  | � ��� � r   | � � � � m   |  � �  /    � n      � � � 1   � ���
�� 
txdl � 1    ���
�� 
ascr��   �  � � � l     ������  ��   �  � � � l  � � ��� � Z   � � � ����� � =   � � � � � n   � � � � � 1   � ���
�� 
leng � o   � ����� 0 theurls theURLs � m   � �����   � k   � � � �  � � � I  � ��� � �
�� .sysodlogaskr        TEXT � m   � � � �  No Linked MP3s found    � �� � �
�� 
btns � J   � � � �  ��� � m   � � � �  OK   ��   � �� � �
�� 
dflt � m   � � � �  OK    � �� ���
�� 
disp � m   � ���
�� stic    ��   �  ��� � L   � �����  ��  ��  ��  ��   �  � � � l     ������  ��   �  � � � l  � � ��� � r   � � � � � J   � �����   � o      ���� 0 thefiles theFiles��   �  � � � l  �9 ��� � X   �9 ��� � � k   �4 � �  � � � r   � � � � � n  � � � � � 4  � ��� �
�� 
citm � m   � ������� � o   � ����� 0 u   � o      ���� 0 filename   �  � � � l  � �������  ��   �  � � � l  � ��� ���   � G A URL Access Scripting doesn't handle fileURLs (see TN2022), so we    �  � � � l  � ��� ���   � F @ use old skool file specifications instead. These have a maximum    �  � � � l  � ��� ���   � C = length of 32 chars, so let's adjust the filename accordingly    �  � � � Z   � � ����� � ?   � � � � � n   � � � � � 1   � ���
�� 
leng � o   � ����� 0 filename   � m   � �����  � r   �  � � � b   � � � � � l  � � ��� � n   � � � � � 7  � ��� � �
�� 
ctxt � m   � �����  � m   � �����  � o   � ����� 0 filename  ��   � m   � � � � 
 .mp3    � o      ���� 0 filename  ��  ��   �  � � � O  ( � � � t  ' � � � r  & � � � I "�� � �
�� .aevtdwnlfss ���     TEXT � o  ���� 0 u   � �� � �
�� 
fdst � l  ��� � b   � � � o  ���� 0 
tempfolder 
tempFolder � o  ���� 0 filename  ��   � �� ���
�� 
prog � m  ��
�� boovtrue��   � o      ���� 0 thefile theFile � m  ����, � m   � �null     ߷��  *�URL Access Scripting.app(����    w�,   )       �<(�$����� xuasc   alis    �  Macintosh HD               �XH+    *�URL Access Scripting.app                                         c� W        ����  	                ScriptingAdditions    ���      ���e      *�  �  �  GMacintosh HD:System:Library:ScriptingAdditions:URL Access Scripting.app   2  U R L   A c c e s s   S c r i p t i n g . a p p    M a c i n t o s h   H D  :System/Library/ScriptingAdditions/URL Access Scripting.app  / ��   �  �� � r  )4 � � � b  )0 � � � o  ),�~�~ 0 thefiles theFiles � o  ,/�}�} 0 thefile theFile � o      �|�| 0 thefiles theFiles�  �� 0 u   � o   � ��{�{ 0 theurls theURLs��   �  � � � l     �z�y�z  �y   �  � � � l     �x ��x   � = 7 now have a list of downloaded files in the temp folder    �  � � � l :� ��w � O  :� � � � k  @� � �  � � � l @@�v ��v   � * $ add the playlist if it doesn't exit    �  � � � Z  @p � �u�t � H  @O l @N�s I @N�r�q
�r .coredoexbool    ��� obj  4  @J�p
�p 
cPly o  DI�o�o 0 playlistname playlistName�q  �s    I Rl�n�m
�n .corecrel****      � null�m   �l
�l 
kocl m  VY�k
�k 
cUsP �j�i
�j 
prdt K  \f		 �h
�g
�h 
pnam
 o  _d�f�f 0 playlistname playlistName�g  �i  �u  �t   �  l qq�e�d�e  �d    l qq�c�c     finally add the track     r  q� I q��b
�b .hookAdd cTrk      @ alis o  qt�a�a 0 thefiles theFiles �`�_
�` 
insh 4  w��^
�^ 
cPly o  {��]�] 0 playlistname playlistName�_   o      �\�\ 0 	thetracks 	theTracks  l ���[�Z�[  �Z    l ���Y�Y   #  make it a list, then iterate     Z  �� �X�W >  ��!"! n  ��#$# m  ���V
�V 
pcls$ o  ���U�U 0 	thetracks 	theTracks" m  ���T
�T 
list  r  ��%&% J  ��'' (�S( o  ���R�R 0 	thetracks 	theTracks�S  & o      �Q�Q 0 	thetracks 	theTracks�X  �W   )�P) X  ��*�O+* k  ��,, -.- l ���N/�N  / !  play with genre here? naah   . 010 l ���M�L�M  �L  1 232 l ���K4�K  4 + % set the comment field to the pageURL   3 5�J5 r  ��676 o  ���I�I 0 pageurl pageURL7 n      898 1  ���H
�H 
pCmt9 o  ���G�G 0 t  �J  �O 0 t  + o  ���F�F 0 	thetracks 	theTracks�P   � m  :=::�null     sߠ��  �
iTunes.app�ր    �%���(��֠x�w�   )       �<(�$������xhook   alis    L  Macintosh HD               �XH+    �
iTunes.app                                                       ��8        ����  	                Applications    ���      �x�      �  $Macintosh HD:Applications:iTunes.app   
 i T u n e s . a p p    M a c i n t o s h   H D  Applications/iTunes.app   / ��  �w   � ;<; l     �E�D�E  �D  < =>= l ��?�C? X  ��@�BA@ O ��BCB I ���AD�@
�A .coredeloobj        obj D o  ���?�? 0 f  �@  C m  ��EE�null     !����  �
Finder.app��p    �%���(��Ր  �w�$   )       �<(�$������xMACS   alis    r  Macintosh HD               �XH+    �
Finder.app                                                       7߾ Z        ����  	                CoreServices    ���      ���W      �  �  �  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  �B 0 f  A o  ���>�> 0 thefiles theFiles�C  > F�=F l     �<�;�<  �;  �=       �:G +H�:  G �9�8�9 0 playlistname playlistName
�8 .aevtoappnull  �   � ****H �7I�6�5JK�4
�7 .aevtoappnull  �   � ****I k    �LL  .MM  INN  UOO  ]PP  dQQ  kRR  �SS  �TT  �UU  �VV  �WW =�3�3  �6  �5  J �2�1�0�/�2 0 i  �1 0 u  �0 0 t  �/ 0 f  K > F�.�-�,�+�* S�)�(�'�&�% Z�$�#�"�!� ��� x {� �� �� �� ��������� � �������:�
�	��������� ��E��
�. 
docu
�- 
conT�, 0 html  
�+ 
pURL�* 0 pageurl pageURL
�) 
from
�( fldmfldu
�' .earsffdralis        afdr
�& 
psxp�% 0 
tempfolder 
tempFolder
�$ 
ascr
�# 
txdl�" 0 theurls theURLs
�! 
citm�  0 theitemlist theItemList
� 
kocl
� 
cobj
� .corecnte****       ****
� 
bool
� 
leng
� 
btns
� 
dflt
� 
disp
� stic    � 
� .sysodlogaskr        TEXT� 0 thefiles theFiles� 0 filename  � 
� 
ctxt�,
� 
fdst
� 
prog� 
� .aevtdwnlfss ���     TEXT� 0 thefile theFile
�
 
cPly
�	 .coredoexbool    ��� obj 
� 
cUsP
� 
prdt
� 
pnam
� .corecrel****      � null
� 
insh
� .hookAdd cTrk      @ alis� 0 	thetracks 	theTracks
� 
pcls
�  
list
�� 
pCmt
�� .coredeloobj        obj �4�� *�k/�,E�O*�k/�,E�UO���l 	�,E�O���,FOjvE�O�a -E` O B_ [a a l kh  �a 	 �a a &	 
Ϡa & 
Ϡ%E�Y h[OY��Oa ��,FO�a ,j  %a a a kva a a a  a ! "OhY hOjvE` #O ~�[a a l kh �a i/E` $O_ $a ,a % _ $[a &\[Zk\Za %2a '%E` $Y hOa ( a )n�a *�_ $%a +ea , -E` .oUO_ #_ .%E` #[OY��Oa / �*a 0b   /j 1 *a a 2a 3a 4b   la , 5Y hO_ #a 6*a 0b   /l 7E` 8O_ 8a 9,a : _ 8kvE` 8Y hO !_ 8[a a l kh Ţa ;,F[OY��UO &_ #[a a l kh a < �j =U[OY��ascr  ��ޭ