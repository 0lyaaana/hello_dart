// 불변 객체를 생성하기 위한 데이터 모델
class Student {

  // 필드(멤버 변수) _ : private
  // final : 변수의 값을 한 번 설정하면 변경할 수 없음
  // 데이터 무결성을 유지하기 위해 적용
  final String name;
  final int kor;
  final int eng;
  final int mat;

  // 생성자
  // 중괄호 {}를 사용해서 named 매개 변수를 정의할 수 있음
  // required : 해당 매개 변수는 필수로 제공되어야 함을 의미
  // Student(this.name, this.kor, this.eng, this.mat);
  Student({required this.name, required this.kor, required this.eng, required this.mat});

  //getter & setter
  int get tot => kor + eng + mat;
  double get avg => tot / 3;
  String get grd {
    String grd = 'E';
    if (avg >= 90) {grd = 'A';}
    else if (avg >= 80) {grd = 'B';}
    else if (avg >= 70) {grd = 'C';}
    else if (avg >= 60) {grd = 'D';}
    return grd;
  }

  // 학생 정보 출력 메서드
  @override
  String toString(){
    String result = '$name $kor $eng $mat \n';
    result += '$tot ${avg.toStringAsFixed(2)} $grd';
    return result;
  }
}