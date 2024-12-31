
// 불변 객체를 생성하기 위한 데이터 모델
class Student {
  final String name;
  final int kor;
  final int eng;
  final int mat;

  // 중괄호 사용하여 named 매개변수를 정의할 수 있음
  // required : 해당 매개변수는 필수로 제공되어야 함을 의미
 // Student(this.name, this.kor, this.eng, this.mat);
  Student({required this.name, required this.kor, required this.eng, required this.mat});

  int get tot => kor + eng + mat;
  double get avg => tot / 3;
  String get grd {
    String grd ='가';
    if (avg >= 90) grd ='수';
    else if (avg >= 80) grd ='우';
    else if (avg >= 70) grd ='미';
    else if (avg >= 60) grd ='양';
    return grd;
  }
 @override
  String toString() {
    String result ='$name $kor $eng $mat \n';
    result += '$tot ${avg.toStringAsFixed(1)} $grd';
    return result;
  }
}