import 'device.dart';
import 'batteryPowered.dart';
import 'adjustable.dart';

class  SmartLamp extends Device  with BatteryPowered implements Adjustable {
 int brightness = 20; 
SmartLamp (this.brightness, super.name, );

@override
turnOn()  {
  print("Lamp $name is ON");}

@override
turnOff() {
print ("Lamp $name is OFF");
}

@override
increase() {  
  print (brightness +10 ); 
  }

@override
decrease() {
  print (brightness -10);
}

@override
showInfo() {
  print('$name, $brightness');
}


}

