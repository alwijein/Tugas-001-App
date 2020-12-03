import 'package:flutter/material.dart';
import 'package:algoritma_genetika/method/konversi-des.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController controller1 = new TextEditingController(text: "0");

  List crhomosome = new List(15);
  List hasil = new List(5);
  List subSub = new List(5);
  List atoiX = new List(5);
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
    "SPK"
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
    "dosen11"
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
  ];
  var waktu = [
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
  ];
  var ruangan = [
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
  ];
  int startIndex = 0;
  int endIndex = 4;
  int x = 0;
  var nol = 0;
  var satu = 0;
  var dua = 0;
  var tiga = 0;
  var empat = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tugas Lab",
          style: TextStyle(
              color: Theme.of(context).accentColor,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Container(
                  //   padding: EdgeInsets.all(10.0),
                  //   width: MediaQuery.of(context).size.width / 1.1,
                  //   height: MediaQuery.of(context).size.height / 3,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(10.0),
                  //     color: Theme.of(context).accentColor,
                  //     boxShadow: [
                  //       BoxShadow(
                  //         color: Colors.grey.withOpacity(0.5),
                  //         spreadRadius: 5,
                  //         blurRadius: 5,
                  //         offset: Offset(0, 3),
                  //       ),
                  //     ],
                  //   ),
                  //   child: ListView(
                  //     children: <Widget>[
                  //       Column(
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         children: [
                  //           for (var i = 0; i < x; i++)
                  //             Text(crhomosome[i].toString())
                  //         ],
                  //       )
                  //     ],
                  //   ),
                  //   // child: ListView,
                  // ),
                  Container(
                      padding: EdgeInsets.all(20.0),
                      width: MediaQuery.of(context).size.width / 1.1,
                      height: MediaQuery.of(context).size.height / 3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Theme.of(context).accentColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ListView(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              for (int i = 0; i < 15; i++)
                                if (controller1.text == crhomosome[i])
                                  Text(
                                    "Kelas   : " + kelas[dua].toString(),
                                    style: TextStyle(fontSize: 20.0),
                                  ),
                              Text(
                                "Waktu   : " + waktu[empat].toString(),
                                style: TextStyle(fontSize: 20.0),
                              ),
                              Text(
                                "Matkul  : " + mataKuliah[nol].toString(),
                                style: TextStyle(fontSize: 20.0),
                              ),
                              Text(
                                "Dosen   : " + dosen[satu].toString(),
                                style: TextStyle(fontSize: 20.0),
                              ),
                              Text(
                                "Ruangan : " + ruangan[tiga].toString(),
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ],
                            // 10011001100110011001
                          ),
                        ],
                      )),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Flexible(
                child: TextField(
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
                          startIndex = 0;
                          endIndex = 4;
                          for (int j = 0; j < 5; j++) {
                            subSub[j] =
                                crhomosome[i].substring(startIndex, endIndex);
                            startIndex = startIndex + 4;
                            endIndex = endIndex + 4;
                          }
                        }

                        for (int i = 0; i < 5; i++) {
                          atoiX[i] = double.parse(subSub[i]);
                        }

                        for (int i = 0; i < 5; i++) {
                          hasil[i] = konversiDes(atoiX[i]);
                        }
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
    );
  }
}
