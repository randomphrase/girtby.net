FasdUAS 1.101.10   ��   ��    k             l     �� ��    F @ AppleScript to scan the currently-selected item in NetNewsWire,       	  l     �� 
��   
 C = download any linked .mp3 files, and import them into iTunes.    	     l     ������  ��        l     �� ��    G A WARNING: you must have "Copy files into iTunes Music Folder when         l     �� ��    < 6 adding to Library" checked in the iTunes preferences.         l     ������  ��        l     �� ��    J D Written by Alastair, http://girtby.net/offerings/import-linked-mp3s         l     �� ��      Version of 2005-05-17         l     ������  ��        l     �� ��    ? 9 Licensed under the Creative Commons Attribution License,        !   l     �� "��   " 6 0 see http://creativecommons.org/licenses/by/2.0/    !  # $ # l     ������  ��   $  % & % l     �� '��   ' L F Change this to the name of the playlist you want to add new tracks to    &  ( ) ( l     �� *��   * P J Or set it to blank if you want to name the playlist after the group which    )  + , + l     �� -��   - P J the subscription belongs to (or if it doesn't belong to a group, name the    ,  . / . l     �� 0��   0 / ) playlist after the subscription itself).    /  1 2 1 j     �� 3�� 0 playlistname playlistName 3 m      4 4  Podcasts    2  5 6 5 l     ������  ��   6  7 8 7 l     9�� 9 r      : ; : m      < <       ; o      ���� 0 theplaylist thePlaylist��   8  = > = l     ������  ��   >  ? @ ? l   � A�� A O    � B C B k    � D D  E F E l   ������  ��   F  G H G l   �� I��   I , & Make sure we have a headline selected    H  J K J Z    ' L M���� L H     N N l    O�� O I   �� P��
�� .coredoexbool    ��� obj  P 1    ��
�� 
SeHe��  ��   M k    # Q Q  R S R I    �� T U
�� .sysodlogaskr        TEXT T m     V V  Please select a headline!    U �� W X
�� 
btns W J     Y Y  Z�� Z m     [ [  OK   ��   X �� \ ]
�� 
dflt \ m     ^ ^  OK    ] �� _��
�� 
disp _ m    ��
�� stic    ��   S  `�� ` L   ! #����  ��  ��  ��   K  a b a l  ( (������  ��   b  c d c l  ( (�� e��   e 5 / look in the description for linked music first    d  f g f r   ( / h i h n   ( - j k j 1   + -��
�� 
Dscr k 1   ( +��
�� 
SeHe i o      ���� 0 html   g  l m l r   0 ; n o n n   0 7 p q p 1   3 7��
�� 
Link q 1   0 3��
�� 
SeHe o o      ���� 0 hurl hURL m  r s r l  < <������  ��   s  t u t l  < <�� v��   v 7 1 set thePlaylist to the appropriate playlist name    u  w x w r   < G y z y n   < C { | { m   ? C��
�� 
Subs | 1   < ?��
�� 
SeHe z o      ���� 0 thesub theSub x  }�� } Z   H � ~ �� � ~ =   H Q � � � o   H M���� 0 playlistname playlistName � m   M P � �        k   T � � �  � � � r   T ` � � � N   T \ � � n   T [ � � � 1   W [��
�� 
Grup � o   T W���� 0 thesub theSub � o      ���� 0 thegroup theGroup �  ��� � Z   a � � ��� � � H   a i � � l  a h ��� � I  a h�� ���
�� .coredoexbool    ��� obj  � o   a d���� 0 thegroup theGroup��  ��   � r   l y � � � l  l w ��� � c   l w � � � n   l s � � � 1   o s��
�� 
DsNm � o   l o���� 0 thesub theSub � m   s v��
�� 
TEXT��   � o      ���� 0 theplaylist thePlaylist��   � r   | � � � � l  | � ��� � c   | � � � � n   | � � � � 1    ���
�� 
DsNm � o   | ���� 0 thegroup theGroup � m   � ���
�� 
TEXT��   � o      ���� 0 theplaylist thePlaylist��  ��   � r   � � � � � o   � ����� 0 playlistname playlistName � o      ���� 0 theplaylist thePlaylist��   C m     � ��null     � ��  �NetNewsWire.app  �%���(��֠ 7H�x�   )       �(�$������yNnw*   alis    `  Macintosh HD               �XH+    �NetNewsWire.app                                                 u���rV        ����  	                Applications    ���      ���      �  )Macintosh HD:Applications:NetNewsWire.app      N e t N e w s W i r e . a p p    M a c i n t o s h   H D  Applications/NetNewsWire.app  / ��  ��   @  � � � l     ������  ��   �  � � � l  � � ��� � r   � � � � � n   � � � � � 1   � ���
�� 
psxp � l  � � ��� � I  � ��� � �
�� .earsffdralis        afdr � m   � � � � 
 temp    � �� ���
�� 
from � m   � ���
�� fldmfldu��  ��   � o      ���� 0 
tempfolder 
tempFolder��   �  � � � l  � � ��� � r   � � � � � m   � � � �  "    � n      � � � 1   � ���
�� 
txdl � 1   � ���
�� 
ascr��   �  � � � l  � � ��� � r   � � � � � J   � �����   � o      ���� 0 theurls theURLs��   �  � � � l     ������  ��   �  � � � l  � � ��� � r   � � � � � n  � � � � � 2   � ���
�� 
citm � o   � ����� 0 html   � o      ���� 0 theitemlist theItemList��   �  � � � l  � ��� � X   � ��� � � Z   � � ����� � F   � � � � � F   � � � � � C   � � � � � o   � ����� 0 i   � m   � � � �  http:    � D   � � � � � o   � ����� 0 i   � m   � � � � 
 .mp3    � H   � � � � E   � � � � � o   � ����� 0 theurls theURLs � o   � ����� 0 i   � r   � � � � b   � � � � o   ����� 0 theurls theURLs � o  ���� 0 i   � o      ���� 0 theurls theURLs��  ��  �� 0 i   � o   � ����� 0 theitemlist theItemList��   �  � � � l     ������  ��   �  � � � l  ��� � r   � � � m   � �  /    � n      � � � 1  ��
�� 
txdl � 1  ��
�� 
ascr��   �  � � � l     ������  ��   �  � � � l D ��� � Z  D � ���~ � =  ' � � � n  % � � � 1  !%�}
�} 
leng � o  !�|�| 0 theurls theURLs � m  %&�{�{   � k  *@ � �  � � � I *=�z � �
�z .sysodlogaskr        TEXT � m  *- � �  No Linked MP3s found    � �y � �
�y 
btns � J  .3 � �  ��x � m  .1 � �  OK   �x   � �w 
�w 
dflt  m  47  OK    �v�u
�v 
disp m  89�t
�t stic    �u   � �s L  >@�r�r  �s  �  �~  ��   �  l     �q�p�q  �p    l EK	�o	 r  EK

 J  EG�n�n   o      �m�m 0 thefiles theFiles�o    l L��l X  L��k k  b�  r  bl n bh 4 ch�j
�j 
citm m  fg�i�i�� o  bc�h�h 0 u   o      �g�g 0 filename    l mm�f�e�f  �e    l mm�d�d   D > URL Access Scripting doesn't handle furls (see TN2022), so we     l mm�c �c    F @ use old skool file specifications instead. These have a maximum    !"! l mm�b#�b  # C = length of 32 chars, so let's adjust the filename accordingly   " $%$ Z  m�&'�a�`& ?  mx()( n  mt*+* 1  pt�_
�_ 
leng+ o  mp�^�^ 0 filename  ) m  tw�]�] ' r  {�,-, b  {�./. l {�0�\0 n  {�121 7 ~��[34
�[ 
ctxt3 m  ���Z�Z 4 m  ���Y�Y 2 o  {~�X�X 0 filename  �\  / m  ��55 
 .mp3   - o      �W�W 0 filename  �a  �`  % 676 O  ��898 t  ��:;: r  ��<=< I ���V>?
�V .aevtdwnlfss ���     TEXT> o  ���U�U 0 u  ? �T@A
�T 
fdst@ l ��B�SB b  ��CDC o  ���R�R 0 
tempfolder 
tempFolderD o  ���Q�Q 0 filename  �S  A �PE�O
�P 
progE m  ���N
�N boovtrue�O  = o      �M�M 0 thefile theFile; m  ���L�L,9 m  ��FFnull     ߷��  *�URL Access Scripting.app(���    Zx�D   )       �(�$�����0yuasc   alis    �  Macintosh HD               �XH+    *�URL Access Scripting.app                                         c� W        ����  	                ScriptingAdditions    ���      ���e      *�  �  �  GMacintosh HD:System:Library:ScriptingAdditions:URL Access Scripting.app   2  U R L   A c c e s s   S c r i p t i n g . a p p    M a c i n t o s h   H D  :System/Library/ScriptingAdditions/URL Access Scripting.app  / ��  7 G�KG r  ��HIH b  ��JKJ o  ���J�J 0 thefiles theFilesK o  ���I�I 0 thefile theFileI o      �H�H 0 thefiles theFiles�K  �k 0 u   o  OR�G�G 0 theurls theURLs�l   LML l     �F�E�F  �E  M NON l     �DP�D  P = 7 now have a list of downloaded files in the temp folder   O QRQ l �US�CS O  �UTUT k  �TVV WXW l ���BY�B  Y * $ add the playlist if it doesn't exit   X Z[Z Z  ��\]�A�@\ H  ��^^ l ��_�?_ I ���>`�=
�> .coredoexbool    ��� obj ` 4  ���<a
�< 
cPlya o  ���;�; 0 theplaylist thePlaylist�=  �?  ] I ���:�9b
�: .corecrel****      � null�9  b �8cd
�8 
koclc m  ���7
�7 
cUsPd �6e�5
�6 
prdte K  ��ff �4g�3
�4 
pnamg o  ���2�2 0 theplaylist thePlaylist�3  �5  �A  �@  [ hih l ���1�0�1  �0  i jkj l ���/l�/  l   finally add the track   k mnm r  �opo I ��.qr
�. .hookAdd cTrk      @ alisq o  ��-�- 0 thefiles theFilesr �,s�+
�, 
inshs 4  �*t
�* 
cPlyt o  	
�)�) 0 theplaylist thePlaylist�+  p o      �(�( 0 	thetracks 	theTracksn uvu l �'�&�'  �&  v wxw l �%y�%  y #  make it a list, then iterate   x z{z Z  /|}�$�#| >  ~~ n  ��� m  �"
�" 
pcls� o  �!�! 0 	thetracks 	theTracks m  � 
�  
list} r  "+��� J  "'�� ��� o  "%�� 0 	thetracks 	theTracks�  � o      �� 0 	thetracks 	theTracks�$  �#  { ��� X  0T���� k  FO�� ��� l FF���  � !  play with genre here? naah   � ��� l FF���  �  � ��� l FF���  � + % set the comment field to the pageURL   � ��� r  FO��� o  FI�� 0 hurl hURL� n      ��� 1  JN�
� 
pCmt� o  IJ�� 0 t  �  � 0 t  � o  36�� 0 	thetracks 	theTracks�  U m  �����null     sߠ��  �
iTunes.app�ր    �%�<��(��֠y��x�   )       �(�$������yhook   alis    L  Macintosh HD               �XH+    �
iTunes.app                                                       ��8        ����  	                Applications    ���      �x�      �  $Macintosh HD:Applications:iTunes.app   
 i T u n e s . a p p    M a c i n t o s h   H D  Applications/iTunes.app   / ��  �C  R ��� l     ���  �  � ��� l V}��� X  V}���� O lx��� I rw���
� .coredeloobj        obj � o  rs�� 0 f  �  � m  lo���null     !����  �
Finder.app���    �%���(���  7H�x�D   )       �(�$�����0yMACS   alis    r  Macintosh HD               �XH+    �
Finder.app                                                       7߾ Z        ����  	                CoreServices    ���      ���W      �  �  �  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � 0 f  � o  Y\�
�
 0 thefiles theFiles�  � ��	� l     ���  �  �	       �� 4� 4��������������  � ��� ��������������������������� 0 playlistname playlistName
� .aevtoappnull  �   � ****�  0 theplaylist thePlaylist�� 0 html  �� 0 hurl hURL�� 0 thesub theSub�� 0 
tempfolder 
tempFolder�� 0 theurls theURLs�� 0 theitemlist theItemList�� 0 thefiles theFiles�� 0 filename  �� 0 thefile theFile�� 0 	thetracks 	theTracks��  ��  ��  � �����������
�� .aevtoappnull  �   � ****� k    }��  7��  ?��  ���  ���  ���  ���  ���  ���  ��� �� �� Q�� �����  ��  ��  � ���������� 0 i  �� 0 u  �� 0 t  �� 0 f  � J <�� ����� V�� [�� ^�������������������� ��������� ����������� ����������������� � ��� ��� � ���������5F���������������������������������������� 0 theplaylist thePlaylist
�� 
SeHe
�� .coredoexbool    ��� obj 
�� 
btns
�� 
dflt
�� 
disp
�� stic    �� 
�� .sysodlogaskr        TEXT
�� 
Dscr�� 0 html  
�� 
Link�� 0 hurl hURL
�� 
Subs�� 0 thesub theSub
�� 
Grup�� 0 thegroup theGroup
�� 
DsNm
�� 
TEXT
�� 
from
�� fldmfldu
�� .earsffdralis        afdr
�� 
psxp�� 0 
tempfolder 
tempFolder
�� 
ascr
�� 
txdl�� 0 theurls theURLs
�� 
citm�� 0 theitemlist theItemList
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
bool
�� 
leng�� 0 thefiles theFiles�� 0 filename  �� 
�� 
ctxt��,
�� 
fdst
�� 
prog�� 
�� .aevtdwnlfss ���     TEXT�� 0 thefile theFile
�� 
cPly
�� 
cUsP
�� 
prdt
�� 
pnam
�� .corecrel****      � null
�� 
insh
�� .hookAdd cTrk      @ alis�� 0 	thetracks 	theTracks
�� 
pcls
�� 
list
�� 
pCmt
�� .coredeloobj        obj ��~�E�O� �*�,j  ���kv����� OhY hO*�,�,E�O*�,a ,E` O*�,a ,E` Ob   a   :_ a ,E` O_ j  _ a ,a &E�Y _ a ,a &E�Y 	b   E�UOa a a l a ,E` Oa _  a !,FOjvE` "O�a #-E` $O H_ $[a %a &l 'kh  �a (	 �a )a *&	 _ "�a *& _ "�%E` "Y h[OY��Oa +_  a !,FO_ "a ,,j  a -�a .kv�a /��� OhY hOjvE` 0O �_ "[a %a &l 'kh �a #i/E` 1O_ 1a ,,a 2 _ 1[a 3\[Zk\Za 22a 4%E` 1Y hOa 5  a 6n�a 7_ _ 1%a 8ea 9 :E` ;oUO_ 0_ ;%E` 0[OY��Oa < �*a =�/j  *a %a >a ?a @�la 9 AY hO_ 0a B*a =�/l CE` DO_ Da E,a F _ DkvE` DY hO #_ D[a %a &l 'kh _ �a G,F[OY��UO &_ 0[a %a &l 'kh a H �j IU[OY��� ���� N o w ,   I   k n o w   a   f e w   o t h e r   b l o g s   b e a t   m e   t o   t h e   p u n c h   o n   t h i s ,   b u t   a s   t h e   S p r i n g   s l o w l y   f a d e s   i n t o   S u m m e r   I   c a n ' t   t h i n k   o f   a   b e t t e r   r e c o r d   t o   r e c o m m e n d   t o   s c i s s o r k i c k   r e a d e r s   t h a n   t h e   n e w e s t   E P   f r o m   < b > H o w a r d   H e l l o < / b > .   K e n s e t h   T h i b i d e a u   i s   e s s e n t i a l l y   t h e   m a s t e r m i n d   o f   t h i s   m o s t l y   i n s t r u m e n t a l   p r o j e c t ,   o n e   t h a t   f i t s   p e r f e c t l y   o n   t h e   T e m p o r a r y   R e s i d e n c e   i m p r i n t .   T h i b i d e a u ,   w h o   a l s o   r e l e a s e d   r e c o r d s   w i t h   T a r a n t e l   a n d   R u m a h   S a k i t   f o r   T R ,   c u r r e n t l y   p l a y s   k e y s   i n   P i n b a c k ,   a n d   w h i l e   I   a m   a   f a n   o f   a l l   t h r e e   o f   h i s   o t h e r   e n d e a v o r s ,   n o n e   r e s o n a t e   a s   p e r s o n a l l y   f o r   m e   a s   H o w a r d   H e l l o .   T h e   n e w e s t   E P   c o n t i n u e s   t h e   F a h e y - v i a - S t e r e o l a b   b l u e p r i n t ,   l o o p i n g   a c o u s t i c   a n d   e l e c t r i c   g u i t a r s   l a v i s h l y   o v e r   e a c h   o t h e r   f o r   a   c l e a n ,   l a y e r e d   a m b i e n c e .   Y e t   w h a t   I   f i n d   m o s t   e f f e c t i v e   a b o u t   t h e   n e w   E P   ( a n d   t h e   o l d   s t u f f )   i s   s i m p l y   t h e   o p t i m i s m   c o n v e y e d   b y   e a c h   t r a c k .   T h i s   i s   h a p p y ,   u p l i f t i n g   m u s i c   t h a t   d e v e l o p s   s l o w l y   a n d   i n   a   b u i l d i n g   l i n e a r   f o r m   t h a t   a d d s   u n p r e d i c t a b i l i t y   a n d   c o n t i n u a l l y   r a i s e s   t h e   e m o t i v e   t h r e s h o l d .   T h e   m i x   o f   o r g a n i c   a n d   e l e c t r o n i c   e l e m e n t s   i s   s e a m l e s s   a n d   s i m p l y   a n o t h e r   a r g u m e n t   t h a t   i n s t r u m e n t a t i o n   n e e d   n o t   b e   d e l i n e a t e d   b y   s u c h   c a t e g o r i e s .   S u r e ,   I ' m   o f t e n   g u i l t y   o f   i t ,   b u t   t h i s   i s   o n e   m o r e   r e a s o n   f o r   m u s i c   t o   s i m p l y   b e   m u s i c . < b r   / > < b r   / > < b > R e s o u r c e s < / b > < b r   / > < l i > F o r   m o r e   i n f o r m a t i o n   o n   H o w a r d   H e l l o   c h e c k   o u t   t h e i r   T e m p o r a r y   R e s i d e n c e   < a   h r e f = " h t t p : / / w w w . t e m p o r a r y r e s i d e n c e . c o m / w w w / t r l _ h t m l / b a n d s / h o w a r d h e l l o . h t m " > h o m e p a g e < / a > . < / l i >   < b r > < l i > Y o u   c a n   p u r c h a s e   H o w a r d   H e l l o   m u s i c   o n l i n e   a t   < b > I n s o u n d . c o m < / b >   b y   c l i c k i n g   < a   h r e f = " h t t p : / / s e a r c h . i n s o u n d . c o m / s e a r c h / s e a r c h m a i n . j s p ? s e a r c h b y = m e t a & q u e r y = h o w a r d + h e l l o & f r o m i n d e x = 1 & s u b m i t . x = 0 & s u b m i t . y = 0 & f r o m = 4 8 2 8 " > t h i s   l i n k   t o   a l l   H o w a r d   H e l l o   r e l e a s e s < / a > < / l i > < b r   / > < b r   / > < i m g   s r c = " h t t p : / / w w w . s c i s s o r k i c k . c o m / b l o g / i m a g e s / p r o m o . g i f " > < b r > < b r   / > < i m g   s r c = " h t t p : / / w w w . s c i s s o r k i c k . c o m / b l o g / i m a g e s / h o w a r d . g i f "   b o r d e r = 4 > < b r > < b r   / > < a   h r e f = " h t t p : / / w w w . s c i s s o r k i c k . c o m / b l o g / m u s i c / h o w a r d h e l l o _ m o r e s a m e . m p 3 "   t a r g e t = " _ b l a n k " > H o w a r d   H e l l o   : :   " M o r e   o f   t h e   S a m e " < / a > < b r   / > < b r >� ��� h h t t p : / / w w w . s c i s s o r k i c k . c o m / 2 0 0 5 / 0 5 / h o w a r d - h e l l o . h t m l� ��  �����
�� 
Subs�� �� ��� \ / U s e r s / a l a s t a i r / L i b r a r y / C a c h e s / T e m p o r a r y I t e m s /� ����� �  �� ��� | h t t p : / / w w w . s c i s s o r k i c k . c o m / b l o g / m u s i c / h o w a r d h e l l o _ m o r e s a m e . m p 3� ����� �  ������������������ ���
� N o w ,   I   k n o w   a   f e w   o t h e r   b l o g s   b e a t   m e   t o   t h e   p u n c h   o n   t h i s ,   b u t   a s   t h e   S p r i n g   s l o w l y   f a d e s   i n t o   S u m m e r   I   c a n ' t   t h i n k   o f   a   b e t t e r   r e c o r d   t o   r e c o m m e n d   t o   s c i s s o r k i c k   r e a d e r s   t h a n   t h e   n e w e s t   E P   f r o m   < b > H o w a r d   H e l l o < / b > .   K e n s e t h   T h i b i d e a u   i s   e s s e n t i a l l y   t h e   m a s t e r m i n d   o f   t h i s   m o s t l y   i n s t r u m e n t a l   p r o j e c t ,   o n e   t h a t   f i t s   p e r f e c t l y   o n   t h e   T e m p o r a r y   R e s i d e n c e   i m p r i n t .   T h i b i d e a u ,   w h o   a l s o   r e l e a s e d   r e c o r d s   w i t h   T a r a n t e l   a n d   R u m a h   S a k i t   f o r   T R ,   c u r r e n t l y   p l a y s   k e y s   i n   P i n b a c k ,   a n d   w h i l e   I   a m   a   f a n   o f   a l l   t h r e e   o f   h i s   o t h e r   e n d e a v o r s ,   n o n e   r e s o n a t e   a s   p e r s o n a l l y   f o r   m e   a s   H o w a r d   H e l l o .   T h e   n e w e s t   E P   c o n t i n u e s   t h e   F a h e y - v i a - S t e r e o l a b   b l u e p r i n t ,   l o o p i n g   a c o u s t i c   a n d   e l e c t r i c   g u i t a r s   l a v i s h l y   o v e r   e a c h   o t h e r   f o r   a   c l e a n ,   l a y e r e d   a m b i e n c e .   Y e t   w h a t   I   f i n d   m o s t   e f f e c t i v e   a b o u t   t h e   n e w   E P   ( a n d   t h e   o l d   s t u f f )   i s   s i m p l y   t h e   o p t i m i s m   c o n v e y e d   b y   e a c h   t r a c k .   T h i s   i s   h a p p y ,   u p l i f t i n g   m u s i c   t h a t   d e v e l o p s   s l o w l y   a n d   i n   a   b u i l d i n g   l i n e a r   f o r m   t h a t   a d d s   u n p r e d i c t a b i l i t y   a n d   c o n t i n u a l l y   r a i s e s   t h e   e m o t i v e   t h r e s h o l d .   T h e   m i x   o f   o r g a n i c   a n d   e l e c t r o n i c   e l e m e n t s   i s   s e a m l e s s   a n d   s i m p l y   a n o t h e r   a r g u m e n t   t h a t   i n s t r u m e n t a t i o n   n e e d   n o t   b e   d e l i n e a t e d   b y   s u c h   c a t e g o r i e s .   S u r e ,   I ' m   o f t e n   g u i l t y   o f   i t ,   b u t   t h i s   i s   o n e   m o r e   r e a s o n   f o r   m u s i c   t o   s i m p l y   b e   m u s i c . < b r   / > < b r   / > < b > R e s o u r c e s < / b > < b r   / > < l i > F o r   m o r e   i n f o r m a t i o n   o n   H o w a r d   H e l l o   c h e c k   o u t   t h e i r   T e m p o r a r y   R e s i d e n c e   < a   h r e f =� ��� � h t t p : / / w w w . t e m p o r a r y r e s i d e n c e . c o m / w w w / t r l _ h t m l / b a n d s / h o w a r d h e l l o . h t m� ��� � > h o m e p a g e < / a > . < / l i >   < b r > < l i > Y o u   c a n   p u r c h a s e   H o w a r d   H e l l o   m u s i c   o n l i n e   a t   < b > I n s o u n d . c o m < / b >   b y   c l i c k i n g   < a   h r e f =� ��� � h t t p : / / s e a r c h . i n s o u n d . c o m / s e a r c h / s e a r c h m a i n . j s p ? s e a r c h b y = m e t a & q u e r y = h o w a r d + h e l l o & f r o m i n d e x = 1 & s u b m i t . x = 0 & s u b m i t . y = 0 & f r o m = 4 8 2 8� ��� � > t h i s   l i n k   t o   a l l   H o w a r d   H e l l o   r e l e a s e s < / a > < / l i > < b r   / > < b r   / > < i m g   s r c =� ��� ` h t t p : / / w w w . s c i s s o r k i c k . c o m / b l o g / i m a g e s / p r o m o . g i f� ��� ( > < b r > < b r   / > < i m g   s r c =� ��� b h t t p : / / w w w . s c i s s o r k i c k . c o m / b l o g / i m a g e s / h o w a r d . g i f� ��� 8   b o r d e r = 4 > < b r > < b r   / > < a   h r e f =� ���    t a r g e t =� ���  _ b l a n k� ��� " > H o w a r d   H e l l o   : :  � ���   M o r e   o f   t h e   S a m e� ���  < / a > < b r   / > < b r >��  � ����� �  �� Zfurlfile://localhost/Users/alastair/Library/Caches/TemporaryItems/howardhello_moresame.mp3� ��� 0 h o w a r d h e l l o _ m o r e s a m e . m p 3� ����� �  �� �� �������� �������� �������
�� 
cSrc�� "
�� kfrmID  
�� 
cUsP��v�
�� kfrmID  
�� 
cFlT��w\
�� kfrmID  �  �  �  ascr  ��ޭ