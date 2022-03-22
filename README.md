# reading-room

A better way to read books for those times when the real world is too distracting.


## Developer Access on Android

To run on Android you need to do a bunch of things to get your phone setup as a developer and to generate creds. Best to just google the current best way to do this in the future.
https://docs.godotengine.org/en/stable/tutorials/export/exporting_for_android.html

```
cd ~/Downloads/cmdline-tools/bin
./sdkmanager --sdk_root=/Users/edromano/Downloads/cmdline-tools/ "platform-tools"...blah blah blah
# Install OpenJDK 11
mkdir ~/.android
cd ~/.android
keytool -keyalg RSA -genkeypair -alias androiddebugkey -keypass android -keystore...blah blah blah
```

## Setting up keystore for Android within Godot:

Editor > Editor Settings... > Export > Android

Android Sdk Path: /Users/[my_name]/Library/Android/sdk

Debug Keystore: /Users/[username]/.android/debug.keystore

Project > Export > Add... > Android

Release: /Users/[username]/.android/debug.keystore

Release User: The one you set when creating the keystore (ex: androiddebugkey)

Release Password: Same (ex: android)

Unique Name: Probably best to customize this like org.my_org.$genname

Warning/Error about "templates missing": Click the link to have Godot download them for you

Then just close. No need to actually export at first. USB debugging to phone should pop up an Android icon in the upper right corner of Godot when a phone is connect.

https://docs.godotengine.org/en/stable/tutorials/export/one-click_deploy.html

## Live updates of changes to Android

Debug > Deploy with Remote Debug

## Google Cardboard Button Press

Project > Project Settings… > Input Map

Add a new input with a unique name

Click the + next to it and set it as Mouse Button > All Devices and Left Button

Now you can add a _input() that listens for something like Input.is_action_just_pressed("click")
