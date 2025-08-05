import 'FullName.dart';
import 'StudenEvent.dart';
import 'Student.dart';
void main() {
   UnderGraduate underGraduate = UnderGraduate("Noura", "UG101", 88.0, 4);
   PostGraduate postGraduate = PostGraduate("Mariam", "Bfs4654", 66.0, 5);
      underGraduate.CalcGpa();
      underGraduate.printInfo();
      postGraduate.CalcGpa();
      postGraduate.printInfo();
print("the total Gpa : ${postGraduate.gpa}");
print("the total Gpa : ${underGraduate.gpa}");

 }

