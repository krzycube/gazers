FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
-------------------------- INTRODUCTION --------------------------Applescript to insert emails as new tasks into Doit.im for Macv 0.1 - 30th of April 2013	- initial release
	
Lutz Meyer / LuMe96(at)gmail.com


------------------------
-- LICENSE --
------------------------

This script comes without particular license, however some basic rules apply :
- You may not make money out of this script without my permission
- If you redistribute / host the script over / on the Internet, please inform me
- You may not distribute this script as is as "being yours".
- If you modify it for distribution, please mention its origin in the Credits section

If you feel the need to make a donation, any amount would be appreciated to
my Paypal account : LuMe96(at)gmail.com.


------------------------
-- CREDIT --
------------------------

This script was inspired by several other snippets found all over the Net
Credits go to the respective authors and to some extend to myself ;)

URL Encode method from Brati'sLover Applescript Libraryhttp://applescript.bratis-lover.net/library/url/ 
------------------------------------------ PROPERTIES TO BE AJUSTED ------------------------------------------
     � 	 		p 
 - - - - - - - - - - - - - - - - - - - - - - - -  - -   I N T R O D U C T I O N   - -  - - - - - - - - - - - - - - - - - - - - - - - -   A p p l e s c r i p t   t o   i n s e r t   e m a i l s   a s   n e w   t a s k s   i n t o   D o i t . i m   f o r   M a c   v   0 . 1   -   3 0 t h   o f   A p r i l   2 0 1 3  	 -   i n i t i a l   r e l e a s e 
 	 
  L u t z   M e y e r   /   L u M e 9 6 ( a t ) g m a i l . c o m 
 
 
 - - - - - - - - - - - - - - - - - - - - - - - - 
 - -   L I C E N S E   - - 
 - - - - - - - - - - - - - - - - - - - - - - - - 
 
 T h i s   s c r i p t   c o m e s   w i t h o u t   p a r t i c u l a r   l i c e n s e ,   h o w e v e r   s o m e   b a s i c   r u l e s   a p p l y   : 
 -   Y o u   m a y   n o t   m a k e   m o n e y   o u t   o f   t h i s   s c r i p t   w i t h o u t   m y   p e r m i s s i o n 
 -   I f   y o u   r e d i s t r i b u t e   /   h o s t   t h e   s c r i p t   o v e r   /   o n   t h e   I n t e r n e t ,   p l e a s e   i n f o r m   m e 
 -   Y o u   m a y   n o t   d i s t r i b u t e   t h i s   s c r i p t   a s   i s   a s   " b e i n g   y o u r s " . 
 -   I f   y o u   m o d i f y   i t   f o r   d i s t r i b u t i o n ,   p l e a s e   m e n t i o n   i t s   o r i g i n   i n   t h e   C r e d i t s   s e c t i o n 
 
 I f   y o u   f e e l   t h e   n e e d   t o   m a k e   a   d o n a t i o n ,   a n y   a m o u n t   w o u l d   b e   a p p r e c i a t e d   t o 
 m y   P a y p a l   a c c o u n t   :   L u M e 9 6 ( a t ) g m a i l . c o m . 
 
 
 - - - - - - - - - - - - - - - - - - - - - - - - 
 - -   C R E D I T   - - 
 - - - - - - - - - - - - - - - - - - - - - - - - 
 
 T h i s   s c r i p t   w a s   i n s p i r e d   b y   s e v e r a l   o t h e r   s n i p p e t s   f o u n d   a l l   o v e r   t h e   N e t 
 C r e d i t s   g o   t o   t h e   r e s p e c t i v e   a u t h o r s   a n d   t o   s o m e   e x t e n d   t o   m y s e l f   ; ) 
 
 U R L   E n c o d e   m e t h o d   f r o m   B r a t i ' s L o v e r   A p p l e s c r i p t   L i b r a r y  h t t p : / / a p p l e s c r i p t . b r a t i s - l o v e r . n e t / l i b r a r y / u r l /    
  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  - -   P R O P E R T I E S   T O   B E   A J U S T E D   - -  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -   
   
  
 l     ��������  ��  ��        l     ��������  ��  ��        l     ��  ��    K E here we specify the max length (number of chars) of the message body     �   �   h e r e   w e   s p e c i f y   t h e   m a x   l e n g t h   ( n u m b e r   o f   c h a r s )   o f   t h e   m e s s a g e   b o d y      l     ��  ��    8 2 to be copied to the Notes field (0 = no truncate)     �   d   t o   b e   c o p i e d   t o   t h e   N o t e s   f i e l d   ( 0   =   n o   t r u n c a t e )      j     �� ��  0 ptytruncatemsg ptyTruncateMsg  m     ����        l     ��������  ��  ��        l     ��   ��    "  If set, Tasks are Autosaved      � ! ! 8   I f   s e t ,   T a s k s   a r e   A u t o s a v e d   " # " l     �� $ %��   $ - ' if not, Task Entry Window remains open    % � & & N   i f   n o t ,   T a s k   E n t r y   W i n d o w   r e m a i n s   o p e n #  ' ( ' l     �� ) *��   ) 8 2 If set To False (=0), no multiple email selection    * � + + d   I f   s e t   T o   F a l s e   ( = 0 ) ,   n o   m u l t i p l e   e m a i l   s e l e c t i o n (  , - , l     �� . /��   .   is accepted    / � 0 0    i s   a c c e p t e d -  1 2 1 j    �� 3�� 0 ptyautosave ptyAutoSave 3 m    ����   2  4 5 4 l     ��������  ��  ��   5  6 7 6 l     �� 8 9��   8 $  here we specify a default tag    9 � : : <   h e r e   w e   s p e c i f y   a   d e f a u l t   t a g 7  ; < ; j    �� =�� 0 ptydefaulttag ptyDefaultTag = m     > > � ? ?   <  @ A @ l     ��������  ��  ��   A  B C B l     �� D E��   D ( " here we specify a default context    E � F F D   h e r e   w e   s p e c i f y   a   d e f a u l t   c o n t e x t C  G H G j   	 �� I�� &0 ptydefaultcontext ptyDefaultContext I m   	 
 J J � K K   H  L M L l     ��������  ��  ��   M  N O N l     �� P Q��   P ( " here we specify a default Project    Q � R R D   h e r e   w e   s p e c i f y   a   d e f a u l t   P r o j e c t O  S T S j    �� U�� &0 ptydefaultproject ptyDefaultProject U m     V V � W W   T  X Y X l     ��������  ��  ��   Y  Z [ Z l     ��������  ��  ��   [  \ ] \ l     �� ^ _��   ^   Add Corespondant :    _ � ` ` &   A d d   C o r e s p o n d a n t   : ]  a b a l     �� c d��   c   0: No    d � e e    0 :   N o b  f g f l     �� h i��   h    1: Corespondant : Subject    i � j j 4   1 :   C o r e s p o n d a n t   :   S u b j e c t g  k l k l     �� m n��   m    2: Subject : Corespondant    n � o o 4   2 :   S u b j e c t   :   C o r e s p o n d a n t l  p q p l     �� r s��   r   3: Correspondant as Tag    s � t t 0   3 :   C o r r e s p o n d a n t   a s   T a g q  u v u l     �� w x��   w !  4: Corespondant as Context    x � y y 6   4 :   C o r e s p o n d a n t   a s   C o n t e x t v  z { z l     �� | }��   | "  5: Correspondant as Project    } � ~ ~ 8   5 :   C o r r e s p o n d a n t   a s   P r o j e c t {   �  j    �� ��� &0 ptyincludecorresp ptyIncludeCorresp � m    ����  �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 5 / here set a start date offset in number of days    � � � � ^   h e r e   s e t   a   s t a r t   d a t e   o f f s e t   i n   n u m b e r   o f   d a y s �  � � � l     �� � ���   � %  ignored when using Quick Entry    � � � � >   i g n o r e d   w h e n   u s i n g   Q u i c k   E n t r y �  � � � l     �� � ���   � 4 . eg. 1 ==> start date Today + 1, i.e. Tomorrow    � � � � \   e g .   1   = = >   s t a r t   d a t e   T o d a y   +   1 ,   i . e .   T o m o r r o w �  � � � l     �� � ���   �   if -1 ==> no start date    � � � � 0   i f   - 1   = = >   n o   s t a r t   d a t e �  � � � l     �� � ���   �   if -2 ==> date of email    � � � � 0   i f   - 2   = = >   d a t e   o f   e m a i l �  � � � l      � � � � j    �� ��� (0 ptystartdateoffset ptyStartDateOffset � m    ������ �   not working right now    � � � � ,   n o t   w o r k i n g   r i g h t   n o w �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 3 - here set a due date offset in number of days    � � � � Z   h e r e   s e t   a   d u e   d a t e   o f f s e t   i n   n u m b e r   o f   d a y s �  � � � l     �� � ���   � 2 , eg. 1 ==> Due date Today + 1, i.e. Tomorrow    � � � � X   e g .   1   = = >   D u e   d a t e   T o d a y   +   1 ,   i . e .   T o m o r r o w �  � � � l     �� � ���   �   if -1 ==> no due date    � � � � ,   i f   - 1   = = >   n o   d u e   d a t e �  � � � l      � � � � j    �� ��� $0 ptyduedateoffset ptyDueDateOffset � m    ����  �   not working right now    � � � � ,   n o t   w o r k i n g   r i g h t   n o w �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 0 * if set to 1, than Due date can't be on we    � � � � T   i f   s e t   t o   1 ,   t h a n   D u e   d a t e   c a n ' t   b e   o n   w e �  � � � l     �� � ���   � * $ will be shifted to following monday    � � � � H   w i l l   b e   s h i f t e d   t o   f o l l o w i n g   m o n d a y �  � � � l      � � � � j    �� ��� 0 ptydueskipwe ptyDueSkipWE � m    ����  �   not working right now    � � � � ,   n o t   w o r k i n g   r i g h t   n o w �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � #  and last, but not least, the    � � � � :   a n d   l a s t ,   b u t   n o t   l e a s t ,   t h e �  � � � l     �� � ���   � E ?---------------------------------------------------------------    � � � � ~ - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - �  � � � l     �� � ���   � P J                                 SCRIPT                                 --    � � � � �                                                                   S C R I P T                                                                   - - �  � � � l     �� � ���   � : 4 (don't modify unless you know what you're doing) --    � � � � h   ( d o n ' t   m o d i f y   u n l e s s   y o u   k n o w   w h a t   y o u ' r e   d o i n g )   - - �  � � � l     �� � ���   � E ?---------------------------------------------------------------    � � � � ~ - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - �  � � � l    � ����� � O     � � � � k    � � �  � � � l   �� � ���   � &   test if UI scripting is enabled    � � � � @   t e s t   i f   U I   s c r i p t i n g   i s   e n a b l e d �  � � � Z    D � ����� � =   	 � � � 1    ��
�� 
uien � m    ��
�� boovfals � k    @ � �  � � � I   ������
�� .sysobeepnull��� ��� long��  ��   �    I   ����
�� .sysodlogaskr        TEXT b     b     b     m    		 �

 8 G U I   S c r i p t i n g   i s   n o t   e n a b l e d o    ��
�� 
ret  o    ��
�� 
ret  m     �: O p e n   S y s t e m   P r e f e r e n c e s   a n d   c h e c k   E n a b l e   A c c e s s   f o r   A s s i s t i v e   D e v i c e s   i n   t h e   A c c e s s i b i l i t y   ( o r   U n i v e r s a l   A c c e s s )   p r e f e r e n c e   p a n e ,   t h e n   r u n   t h i s   s c r i p t   a g a i n .��    Z    =���� =   # n    ! 1    !��
�� 
bhit 1    ��
�� 
rslt m   ! " �  O K O   & 9 k   * 8  I  * /������
�� .miscactvnull��� ��� null��  ��   �� r   0 8 4   0 4��
�� 
xppb m   2 3   �!! H c o m . a p p l e . p r e f e r e n c e . u n i v e r s a l a c c e s s 1   4 7��
�� 
xpcp��   m   & '""�                                                                                  sprf  alis    t  	OSX MLion                  ̺ H+     kSystem Preferences.app                                          ;��>I        ����  	                Applications    ̺�      �=�)       k  .OSX MLion:Applications: System Preferences.app  .  S y s t e m   P r e f e r e n c e s . a p p   	 O S X   M L i o n  #Applications/System Preferences.app   / ��  ��  ��   #��# L   > @����  ��  ��  ��   � $%$ l  E E��������  ��  ��  % &'& l  E E��������  ��  ��  ' ()( r   E J*+* m   E F,, �--  + o      ���� ,0 currentdoitimprocess currentDoItIMProcess) .��. Z   K �/0��1/ H   K T22 l  K S3����3 n  K S454 I   L S��6���� 0 appisrunning appIsRunning6 7��7 m   L O88 �99  D o i t . i m��  ��  5  f   K L��  ��  0 k   W w:: ;<; l  W W����~��  �  �~  < =>= I  W t�}?@
�} .sysodlogaskr        TEXT? b   W bABA b   W ^CDC m   W ZEE �FF 6 D o i t . i m   a p p   i s   n o t   r u n n i n g .D 1   Z ]�|
�| 
lnfdB m   ^ aGG �HH F P l e a s e   s t a r t   D o i t . i m   a n d   t r y   a g a i n .@ �{IJ
�{ 
btnsI J   e jKK L�zL m   e hMM �NN  O K�z  J �yO�x
�y 
dfltO m   m n�w�w �x  > P�vP L   u w�u�u  �v  ��  1 r   z �QRQ m   z }SS �TT  D o i t . i mR o      �t�t ,0 currentdoitimprocess currentDoItIMProcess��   � m     UU�                                                                                  sevs  alis    �  	OSX MLion                  ̺ H+     NSystem Events.app                                               5��^Q�        ����  	                CoreServices    ̺�      �^5�       N   H   G  :OSX MLion:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p   	 O S X   M L i o n  -System/Library/CoreServices/System Events.app   / ��  ��  ��   � VWV l     �s�r�q�s  �r  �q  W XYX l  ��Z�p�oZ O   ��[\[ k   ��]] ^_^ l  � ��n�m�l�n  �m  �l  _ `a` l  � ��kbc�k  b + % assign the list of selected messages   c �dd J   a s s i g n   t h e   l i s t   o f   s e l e c t e d   m e s s a g e sa efe r   � �ghg 1   � ��j
�j 
slcth o      �i�i $0 selectedmessages selectedMessagesf iji l  � ��h�g�f�h  �g  �f  j klk l  � ��emn�e  m / ) we check the number of selected messages   n �oo R   w e   c h e c k   t h e   n u m b e r   o f   s e l e c t e d   m e s s a g e sl pqp l  � ��drs�d  r 7 1 and exit if different from 1 and autosave if off   s �tt b   a n d   e x i t   i f   d i f f e r e n t   f r o m   1   a n d   a u t o s a v e   i f   o f fq uvu r   � �wxw I  � ��cy�b
�c .corecnte****       ****y o   � ��a�a $0 selectedmessages selectedMessages�b  x o      �`�` 0 msgcount msgCountv z{z l  � ��_�^�]�_  �^  �]  { |}| Z   �~��\~ l  � ���[�Z� A   � ���� o   � ��Y�Y 0 msgcount msgCount� m   � ��X�X �[  �Z   k   � ��� ��� I  � ��W��
�W .sysodlogaskr        TEXT� b   � ���� b   � ���� m   � ��� ��� ( N o   M e s s a g e   s e l e c t e d .� 1   � ��V
�V 
lnfd� m   � ��� ��� H Y o u   n e e d   t o   s e l e c t   a n   e m a i l   m e s s a g e .� �U��
�U 
btns� J   � ��� ��T� m   � ��� ���  O K�T  � �S��R
�S 
dflt� m   � ��Q�Q �R  � ��P� L   � ��O�O  �P  � ��� l  � ���N�M� F   � ���� l  � ���L�K� ?   � ���� o   � ��J�J 0 msgcount msgCount� m   � ��I�I �L  �K  � l  � ���H�G� =   � ���� o   � ��F�F 0 ptyautosave ptyAutoSave� m   � ��E�E  �H  �G  �N  �M  � ��D� k   � �� ��� I  � ��C��
�C .sysodlogaskr        TEXT� b   � ���� b   � ���� m   � ��� ��� l A u t o s a v e   i s   s e t   t o   o f f ,   s o   o n l y   o n e   M e s s a g e   a t   a   t i m e .� 1   � ��B
�B 
lnfd� m   � ��� ��� \ Y o u   h a v e   s e l e c t e d   m o r e   t h a n   o n e   e m a i l   m e s s a g e .� �A��
�A 
btns� J   � ��� ��@� m   � ��� ���  O K�@  � �?��>
�? 
dflt� m   � ��=�= �>  � ��<� L   � �;�;  �<  �D  �\  } ��� l �:�9�8�:  �9  �8  � ��� l �7�6�5�7  �6  �5  � ��� l �4�3�2�4  �3  �2  � ��� l �1���1  � , & looping through the selected messages   � ��� L   l o o p i n g   t h r o u g h   t h e   s e l e c t e d   m e s s a g e s� ��0� X  ���/�� k  ��� ��� l �.���.  � R L extract the subject, sender name, message ID and the content of the message   � ��� �   e x t r a c t   t h e   s u b j e c t ,   s e n d e r   n a m e ,   m e s s a g e   I D   a n d   t h e   c o n t e n t   o f   t h e   m e s s a g e� ��� l �-���-  � 4 .  and assign it to the corresponding variables   � ��� \     a n d   a s s i g n   i t   t o   t h e   c o r r e s p o n d i n g   v a r i a b l e s� ��� r  $��� n   ��� 1   �,
�, 
subj� o  �+�+ 0 
themessage 
theMessage� o      �*�* 0 
thesubject 
theSubject� ��� l %%�)�(�'�)  �(  �'  � ��� r  %.��� n  %*��� 1  &*�&
�& 
alhe� o  %&�%�% 0 
themessage 
theMessage� o      �$�$ 0 	theheader 	theHeader� ��� l //�#�"�!�#  �"  �!  � ��� l //� ���   �  �  � ��� l //����  � > 8 if the sender does not have a name, we put the @address   � ��� p   i f   t h e   s e n d e r   d o e s   n o t   h a v e   a   n a m e ,   w e   p u t   t h e   @ a d d r e s s� ��� Q  /T���� r  2?��� I 2;���
� .emaleafnnull���     ctxt� n  27��� 1  37�
� 
sndr� o  23�� 0 
themessage 
theMessage�  � o      �� 0 thesendername theSenderName� R      ���
� .ascrerr ****      � ****�  �  � r  GT��� I GP���
� .emaleauanull���     ctxt� n  GL��� 1  HL�
� 
sndr� o  GH�� 0 
themessage 
theMessage�  � o      �� 0 thesendername theSenderName� ��� l UU����  �  �  � ��� Q  U����� k  X    r  Xj n  Xf 1  bf�
� 
pnam n  Xb 4  ]b�	
� 
cobj	 m  `a�
�
  n  X]

 m  Y]�	
�	 
trcp o  XY�� 0 
themessage 
theMessage o      �� 0 thedestname theDestName  Z  k}�� = kr o  kn�� 0 thedestname theDestName m  nq�
� 
msng R  uy��� 
� .ascrerr ****      � ****�  �   �  �   �� l ~~��������  ��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � Q  �� k  ��  r  �� n  �� 1  ����
�� 
radd n  �� 4  ����
�� 
cobj m  ������  n  �� !  m  ����
�� 
trcp! o  ������ 0 
themessage 
theMessage o      ���� 0 thedestname theDestName "��" Z  ��#$����# = ��%&% o  ������ 0 thedestname theDestName& m  ����
�� 
msng$ R  ��������
�� .ascrerr ****      � ****��  ��  ��  ��  ��   R      ������
�� .ascrerr ****      � ****��  ��   k  ��'' ()( Q  ��*+,* k  ��-- ./. r  ��010 n  ��232 1  ����
�� 
pnam3 n  ��454 4  ����6
�� 
cobj6 m  ������ 5 n  ��787 m  ����
�� 
crcp8 o  ������ 0 
themessage 
theMessage1 o      ���� 0 thedestname theDestName/ 9��9 Z  ��:;����: = ��<=< o  ������ 0 thedestname theDestName= m  ����
�� 
msng; R  ��������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  + R      ������
�� .ascrerr ****      � ****��  ��  , r  ��>?> n  ��@A@ 1  ����
�� 
raddA n  ��BCB 4  ����D
�� 
cobjD m  ������ C n  ��EFE m  ����
�� 
crcpF o  ������ 0 
themessage 
theMessage? o      ���� 0 thedestname theDestName) G��G l ����������  ��  ��  ��  � HIH l ����������  ��  ��  I JKJ l ����LM��  L   Date of the EMail   M �NN $   D a t e   o f   t h e   E M a i lK OPO r  �QRQ m  ����
�� 
msngR o      ���� 0 
themsgdate 
theMsgDateP STS l ��������  ��  ��  T UVU l ��WX��  W B < if Header contains "Received from" we have an incoming mail   X �YY x   i f   H e a d e r   c o n t a i n s   " R e c e i v e d   f r o m "   w e   h a v e   a n   i n c o m i n g   m a i lV Z[Z l ��\]��  \ / ) and will use the Sender in the Task name   ] �^^ R   a n d   w i l l   u s e   t h e   S e n d e r   i n   t h e   T a s k   n a m e[ _`_ l ��ab��  a G A otherwise we use the Dest as WE are the sender for outgoing msgs   b �cc �   o t h e r w i s e   w e   u s e   t h e   D e s t   a s   W E   a r e   t h e   s e n d e r   f o r   o u t g o i n g   m s g s` ded Z  3fg��hf l i����i E  jkj o  ���� 0 	theheader 	theHeaderk m  
ll �mm  R e c e i v e d :   f r o m��  ��  g k  nn opo r  qrq n  sts 1  ��
�� 
rdrct o  ���� 0 
themessage 
theMessager o      ���� 0 
themsgdate 
theMsgDatep u��u r  vwv o  ���� 0 thesendername theSenderNamew o      ���� 0 thename theName��  ��  h k  "3xx yzy r  "+{|{ n  "'}~} 1  #'��
�� 
drcv~ o  "#���� 0 
themessage 
theMessage| o      ���� 0 
themsgdate 
theMsgDatez �� r  ,3��� o  ,/���� 0 thedestname theDestName� o      ���� 0 thename theName��  e ��� l 44��������  ��  ��  � ��� l 44������  � !  get message content and ID   � ��� 6   g e t   m e s s a g e   c o n t e n t   a n d   I D� ��� r  4A��� l 4=������ c  4=��� l 49������ n  49��� 1  59��
�� 
ctnt� o  45���� 0 
themessage 
theMessage��  ��  � m  9<��
�� 
ctxt��  ��  � o      ���� 0 thetxtcontent theTxtContent� ��� r  BO��� c  BK��� n  BG��� 1  CG��
�� 
meid� o  BC���� 0 
themessage 
theMessage� m  GJ��
�� 
TEXT� o      ���� 0 theid theID� ��� l PP��������  ��  ��  � ��� l PP��������  ��  ��  � ��� Z  P������ l PW������ =  PW��� o  PU���� &0 ptyincludecorresp ptyIncludeCorresp� m  UV���� ��  ��  � k  Zk�� ��� l ZZ������  � E ? set the task header to the following : "Sender/Dest : Subject"   � ��� ~   s e t   t h e   t a s k   h e a d e r   t o   t h e   f o l l o w i n g   :   " S e n d e r / D e s t   :   S u b j e c t "� ��� r  Zi��� b  Ze��� b  Za��� o  Z]���� 0 thename theName� m  ]`�� ���    :  � o  ad���� 0 
thesubject 
theSubject� o      ���� 0 thetasktitle theTaskTitle� ���� l jj��������  ��  ��  ��  � ��� l nu������ =  nu��� o  ns���� &0 ptyincludecorresp ptyIncludeCorresp� m  st���� ��  ��  � ���� k  x��� ��� l xx������  � H B set the task header to the following : "Subject (Sender/Dest : )"   � ��� �   s e t   t h e   t a s k   h e a d e r   t o   t h e   f o l l o w i n g   :   " S u b j e c t   ( S e n d e r / D e s t   :   ) "� ���� r  x���� b  x���� b  x���� b  x��� o  x{���� 0 
thesubject 
theSubject� m  {~�� ���    (� o  ����� 0 thename theName� m  ���� ���  )� o      ���� 0 thetasktitle theTaskTitle��  ��  � k  ���� ��� l ��������  � 2 , set the task title to the mail Subject only   � ��� X   s e t   t h e   t a s k   t i t l e   t o   t h e   m a i l   S u b j e c t   o n l y� ���� r  ����� o  ������ 0 
thesubject 
theSubject� o      ���� 0 thetasktitle theTaskTitle��  � ��� l ������~��  �  �~  � ��� l ���}�|�{�}  �|  �{  � ��� l ���z���z  � ; 5 if the property is set, we truncate the message body   � ��� j   i f   t h e   p r o p e r t y   i s   s e t ,   w e   t r u n c a t e   t h e   m e s s a g e   b o d y� ��� Z  �����y�x� F  ����� l ����w�v� ?  ����� o  ���u�u  0 ptytruncatemsg ptyTruncateMsg� m  ���t�t  �w  �v  � l ����s�r� ?  ����� n  ����� 1  ���q
�q 
leng� o  ���p�p 0 thetxtcontent theTxtContent� o  ���o�o  0 ptytruncatemsg ptyTruncateMsg�s  �r  � r  ����� b  ����� l ����n�m� n  ����� 7���l��
�l 
ctxt� m  ���k�k � o  ���j�j  0 ptytruncatemsg ptyTruncateMsg� o  ���i�i 0 thetxtcontent theTxtContent�n  �m  � m  ���� ��� 
 [ . . . ]� o      �h�h 0 thetxtcontent theTxtContent�y  �x  � ��� l ���g�f�e�g  �f  �e  � � � l ���d�c�b�d  �c  �b     l ���a�a   ' ! create link to original message	    � B   c r e a t e   l i n k   t o   o r i g i n a l   m e s s a g e 	  r  ��	 n ��

 I  ���`�_�` 0 
urlencoder 
urlEncoder �^ o  ���]�] 0 theid theID�^  �_    f  ��	 o      �\�\ "0 theurlencodedid theURLEncodedID  r  �� b  �� b  �� m  �� �  m e s s a g e : / / / < o  ���[�[ "0 theurlencodedid theURLEncodedID m  �� �  > / o      �Z�Z 0 thecustomlink theCustomLink  l ���Y�X�W�Y  �X  �W    l ���V�U�T�V  �U  �T    l ���S !�S    > 8 here we set up the start date using the offset property   ! �"" p   h e r e   w e   s e t   u p   t h e   s t a r t   d a t e   u s i n g   t h e   o f f s e t   p r o p e r t y #$# Z  �.%&'(% l ��)�R�Q) ?  ��*+* o  ���P�P (0 ptystartdateoffset ptyStartDateOffset+ m  ���O�O���R  �Q  & r  �,-, [  �
./. l � 0�N�M0 I � �L�K�J
�L .misccurdldt    ��� null�K  �J  �N  �M  / ]   	121 o   �I�I (0 ptystartdateoffset ptyStartDateOffset2 1  �H
�H 
days- o      �G�G 0 thestartdate theStartDate' 343 l 5�F�E5 =  676 o  �D�D (0 ptystartdateoffset ptyStartDateOffset7 m  �C�C���F  �E  4 8�B8 r  $9:9 o   �A�A 0 
themsgdate 
theMsgDate: o      �@�@ 0 thestartdate theStartDate�B  ( r  '.;<; m  '*�?
�? 
msng< o      �>�> 0 thestartdate theStartDate$ =>= l //�=�<�;�=  �<  �;  > ?@? l //�:�9�8�:  �9  �8  @ ABA l //�7�6�5�7  �6  �5  B CDC l //�4EF�4  E < 6 here we set up the due date using the offset property   F �GG l   h e r e   w e   s e t   u p   t h e   d u e   d a t e   u s i n g   t h e   o f f s e t   p r o p e r t yD HIH r  /6JKJ m  /2�3
�3 
msngK o      �2�2 0 
theduedate 
theDueDateI LML Z  7XNO�1�0N l 7>P�/�.P ?  7>QRQ o  7<�-�- $0 ptyduedateoffset ptyDueDateOffsetR m  <=�,�,���/  �.  O r  ATSTS [  APUVU l AFW�+�*W I AF�)�(�'
�) .misccurdldt    ��� null�(  �'  �+  �*  V ]  FOXYX o  FK�&�& $0 ptyduedateoffset ptyDueDateOffsetY 1  KN�%
�% 
daysT o      �$�$ 0 
theduedate 
theDueDate�1  �0  M Z[Z l YY�#�"�!�#  �"  �!  [ \]\ l YY� ���   �  �  ] ^_^ Z  Y�`a��` l Ynb��b F  Yncdc l Y`e��e =  Y`fgf o  Y^�� 0 ptydueskipwe ptyDueSkipWEg m  ^_�� �  �  d l cjh��h > cjiji o  cf�� 0 
theduedate 
theDueDatej m  fi�
� 
msng�  �  �  �  a Z  q�klm�k l q|n��n = q|opo n  qxqrq m  tx�
� 
wkdyr o  qt�� 0 
theduedate 
theDueDatep m  x{�
� 
sat �  �  l r  �sts [  �uvu o  ��� 0 
theduedate 
theDueDatev ]  ��wxw m  ���
�
 x 1  ���	
�	 
dayst o      �� 0 
theduedate 
theDueDatem yzy l ��{��{ = ��|}| n  ��~~ m  ���
� 
wkdy o  ���� 0 
theduedate 
theDueDate} m  ���
� 
sun �  �  z ��� r  ����� [  ����� o  ���� 0 
theduedate 
theDueDate� ]  ����� m  ��� �  � 1  ����
�� 
days� o      ���� 0 
theduedate 
theDueDate�  �  �  �  _ ��� l ����������  ��  ��  � ��� Z  �������� l �������� ?  ����� o  ������ &0 ptyincludecorresp ptyIncludeCorresp� m  ������ ��  ��  � k  ��� ��� l ��������  � g a strip out comma (if any) from theName to avoid splitting into two or more Tags/Contexts/Projects   � ��� �   s t r i p   o u t   c o m m a   ( i f   a n y )   f r o m   t h e N a m e   t o   a v o i d   s p l i t t i n g   i n t o   t w o   o r   m o r e   T a g s / C o n t e x t s / P r o j e c t s� ��� l ����������  ��  ��  � ��� r  ����� n  ����� 1  ����
�� 
txdl� 1  ����
�� 
ascr� o      ���� 0 prevtids prevTIDs� ��� r  ����� m  ���� ���  ,� n      ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr� ��� r  ����� n  ����� 2 ����
�� 
citm� o  ������ 0 thename theName� o      ���� 0 thename theName� ��� r  ����� m  ���� ���   � n      ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr� ��� r  ����� b  ����� m  ���� ���  � o  ������ 0 thename theName� o      ���� 0 thename theName� ���� r  ���� o  ������ 0 prevtids prevTIDs� n      ��� 1  ���
�� 
txdl� 1  ����
�� 
ascr��  ��  ��  � ��� l 		��������  ��  ��  � ��� Z  	&������ l 	������ = 	��� o  	���� &0 ptyincludecorresp ptyIncludeCorresp� m  ���� ��  ��  � r  ��� o  ���� 0 thename theName� o      ���� 0 thetag theTag��  � r  &��� o  "���� 0 ptydefaulttag ptyDefaultTag� o      ���� 0 thetag theTag� ��� l ''��������  ��  ��  � ��� Z  'F������ l '0������ = '0��� o  ',���� &0 ptyincludecorresp ptyIncludeCorresp� m  ,/���� ��  ��  � r  3:��� o  36���� 0 thename theName� o      ���� 0 
thecontext 
theContext��  � r  =F��� o  =B���� &0 ptydefaultcontext ptyDefaultContext� o      ���� 0 
thecontext 
theContext� ��� l GG��������  ��  ��  � ��� Z  Gf������ l GP������ = GP��� o  GL���� &0 ptyincludecorresp ptyIncludeCorresp� m  LO���� ��  ��  � r  SZ��� o  SV���� 0 thename theName� o      ���� 0 
theproject 
theProject��  � r  ]f��� o  ]b���� &0 ptydefaultproject ptyDefaultProject� o      ���� 0 
theproject 
theProject� ��� l gg��������  ��  ��  � ��� Z  g�������� l gn������ > gn��� o  gj���� 0 thecustomlink theCustomLink� m  jm�� ���  ��  ��  � r  q���� b  q���� b  q���� b  q|��� b  qx��� o  qt���� 0 thecustomlink theCustomLink� 1  tw��
�� 
lnfd� 1  x{��
�� 
lnfd� o  |���� 0 thetxtcontent theTxtContent� 1  ����
�� 
lnfd� o      ���� 0 thetxtcontent theTxtContent��  ��  �    l ����������  ��  ��    l ����������  ��  ��    I ������
�� .miscactvnull��� ��� null 4  ����
�� 
capp o  ������ ,0 currentdoitimprocess currentDoItIMProcess��   	 O  ��

 O  �� k  ��  l ����������  ��  ��    l ������   , & here we check if a main window exists    � L   h e r e   w e   c h e c k   i f   a   m a i n   w i n d o w   e x i s t s  l ������   = 7 if not we bring process to front, so window is created    � n   i f   n o t   w e   b r i n g   p r o c e s s   t o   f r o n t ,   s o   w i n d o w   i s   c r e a t e d  Z  ������ H  �� l �� ����  I ����!��
�� .coredoexbool       obj ! l ��"����" 4  ����#
�� 
cwin# m  ��$$ �%%  d o i t . i m��  ��  ��  ��  ��   r  ��&'& m  ����
�� boovtrue' 1  ����
�� 
pisf��  ��   ()( l ����������  ��  ��  ) *+* l ����,-��  , A ; here we check if a task is currently edited and exit if so   - �.. v   h e r e   w e   c h e c k   i f   a   t a s k   i s   c u r r e n t l y   e d i t e d   a n d   e x i t   i f   s o+ /0/ Z  ��12����1 I ����3��
�� .coredoexbool       obj 3 l ��4����4 n  ��565 4  ����7
�� 
butT7 m  ��88 �99  C a n c e l6 4  ����:
�� 
cwin: m  ������ ��  ��  ��  2 k  ��;; <=< I ����>?
�� .sysodlogaskr        TEXT> b  ��@A@ b  ��BCB m  ��DD �EE 4 A   t a s k   i s   i n   e d i t i n g   m o d e .C 1  ����
�� 
lnfdA m  ��FF �GG < P l e a s e   c l o s e   i t   a n d   t r y   a g a i n .? ��HI
�� 
btnsH J  ��JJ K��K m  ��LL �MM  O K��  I ��N��
�� 
dfltN m  ������ ��  = OPO L  ������  P Q�Q l ���~�}�|�~  �}  �|  �  ��  ��  0 RSR Q   ETU�{T k  <VV WXW l �zYZ�z  Y 3 - Here we set focus to Today and back to Inbox   Z �[[ Z   H e r e   w e   s e t   f o c u s   t o   T o d a y   a n d   b a c k   t o   I n b o xX \]\ l �y^_�y  ^ : 4 This is necessary to make sure we are not currently   _ �`` h   T h i s   i s   n e c e s s a r y   t o   m a k e   s u r e   w e   a r e   n o t   c u r r e n t l y] aba l �xcd�x  c 6 0 show task details, as in this case, there is no   d �ee `   s h o w   t a s k   d e t a i l s ,   a s   i n   t h i s   c a s e ,   t h e r e   i s   n ob fgf l �whi�w  h $  New Task button at the bottom   i �jj <   N e w   T a s k   b u t t o n   a t   t h e   b o t t o mg klk I  �vm�u
�v .miscslctuiel       uielm n  non 4  �tp
�t 
crowp m  �s�s o n  qrq 4  �rs
�r 
outls m  �q�q r n  tut 4  �pv
�p 
scrav m  �o�o u 4  �nw
�n 
cwinw m  
xx �yy  D o i t . i m�u  l z�mz I !<�l{�k
�l .miscslctuiel       uiel{ n  !8|}| 4  38�j~
�j 
crow~ m  67�i�i } n  !3� 4  .3�h�
�h 
outl� m  12�g�g � n  !.��� 4  ).�f�
�f 
scra� m  ,-�e�e � 4  !)�d�
�d 
cwin� m  %(�� ���  D o i t . i m�k  �m  U R      �c�b�a
�c .ascrerr ****      � ****�b  �a  �{  S ��� l FF�`���`  �   click New Task button   � ��� ,   c l i c k   N e w   T a s k   b u t t o n� ��� I FY�_��^
�_ .prcsclicuiel    ��� uiel� n  FU��� 4  NU�]�
�] 
butT� m  QT�\�\ � 4  FN�[�
�[ 
cwin� m  JM�� ���  D o i t . i m�^  � ��� l ZZ�Z�Y�X�Z  �Y  �X  � ��� l ZZ�W���W  � !  Click Show Schedule button   � ��� 6   C l i c k   S h o w   S c h e d u l e   b u t t o n� ��� I Zi�V��U
�V .prcsclicuiel    ��� uiel� n  Ze��� 4  `e�T�
�T 
butT� m  cd�S�S � 4  Z`�R�
�R 
cwin� m  ^_�Q�Q �U  � ��� l jj�P���P  �   set values   � ���    s e t   v a l u e s� ��� l j���� r  j��� o  jm�O�O 0 thetasktitle theTaskTitle� n      ��� 1  z~�N
�N 
valL� n  mz��� 4  sz�M�
�M 
txtf� m  vy�L�L � 4  ms�K�
�K 
cwin� m  qr�J�J �  Title   � ��� 
 T i t l e� ��� r  ����� o  ���I�I 0 thetxtcontent theTxtContent� n      ��� 1  ���H
�H 
valL� n  ����� 4  ���G�
�G 
txta� m  ���F�F � n  ����� 4  ���E�
�E 
scra� m  ���D�D � 4  ���C�
�C 
cwin� m  ���B�B � ��� r  ����� o  ���A�A 0 
theproject 
theProject� n      ��� 1  ���@
�@ 
valL� n  ����� 4  ���?�
�? 
txtf� m  ���>�> � 4  ���=�
�= 
cwin� m  ���<�< � ��� r  ����� o  ���;�; 0 
thecontext 
theContext� n      ��� 1  ���:
�: 
valL� n  ����� 4  ���9�
�9 
txtf� m  ���8�8 � 4  ���7�
�7 
cwin� m  ���6�6 � ��� r  ����� o  ���5�5 0 thetag theTag� n      ��� 1  ���4
�4 
valL� n  ����� 4  ���3�
�3 
txtf� m  ���2�2 � 4  ���1�
�1 
cwin� m  ���0�0 � ��� l ���/�.�-�/  �.  �-  � ��� Z  �����,�+� l ����*�)� > ����� o  ���(�( 0 ptyautosave ptyAutoSave� m  ���'�'  �*  �)  � I ���&��%
�& .prcsclicuiel    ��� uiel� n  ����� 4  ���$�
�$ 
butT� m  ���#�# � 4  ���"�
�" 
cwin� m  ���!�! �%  �,  �+  � ��� l ��� ���   �  �  � ��� l ������  �  �  �   4  ����
� 
pcap� o  ���� ,0 currentdoitimprocess currentDoItIMProcess m  �����                                                                                  sevs  alis    �  	OSX MLion                  ̺ H+     NSystem Events.app                                               5��^Q�        ����  	                CoreServices    ̺�      �^5�       N   H   G  :OSX MLion:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p   	 O S X   M L i o n  -System/Library/CoreServices/System Events.app   / ��  	 ��� l ������  �  �  � ��� l ������  �  �  � ��� l ������  �  �  � ��� l ������  �  �  �  �/ 0 
themessage 
theMessage� o  �
�
 $0 selectedmessages selectedMessages�0  \ m   � ����                                                                                  emal  alis    <  	OSX MLion                  ̺ H+     kMail.app                                                        Z�̌�        ����  	                Applications    ̺�      ̋��       k   OSX MLion:Applications: Mail.app    M a i l . a p p   	 O S X   M L i o n  Applications/Mail.app   / ��  �p  �o  Y ��� l     �	���	  �  �  � � � i     I      ��� 0 appisrunning appIsRunning � o      �� 0 appname appName�  �   O     E     l   		��	 n    	

 1    	� 
�  
pnam 2   ��
�� 
prcs�  �   o   	 
���� 0 appname appName m     �                                                                                  sevs  alis    �  	OSX MLion                  ̺ H+     NSystem Events.app                                               5��^Q�        ����  	                CoreServices    ̺�      �^5�       N   H   G  :OSX MLion:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p   	 O S X   M L i o n  -System/Library/CoreServices/System Events.app   / ��     l     ��������  ��  ��    i    " I      ������ 0 
urlencoder 
urlEncoder �� o      ���� 0 str  ��  ��   k     !  q       ������ 0 str  ��    Q      L     l   ���� I   �� ��
�� .sysoexecTEXT���     TEXT  b    
!"! b    #$# m    %% �&&  / b i n / e c h o  $ n    '(' 1    ��
�� 
strq( o    ���� 0 str  " m    	)) �** b   |   p e r l   - M U R I : : E s c a p e   - l n e   ' p r i n t   u r i _ e s c a p e ( $ _ ) '��  ��  ��   R      ��+,
�� .ascrerr ****      � ****+ o      ���� 0 emsg eMsg, ��-��
�� 
errn- o      ���� 0 enum eNum��   R    ��./
�� .ascrerr ****      � ****. b    010 m    22 �33 " C a n ' t   u r l E n c o d e :  1 o    ���� 0 emsg eMsg/ ��4��
�� 
errn4 o    ���� 0 enum eNum��   5��5 l     ��������  ��  ��  ��   676 l     ��������  ��  ��  7 8��8 l     ��������  ��  ��  ��       ��9���� > J V��������:;<��  9 ��������������������������  0 ptytruncatemsg ptyTruncateMsg�� 0 ptyautosave ptyAutoSave�� 0 ptydefaulttag ptyDefaultTag�� &0 ptydefaultcontext ptyDefaultContext�� &0 ptydefaultproject ptyDefaultProject�� &0 ptyincludecorresp ptyIncludeCorresp�� (0 ptystartdateoffset ptyStartDateOffset�� $0 ptyduedateoffset ptyDueDateOffset�� 0 ptydueskipwe ptyDueSkipWE�� 0 appisrunning appIsRunning�� 0 
urlencoder 
urlEncoder
�� .aevtoappnull  �   � ****��  ��  �� ������ �� : ������=>���� 0 appisrunning appIsRunning�� ��?�� ?  ���� 0 appname appName��  = ���� 0 appname appName> ����
�� 
prcs
�� 
pnam�� � 	*�-�,�U; ������@A���� 0 
urlencoder 
urlEncoder�� ��B�� B  ���� 0 str  ��  @ �������� 0 str  �� 0 emsg eMsg�� 0 enum eNumA %��)����C��2
�� 
strq
�� .sysoexecTEXT���     TEXT�� 0 emsg eMsgC ������
�� 
errn�� 0 enum eNum��  
�� 
errn�� " ��,%�%j W X  )�l�%OP< ��D����EF��
�� .aevtoappnull  �   � ****D k    �GG  �HH X����  ��  ��  E ���� 0 
themessage 
theMessageF zU����	��������"���� ��,��8��E��G��M����S�������������������������������������������������������l����~�}�|�{�z�y�x��w���v��u�t�s�r�q�p�o�n�m�l�k�j�i�h��g���f�e�d�c��b�a�`$�_�^�]8DFLx�\�[�Z�Y���X�W�V�U�T
�� 
uien
�� .sysobeepnull��� ��� long
�� 
ret 
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
bhit
�� .miscactvnull��� ��� null
�� 
xppb
�� 
xpcp�� ,0 currentdoitimprocess currentDoItIMProcess�� 0 appisrunning appIsRunning
�� 
lnfd
�� 
btns
�� 
dflt�� 
�� 
slct�� $0 selectedmessages selectedMessages
�� .corecnte****       ****�� 0 msgcount msgCount
�� 
bool
�� 
kocl
�� 
cobj
�� 
subj�� 0 
thesubject 
theSubject
�� 
alhe�� 0 	theheader 	theHeader
�� 
sndr
�� .emaleafnnull���     ctxt�� 0 thesendername theSenderName��  ��  
�� .emaleauanull���     ctxt
�� 
trcp
�� 
pnam�� 0 thedestname theDestName
�� 
msng
�� 
radd
�� 
crcp�� 0 
themsgdate 
theMsgDate
�� 
rdrc� 0 thename theName
�~ 
drcv
�} 
ctnt
�| 
ctxt�{ 0 thetxtcontent theTxtContent
�z 
meid
�y 
TEXT�x 0 theid theID�w 0 thetasktitle theTaskTitle
�v 
leng�u 0 
urlencoder 
urlEncoder�t "0 theurlencodedid theURLEncodedID�s 0 thecustomlink theCustomLink
�r .misccurdldt    ��� null
�q 
days�p 0 thestartdate theStartDate�o���n 0 
theduedate 
theDueDate
�m 
wkdy
�l 
sat 
�k 
sun 
�j 
ascr
�i 
txdl�h 0 prevtids prevTIDs
�g 
citm�f 0 thetag theTag�e 0 
thecontext 
theContext�d �c 0 
theproject 
theProject
�b 
capp
�a 
pcap
�` 
cwin
�_ .coredoexbool       obj 
�^ 
pisf
�] 
butT
�\ 
scra
�[ 
outl
�Z 
crow
�Y .miscslctuiel       uiel�X 
�W .prcsclicuiel    ��� uiel
�V 
txtf
�U 
valL
�T 
txta���� *�,f  9*j O��%�%�%j O��,�  � *j O*��/*�,FUY hOhY hO�E` O)a k+  %a _ %a %a a kva ka  OhY 	a E` UOa v*a ,E` O_ j E` O_ k %a  _ %a !%a a "kva ka  OhY <_ k	 b  j a #& %a $_ %a %%a a &kva ka  OhY hO�_ [a 'a (l kh  �a ),E` *O�a +,E` ,O �a -,j .E` /W X 0 1�a -,j 2E` /O ,�a 3,a (k/a 4,E` 5O_ 5a 6  	)jhY hOPW {X 0 1 *�a 3,a (k/a 7,E` 5O_ 5a 6  	)jhY hW KX 0 1 *�a 8,a (k/a 4,E` 5O_ 5a 6  	)jhY hW X 0 1�a 8,a (k/a 7,E` 5OPOa 6E` 9O_ ,a : �a ;,E` 9O_ /E` <Y �a =,E` 9O_ 5E` <O�a >,a ?&E` @O�a A,a B&E` COb  k  _ <a D%_ *%E` EOPY )b  l  _ *a F%_ <%a G%E` EY 	_ *E` EOb   j	 _ @a H,b   a #&  _ @[a ?\[Zk\Zb   2a I%E` @Y hO)_ Ck+ JE` KOa L_ K%a M%E` NOb  i *j Ob  _ P E` QY b  a R  _ 9E` QY 	a 6E` QOa 6E` SOb  i *j Ob  _ P E` SY hOb  k 	 _ Sa 6a #& B_ Sa T,a U  _ Sl_ P E` SY !_ Sa T,a V  _ Sk_ P E` SY hY hOb  l L_ Wa X,E` YOa Z_ Wa X,FO_ <a [-E` <Oa \_ Wa X,FOa ]_ <%E` <O_ Y_ Wa X,FY hOb  m  _ <E` ^Y b  E` ^Ob  a   _ <E` _Y b  E` _Ob  a `  _ <E` aY b  E` aO_ Na b _ N_ %_ %_ @%_ %E` @Y hO*a c_ /j O�Y*a d_ /M*a ea f/j g e*a h,FY hO*a ek/a ia j/j g 'a k_ %a l%a a mkva ka  OhOPY hO >*a ea n/a ok/a pk/a qa `/j rO*a ea s/a ok/a pk/a ql/j rW X 0 1hO*a ea t/a ia u/j vO*a ek/a im/j vO_ E*a ek/a wa `/a x,FO_ @*a ek/a ok/a yk/a x,FO_ a*a ek/a wm/a x,FO_ _*a ek/a wk/a x,FO_ ^*a ek/a wl/a x,FOb  j *a ek/a il/j vY hOPUUOP[OY�Uascr  ��ޭ