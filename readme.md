This is a project for rpi SDD.

![image](https://user-images.githubusercontent.com/34008334/52890943-88495800-3155-11e9-9df5-48da2c4a5b33.png)

To work on this project:
	0. download this skeleton project 
	1. ask h-h-r for GoogleService-Info.plist and drag it into Xcode navigation bar next to Info.plist
	2. Open terminal in the project folder 
		-> type 'pod init' to generate Podfile 
		-> open Podefile, 
		-> add:   pod 'Firebase/Core'
			  pod 'Firebase/Auth'
 			  pod 'Firebase/Database'
 			  pod 'SVProgressHUD'
			below   # Pods for goSki       and close Podfile
		-> type pod install. When installation succeeds,  open goSki.xcworkspace and you're good to go
		-> try to build project, if xcode complains about: no such modual 'Firebase'   type   pod update    and hit 			enter in the terminal; wait till you see "Pod installation complete!"
