class Student {
  String _name;
  int _kor;
  int _eng;
  int _mat;

  Student(this._name, this._kor, this._eng, this._mat);

  String get name => _name;
  int get kor => _kor;
  int get eng => _eng;
  int get mat => _mat;

  set name(String name) => _name = name;
  set kor(int kor) => _kor = kor;
  set eng(int eng) => _eng = eng;
  set mat(int mat) => _mat = mat;

  void printSungJuk(){
    print('$_name $_kor $_eng $_mat');
  }
}

void main() {
  Student std01 = new Student('혜교', 99, 98, 99);
  std01.printSungJuk();
  print(std01.name);
}
