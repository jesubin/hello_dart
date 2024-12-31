import 'package:hello_dart2/hello_dart2.dart' as hello_dart2;

// 다트 프로그램
void main(List<String> arguments) {
  // 변수 선언 1 - var (타입추론 - 동적자료형 선언)
  var name = '홍길동';
  var age = 123;

  print('$name, $age'); // 문자열 템플릿

  // 변수 선언 2 - (정적 타입)
  String name2 = '홍길동';
  int age2 = 123;

  print('$name2, $age2');

  // 변수 선언3 - 동적타입 변수
  // name = 123; // 일단 타입 추론되어 자료형이 결정되면 나중에 변경 불가
  dynamic name3 ='홍길동';
  name3 = 123;

  // 복합 자료형
  // 리스트 - 순서가 있는 데이터 저장시 사용, 중복 허용
  List<String> names =['혜교', '지현','수지'];
  print(names);

  // 맵 - 키, 값의 쌍으로 데이터 저장, 키를 통해 빠른 검색이 목적
  Map<String, int> scores ={
    '혜교' : 99, '지현':88, '수지': 77
  };
  print("$scores, $scores['혜교']");
  print(scores.keys);

  // null 연산자
  // ? : 변수에 null 허용여부를 명시적으로 선언
  // int score;
  // print(score);
  int? score;
  print(score);

  // ?? : 변수가 null일때 기본값 제공
  int? jumsu;
  int result = jumsu ?? 50;
  print(result);

  // ?. : null-aware 접근연산자
  Person? person;

  person?.sayHello(); // person이 null이므로 아무것도 수행되지 않음

  person = new Person();
  person.name= '혜교';
  person?.sayHello();
}


class Person{
  String? name;
  void sayHello() => print('Hello, $name');
}