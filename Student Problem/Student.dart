class Student {
  String? registerationName;
  String? fullName;
  double? marks;

  Student(this.fullName, this.registerationName, this.marks);

  void setregisterationName(String val) {
    registerationName = val;
  }

  void setfullName(String val) {
    fullName = val;
  }

  void setMarks(double val) {
    marks = val;
  }

  String? getregisterationName() {
    return registerationName;
  }

  String? getfullName() {
    return fullName;
  }

  double? getmarks() {
    return marks;
  }
}

class UnderGraduate extends Student {
  double? gpa;
  double? points;
  int? numofcourses;

  UnderGraduate(super.fullName, super.registerationName, super.marks, this.numofcourses);

  void CalcGpa() {
    double? mark = getmarks();
    if (mark! >= 95 && mark <= 100) {
      points = 12.0;
    } else if (mark >= 90 && mark < 95) {
      points = 11.5;
    } else if (mark >= 85 && mark < 90) {
      points = 11;
    } else if (mark >= 80 && mark < 85) {
      points = 10;
    } else if (mark >= 75 && mark < 80) {
      points = 9;
    } else if (mark >= 70 && mark < 75) {
      points = 8;
    } else if (mark >= 65 && mark < 70) {
      points = 7;
    } else if (mark >= 60 && mark < 65) {
      points = 6;
    } else if (mark >= 56 && mark < 60) {
      points = 5;
    } else if (mark >= 53 && mark < 56) {
      points = 4;
    } else if (mark >= 50 && mark < 53) {
      points = 3;
    } else if (mark < 50) {
      points = 0;
    }

    gpa = points! / (numofcourses! * 3);
    print(gpa);
  }

  void printInfo() {
    print("Student NAME: $fullName");
    print("Student Registration Name: $registerationName");
    print("Student Marks: $marks");
    print("Student GPA: $gpa");
  }
}

class PostGraduate extends Student {
  double? gpa;
  double? points;
  int? numofcourses;

  PostGraduate(super.fullName, super.registerationName, super.marks, this.numofcourses);

  void CalcGpa() {
    double? mark = getmarks();
    if (mark! >= 90 && mark <= 100) {
      points = 12.0;
    } else if (mark >= 85 && mark < 90) {
      points = 10.6;
    } else if (mark >= 80 && mark < 85) {
      points = 10.3;
    } else if (mark >= 75 && mark < 80) {
      points = 10;
    } else if (mark >= 70 && mark < 75) {
      points = 7.33;
    } else if (mark >= 65 && mark < 70) {
      points = 7;
    } else if (mark >= 60 && mark < 65) {
      points = 6;
    } else if (mark < 50) {
      points = 0;
    }

    gpa = points! / (numofcourses! * 3);
    print(gpa);
  }

  void printInfo() {
    print("Student NAME: $fullName");
    print("Student Registration Name: $registerationName");
    print("Student Marks: $marks");
    print("Student GPA: $gpa");
  }
}
