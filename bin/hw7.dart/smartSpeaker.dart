import 'Adjustable.dart';
import 'device.dart';
import 'BatteryPowered.dart';

class SmartSpeaker extends Device with BatteryPowered implements Adjustable {
int volume = 60;

SmartSpeaker (this.volume, super.name);

@override
turnOn()  {
  print("Speaker $name is ON");}

@override
turnOff() {

print("Speaker $name is OFF");}

@override
increase() {
   volume += 5;}

@override
decrease() {
  volume  -= 5;}

@override
showInfo() {
  print('$name, $volume%');
}




}