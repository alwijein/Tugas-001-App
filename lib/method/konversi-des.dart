import 'dart:math' show pow;

int konversiDes(double bin) {
  double sisa;
  double hasil;
  hasil = 0.0;
  int pangkat = 0;
  while (bin >= 1) {
    sisa = bin % 2;
    hasil += sisa * pow(2, pangkat);
    // ignore: unnecessary_cast
    bin = (bin / 10) as double;
    pangkat++;
  }
  return hasil.round();
}
