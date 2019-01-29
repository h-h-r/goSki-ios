This is a project for rpi SDD.

To work on this project:
	0. download this skeleton project 
	1. ask h-h-r for GoogleService-Info.plist and drag it into Xcode navigation bar next to Info.plist
	2. Open terminal in the project folder 
		-> type 'pod init' to generate Podfile 
		-> open Podefile, 
		-> add:   pod 'Firebase/Core'   below     # Pods for goSki  and close Podfile
		-> type pod install. When installation succeeds, open goSki.xcworkspace and you're good to go