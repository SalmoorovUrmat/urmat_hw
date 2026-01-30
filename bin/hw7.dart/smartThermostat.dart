import 'device.dart';


class Smartthermostat  extends Device  {

int temperature = 22;


Smartthermostat (this.temperature, super.name);

@override
turnOn()  {
  print("Termostat $name is ON");}

@override
turnOff() {
print ("Termostat $name is OFF");}

@override
showInfo() {
  print('$name, $temperature');
}



}