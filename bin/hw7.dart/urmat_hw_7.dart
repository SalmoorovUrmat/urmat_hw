
import 'device.dart';
import 'smartlamp.dart';
import 'SmartSpeaker.dart';
import 'SmartThermostat.dart';
import 'Adjustable.dart';
import 'BatteryPowered.dart';

void main() {
 
  List<Device> myDevice = [
    SmartLamp(20, 'test1'),
    SmartSpeaker (50,'test'),
    Smartthermostat(69, "test3"),
    SmartLamp(24, 'test4'),
    SmartSpeaker( 76, 'test5'),
  ];
  
  for (var device in myDevice) {
    device.showInfo();
    device.turnOn();
    if (device is Adjustable) {
    }
    if (device is BatteryPowered) {
      device.showInfo();
    }
  }
  final lamp = SmartLamp(67, 'test7');
  final speaker = SmartSpeaker(45, 'test6');
  final thermostat = Smartthermostat(87, "test8");
  lamp.turnOn();
  lamp.increase();
  lamp.decrease();
  lamp.decrease();
  lamp.showInfo();
  speaker.turnOn();
  speaker.increase();
  speaker.increase();
  speaker.showInfo();
  thermostat.turnOn();
  thermostat.showInfo();
  lamp.turnOff();
  speaker.turnOff();
  thermostat.turnOff();
}