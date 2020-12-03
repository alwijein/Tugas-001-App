class JadwalKuliah {
  List<String> mataKuliah;
  List<String> dosen;
  List<String> kelas;
  List<String> waktu;
  List<String> ruangan;

  JadwalKuliah(
      {this.mataKuliah, this.dosen, this.kelas, this.waktu, this.ruangan});
}

List<JadwalKuliah> jadwalkuliah = [
  JadwalKuliah(
    mataKuliah: [
      "web",
      "jarkom",
      "struktur data",
      "basis data I",
      "basis data II",
      "microcontroler",
      "microprocessor",
      "Pengantar Pemrograman",
      "Pemrograman Terstruktur",
      "APL",
      "SPK"
    ],
    dosen: [
      "dosen1",
      "dosen2",
      "dosen3",
      "dosen4",
      "dosen5",
      "dosen6",
      "dosen7",
      "dosen8",
      "dosen9",
      "dosen10",
      "dosen11"
    ],
    kelas: ["A1", "A2", "A3", "A4", "A5", "A6", "A7", "A8", "A9", "B1", "B2"],
    waktu: [
      "senin, 07:40-09:20",
      "senin, 13:00-14:40",
      "senin, 14:40-16:20",
      "selasa, 07:40-09:20",
      "selasa, 13:00-14:40",
      "selasa, 14:40-16:20",
      "rabu, 07:40-09:20",
      "rabu, 13:00-14:40",
      "rabu, 14:40-16:20",
      "kamis, 07:40-09:20",
      "kamis, 13:00-14:40"
    ],
    ruangan: [
      "labrpl",
      "labjarkom",
      "labdasar",
      "labindustri",
      "labmultimedia",
      "labriset",
      "labrplbaru",
      "ruanglab",
      "labjaringanbaru",
      "labfikom",
      "labrobotika"
    ],
  )
];
