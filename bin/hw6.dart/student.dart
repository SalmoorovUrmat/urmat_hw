import 'person.dart';

class Student extends Person {
  Map<String, double> studentMarks ={
    'math' : 90.0,
    'physics' : 85.0,
    'english' : 92.0,
  };
  void showMarks(){
  print('Student: $fullName');
  print(studentMarks);

} 

  Student(super.fullName, super.age, super.isMarried);
  


 }