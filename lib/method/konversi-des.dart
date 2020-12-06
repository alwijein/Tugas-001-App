import 'dart:math' show pow;

int konversiDes(int bin) {
  // double sisa;
  // double hasil;
  // hasil = 0.0;
  // int pangkat = 0;
  // while (bin >= 1) {
  //   sisa = bin % 2;
  //   hasil += sisa * pow(2, pangkat);
  //   // ignore: unnecessary_cast
  //   bin = (bin / 10) as double;
  //   pangkat++;
  // }
  // return hasil.round();
  int hasil;
  int hasil2;
  int pangkat = 0;
  for (var j = 0; j < 4; j++) {
    hasil = bin * pow(2, pangkat);
    hasil2 = hasil2 + hasil;
    pangkat++;
  }
  return hasil2;
}
