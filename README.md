# IR Controller

Custom Hex Code trigger using IR Blaser.

## Version 1.0

## Description

IR Controller Flutter App makes it easy to control IR devices.
Just get the IR remote code and feel free to modify the app with more remotes.
Easy to use and simple UI.
For Android Only, Doesn't support IOS in current time.

## Getting Started

install Flutter SDK, any IDE such as Android Studio and any Android Emulator or use physical Device.
make sure to use the following command in terminal 'flutter pub get' before run the app.

## For Devolopper Only

IR Controller was built based on a custom ir code query with help of Arduino.

Steps :

```
1- Get Arduino Uno R3 or nano and 3 Pin IR Receiver.
2- Install Arduino IDE.
3- Download and Install [IR lib2](https://github.com/cyborg5/IRLib2) Library.
4- Use rawRecv.ino example.
5- Signal Pin of the IR Receiver to Pin 2.
6- Point the remote for which you wish to add in the app to the IR Receiver and starting push the required buttons and the code will show in the arduino monitor as list of integers.
7- Add the code to a file such as in app 'models' folder
8- Modify the app to add more IR remote fully customized.
```

## Project status
Stable

## License

For non commercial use only.
