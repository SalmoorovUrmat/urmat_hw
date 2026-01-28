  enum Subject { math, physics, english }
  
  class Person {
    String fullName;
    int age;
    bool isMarried ;
  


Person(this.fullName, this.age, this.isMarried);

//get fullName {
  //return fullName;
//}
//get age {
 // return age;
//}
//get isMarried{
  //return isMarried;
//}

void introduce() {
   String Status = isMarried ? 'Yes' : 'No';
  print('Hi! My name is $fullName. I am $age years old. Married: $Status.');
}


void displayInfo (){
  print('$fullName');
  print('$age');
  print('$isMarried');
}
  }

  