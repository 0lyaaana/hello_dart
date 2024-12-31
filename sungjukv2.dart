// 성적 처리 프로그램 v2
// 이름, 국어, 영어, 수학을 입력 받아 총점, 평균, 학점(수우미양가)을 구하고 출력
// sqlite에 처리한 성적 데이터 저장

class Student {

  // 필드(멤버 변수) _ : private
  String _name;
  int _kor;
  int _eng;
  int _mat;

  // 생성자
  Student(this._name, this._kor, this._eng, this._mat);

  //getter & setter
  String get name => _name;
  int get kor => _kor;
  int get eng => _eng;
  int get mat => _mat;

  set name(String name) => _name = name;
  set kor(int kor) => _kor = kor;
  set eng(int eng) => _eng = eng;
  set mat(int mat) => _mat = mat;

  // 학생 정보 출력 메서드
  void printSungJuk(){
    print('$_name $_kor $_eng $_mat');
  }

}

void main(){
  Student std01 = new Student('나연', 99, 98, 99);
  std01.printSungJuk();
  print(std01.name);
}