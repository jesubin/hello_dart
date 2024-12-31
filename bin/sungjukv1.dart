import 'dart:io';

void main() {
  print('이름은?');
  String? name = stdin.readLineSync();

  print('국어는?');
  int? kor = int.tryParse(stdin.readLineSync() ??'');
  if (kor == null || kor < 0 || kor >100){
    print('올바른 점수를 입력하세요');
    return;
  }

  print('영어는?');
  int? eng = int.tryParse(stdin.readLineSync() ?? '');
  if (eng == null || eng < 0 || eng >100){
    print('올바른 점수를 입력하세요');
    return;
  }

  print('수학은?');
  int? mat = int.tryParse(stdin.readLineSync() ?? '');
  if (mat == null || mat < 0 || mat >100){
    print('올바른 점수를 입력하세요');
    return;
  }

  int tot = kor+eng+mat;
  double avg = tot / 3;
  String grd ='가';
  if (avg >= 90){
    grd ='수';
  } else if (avg >= 80){
    grd='우';
  } else if (avg >= 70){
    grd='미';
  } else if (avg >= 60){
    grd ='양';
  }

  print('$name $kor $eng $mat');
  print ('$tot $avg $grd');
}
