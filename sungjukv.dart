import 'dart:io';

// 성적 처리 프로그램 v1
// 이름, 국어, 영어, 수학을 입력 받아 총점, 평균, 학점(수우미양가)을 구하고 출력
void main() {

  // 성적 데이터 입력
  print('your name?');
  String? name = stdin.readLineSync();

  print('korean?');
  int? kor = int.tryParse(stdin.readLineSync() ?? '');
  if (kor == null || kor < 0 || kor > 100) {
    print("올바른 점수 입력 바람.");
    return;
  }

  print('english?');
  int? eng = int.tryParse(stdin.readLineSync() ?? '');
  if (eng == null || eng < 0 || eng > 100) {
    print("올바른 점수 입력 바람.");
    return;
  }
  print('math?');
  int? math = int.tryParse(stdin.readLineSync() ?? '');
  if (math == null || math < 0 || math > 100) {
    print("올바른 점수 입력 바람.");
    return;
  }

  // 성적 데이터 처리
  int tot = kor + eng + math;

  double avg = (tot / 3);

  String grd = '가';

  if (avg >= 90) {
    grd = '수';
  } else if (avg >= 80) {
    grd = '우';
  } else if (avg >= 70) {
    grd = '미';
  } else if (avg >= 60) {
    grd = '양';
  }

  // 성적 처리 결과 출력
  print('$name $kor $eng $math');
  print('$tot $avg $grd');
}