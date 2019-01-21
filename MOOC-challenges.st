"Challenge 4 - works in Pharo 5 only!!!" 
|jpegForm pasteMorpth scrollPane|
jpegForm := ZnEasy getJpeg: 'http://i.imgur.com/OssbQN3.jpeg'.
jpegForm lock.

pasteMorpth := PasteUpMorph new 
	extent: (jpegForm width @ jpegForm height);
	backgroundMorph: (AlphaImageMorph withForm: jpegForm).

scrollPane := ScrollPane new.
scrollPane scroller: pasteMorpth.
scrollPane openInWindow
