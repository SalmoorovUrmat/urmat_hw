import 'person.dart';
import 'student.dart';
import 'teacher.dart';
void main(){

Person women = Person('Alice Johnson', 30, true);

women.introduce();

Student men = Student("Anna", 30, true);
men.showMarks();

Teacher Sasha = Teacher('Sasha', 40, true, 4);
Sasha.introduce();


Student Lola = Student('lola', 22, false);
Lola.introduce();
Lola.showMarks();

Student katya = Student('Katya', 24, false);
katya.introduce();
katya.showMarks();




}
