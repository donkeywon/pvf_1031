f u n c t i o n   M o v e C o m m a n d . B i n d C o m m a n d s ( )  
 	 - - p r i n t ( " B i n d C o m m a n d s " ) ;  
 e n d  
  
 f u n c t i o n   M o v e C o m m a n d . E n t e r ( ) 	  
 	  
 e n d  
  
 f u n c t i o n   M o v e C o m m a n d . S e t S t a t e ( s t a t e )  
  
 e n d  
  
 f u n c t i o n   M o v e C o m m a n d . P r o c ( ) 	  
 	 t a r g e t O b j I n f o   =   A I B r i d g e : g e t O b j e c t I n f o ( E n e m y I n f o . t a r g e t O b j e c t I D ) ;  
 	 m y O b j I n f o   =   M y I n f o . O b j e c t I n f o ;  
 	 x D i s t a n c e   =   m a t h . a b s ( t a r g e t O b j I n f o . x P o s   -   m y O b j I n f o . x P o s ) ;  
 	 y D i s t a n c e   =   m a t h . a b s ( t a r g e t O b j I n f o . y P o s   -   m y O b j I n f o . y P o s ) ;  
 	  
 	 R a n g e C o r r e c t i o n X   =   C o m m o n : i s P r o p e r D i s t a n c e X B y S p e c i a l M o n s t e r ( t a r g e t O b j I n f o . i n d e x ) ;  
 	 R a n g e C o r r e c t i o n Y   =   C o m m o n : i s P r o p e r D i s t a n c e Y B y S p e c i a l M o n s t e r ( t a r g e t O b j I n f o . i n d e x ) ;  
 	  
 	 C o m m o n : s e t D e s t i n a t i o n S e l e c t _ K e e p D i s t a n c e ( 2 0 0 ,   0 ) ;  
 	  
 	 - -   ���o8p 
 	 i f   1 5 0   <   x D i s t a n c e   a n d   x D i s t a n c e   <   2 3 0   +   R a n g e C o r r e c t i o n X   a n d   y D i s t a n c e   <   4 0   +   R a n g e C o r r e c t i o n Y   t h e n  
 	 	 i f   B a t t l e : i s S k i l l C o o l t i m e ( 3 )   = =   f a l s e   t h e n  
 	 	 	 A I B r i d g e : l o o k T a r g e t ( ) ;  
 	 	 	 I d l e : s e t A c t i o n ( 3 ) ;  
 	 	 	 r e t u r n ;  
 	 	 e n d  
 	 e n d  
 	  
 	 - -   ���tZS 
 	 i f   1 5 0   <   x D i s t a n c e   a n d   x D i s t a n c e   <   2 3 0   +   R a n g e C o r r e c t i o n X   a n d   y D i s t a n c e   <   4 0   +   R a n g e C o r r e c t i o n Y   t h e n  
 	 	 i f   B a t t l e : i s S k i l l C o o l t i m e ( 2 )   = =   f a l s e   t h e n  
 	 	 	 A I B r i d g e : l o o k T a r g e t ( ) ;  
 	 	 	 I d l e : s e t A c t i o n ( 2 ) ;  
 	 	 	 r e t u r n ;  
 	 	 e n d  
 	 e n d  
 	  
 	 - -   2   
 	 i f   x D i s t a n c e   <   1 3 0   +   R a n g e C o r r e c t i o n X   a n d   y D i s t a n c e   <   4 0   +   R a n g e C o r r e c t i o n Y   t h e n  
 	 	 i f   B a t t l e : i s S k i l l C o o l t i m e ( 1 )   = =   f a l s e   t h e n  
 	 	 	 A I B r i d g e : l o o k T a r g e t ( ) ;  
 	 	 	 I d l e : s e t A c t i o n ( 1 ) ;  
 	 	 	 r e t u r n ;  
 	 	 e n d  
 	 e n d  
 	  
 	 - -   1   
 	 i f   x D i s t a n c e   <   9 0   +   R a n g e C o r r e c t i o n X   a n d   y D i s t a n c e   <   4 0   +   R a n g e C o r r e c t i o n Y   t h e n  
 	 	 i f   B a t t l e : i s S k i l l C o o l t i m e ( 0 )   = =   f a l s e   t h e n  
 	 	 	 A I B r i d g e : l o o k T a r g e t ( ) ;  
 	 	 	 I d l e : s e t A c t i o n ( 0 ) ;  
 	 	 	 r e t u r n ;  
 	 	 e n d  
 	 e n d  
 e n d  
  
 f u n c t i o n   M o v e C o m m a n d . P r o c D a m a g e _ D o w n ( )  
 	  
 e n d  
  
 f u n c t i o n   M o v e C o m m a n d . E x i t ( )  
 e n d  
  
 f u n c t i o n   M o v e C o m m a n d . O n W a r n i n g A r e a ( b E n t e r )  
 e n d