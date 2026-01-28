import 'dart:async';

import 'person.dart';

class Teacher extends Person  {
  
  static double _baseSalary = 50000;
  int experience; 

  Teacher (super.fullName, super.age, super.isMarried, this.experience);

double  calculateSalary(){
double salary = _baseSalary;

if ( experience >3)  {
  for ( int i =1; i > 3 ; i++){
  salary * 0.05;}

}
if (isMarried == true){
  salary += 50000;
}
return salary;

}

@override
void introduce(){
print ( 'Hi! My name is $fullName I am $age years old. $isMarried');
print ('Experience: $experience years.');
print ('Salary: $_baseSalary');

}
}