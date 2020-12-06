import 'package:flutter/material.dart';
import 'dart:math' show pow;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController controller1 = new TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  List crhomosome = new List(16);
  List hasil = new List(5);
  List subSub = new List(20);
  // List subSubOne = new List(20);
  List atoiX = new List(20);

  var mataKuliah = [
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
    "SPK",
    "matematika dasar",
    "statistika",
    "robotika",
    "algoritma",
    "fisika"
  ];
  var dosen = [
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
    "dosen11",
    "dosen12",
    "dosen13",
    "dosen14",
    "dosen15",
    "dosen16"
  ];
  var kelas = [
    "A1",
    "A2",
    "A3",
    "A4",
    "A5",
    "A6",
    "A7",
    "A8",
    "A9",
    "B1",
    "B2",
    "B3",
    "B4",
    "B5",
    "B6",
    "B7"
  ];
  var waktu = [
    "senin, 07:40-09:20",
    "senin, 09:20-11:00",
    "senin, 13:00-14:40",
    "senin, 14:40-16:20",
    "selasa, 07:40-09:20",
    "selasa, 09:20-11:00",
    "selasa, 13:00-14:40",
    "selasa, 14:40-16:20",
    "rabu, 07:40-09:20",
    "rabu, 09:20-11:00",
    "rabu, 13:00-14:40",
    "rabu, 14:40-16:20",
    "kamis, 07:40-09:20",
    "kamis, 09:20-11:00",
    "kamis, 13:00-14:40",
    "kamis, 13:00-14:40"
  ];
  var ruangan = [
    "lab dasar1",
    "lab dasar2",
    "lab dasar3",
    "lab dasar4",
    "lab jaringan1",
    "lab jaringan2",
    "lab jaringan3",
    "lab jaringan4",
    "lab multimedia1",
    "lab multimedia2",
    "lab multimedia3",
    "lab multimedia4",
    "lab micro1",
    "lab micro2",
    "lab micro3",
    "lab micro4"
  ];

  int x = 0;
  var nol = 0;
  var satu = 0;
  var dua = 0;
  var tiga = 0;
  var empat = 0;
  var cari;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          "Tugas Lab",
          style: TextStyle(
              color: Theme.of(context).accentColor,
              fontFamily: 'Redressed-Regular',
              fontWeight: FontWeight.bold),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              padding: EdgeInsets.all(30.0),
              child: Container(
                margin: EdgeInsets.all(30.0),
                child: Text(
                  "List Inputan",
                  style: TextStyle(
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0),
                ),
              ),
              decoration: BoxDecoration(color: Theme.of(context).primaryColor),
            ),
            for (int i = 0; i < x; i++)
              ListTile(
                leading: Icon(Icons.data_usage),
                title: Text(crhomosome[i]),
                // onTap: () {
                //   controller1.text = crhomosome[i];
                // },
              ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            // ignore: deprecated_member_use
            autovalidate: true,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                    width: MediaQuery.of(context).size.width / 1.1,
                    height: MediaQuery.of(context).size.height / 2.2,
                    child: ListView(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            for (int i = 0; i < x; i++)
                              if (cari == crhomosome[i])
                                Card(
                                  elevation: 16,
                                  child: ListTile(
                                    leading: Icon(Icons.sensor_door),
                                    title: Text(
                                      "Kelas : " + kelas[dua].toString(),
                                      style: TextStyle(fontSize: 20.0),
                                    ),
                                  ),
                                ),
                            Card(
                              elevation: 16,
                              child: ListTile(
                                leading: Icon(Icons.more_time),
                                title: Text(
                                  "Waktu : " + waktu[empat].toString(),
                                  style: TextStyle(fontSize: 20.0),
                                ),
                              ),
                            ),
                            Card(
                              elevation: 16,
                              child: ListTile(
                                leading: Icon(Icons.book),
                                title: Text(
                                  "Matkul : " + mataKuliah[nol].toString(),
                                  style: TextStyle(fontSize: 20.0),
                                ),
                              ),
                            ),
                            Card(
                              elevation: 16,
                              child: ListTile(
                                leading: Icon(Icons.supervised_user_circle),
                                title: Text(
                                  "Dosen : " + dosen[satu].toString(),
                                  style: TextStyle(fontSize: 20.0),
                                ),
                              ),
                            ),
                            Card(
                              elevation: 16,
                              child: ListTile(
                                leading: Icon(Icons.arrow_right_alt_sharp),
                                title: Text(
                                  "Ruangan : " + ruangan[tiga].toString(),
                                  style: TextStyle(fontSize: 20.0),
                                ),
                              ),
                            ),
                          ],
                          // 10011001100110011001
                        ),
                      ],
                    )),
                SizedBox(
                  height: 30.0,
                ),
                Flexible(
                  child: TextFormField(
                    validator: validatorBin,
                    decoration: InputDecoration(
                      labelText: "Inputan dan Cari",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      // icon: Icon(Icons.input),
                    ),
                    onChanged: (value) {
                      setState(() {});
                    },
                    keyboardType: TextInputType.number,
                    controller: controller1,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // button input

                    RaisedButton(
                      shape: StadiumBorder(),
                      color: Theme.of(context).primaryColor,
                      child: Text(
                        "INPUT",
                        style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          crhomosome[x] = controller1.text;

                          x++;
                        });
                        _scaffoldKey.currentState.showSnackBar(SnackBar(
                          content: Text(
                            'Data ' +
                                controller1.text +
                                " berhasil di tambahkan",
                          ),
                          duration: Duration(seconds: 2),
                        ));
                      },
                      splashColor: Colors.amber,
                    ),
                    // RaisedButton(
                    //   shape: StadiumBorder(),
                    //   color: Theme.of(context).primaryColor,
                    //   child: Text(
                    //     "SHOW",
                    //     style: TextStyle(
                    //       color: Theme.of(context).accentColor,
                    //       fontWeight: FontWeight.bold,
                    //     ),
                    //   ),
                    //   onPressed: () => _onButtonPressed(),
                    // ),
                    RaisedButton(
                      shape: StadiumBorder(),
                      color: Theme.of(context).primaryColor,
                      child: Text(
                        "CARI",
                        style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          for (var i = 0; i < x; i++) {
                            int startIndex = 0;
                            int endIndex = 1;
                            for (int j = 0; j < 20; j++) {
                              subSub[j] =
                                  crhomosome[i].substring(startIndex, endIndex);
                              startIndex = startIndex + 1;
                              endIndex = endIndex + 1;
                            }
                          }
                          for (int i = 0; i < 20; i++) {
                            atoiX[i] = int.parse(subSub[i]);
                          }
                          int n = 0;
                          for (var i = 0; i < 20; i += 4) {
                            int x1 = 0;
                            int x2 = 0;
                            int pangkat = 0;
                            for (var j = 0; j < 4; j++) {
                              x1 = atoiX[j] * pow(2, pangkat);
                              x2 = x2 + x1;
                              pangkat++;
                            }
                            hasil[n] = x2;
                            n++;
                          }

                          cari = controller1.text;

                          nol = hasil[0];
                          satu = hasil[1];
                          dua = hasil[2];
                          tiga = hasil[3];
                          empat = hasil[4];
                        });
                      },
                      splashColor: Colors.amber,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

String validatorBin(String value) {
  RegExp regx = RegExp(r"^[0-1_]*$", caseSensitive: false);
  if (value.length != 20) {
    return 'Biner Harus 20 Digit';
  } else if (!(regx.hasMatch(value))) {
    return 'Tidak Boleh selain 1 dan 0';
  } else {
    return null;
  }
}
