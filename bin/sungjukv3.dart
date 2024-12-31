
import 'dart:ffi';
import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:hello_dart2/Student.dart';
import 'package:sqlite3/sqlite3.dart';

void main() {
  Student std01 = Student(name:'혜교',kor: 99, eng:98, mat:99);
  print(std01);

  final projectDir = Directory.current.path;
  final dllPath = path.join(projectDir, 'lib\\sqlite3.dll');
  final dbPath = path.join(projectDir, 'lib\\sungjuk.db');

  DynamicLibrary.open(dllPath);

  print('Using sqlite3 ${sqlite3.version}');

  try {
    final db = sqlite3.open(dbPath);

    db.execute('''
      CREATE TABLE IF NOT EXISTS sungjuk (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          name TEXT,
          kor INTEGER,
          eng INTEGER,
          mat INTEGER,
          tot INTEGER,
          avg DOUBLE,
          grd TEXT
         )
    ''');

    var sql ='insert into sungjuk (name,kor,eng,mat,tot,avg,grd) values(?,?,?,?, ?,?,?)';
    var stmt = db.prepare(sql);
    stmt.execute([std01.name, std01.kor, std01.eng, std01.mat, std01.tot, std01.avg, std01.grd]);
    stmt.dispose();
    print('성적 데이터 저장 성공');

    sql = 'select id, name, kor, eng, mat from sungjuk';
    final ResultSet rs = db.select(sql);
    for (final Row row in rs) {
      print('${row['name']} ${row['kor']} ${row['eng']} ${row['mat']}');
    }

    db.dispose();
  } catch (e, stackTrace){
    print('오류 발생 : $e');
    print('오류 추적 : $stackTrace');
  }

}
