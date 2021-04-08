import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Mahasiswa> mahasiswa;  //deklarasi
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor : Colors.grey,
      appBar: AppBar(
        backgroundColor : Colors.redAccent,
        title: Text('Putri Febrianty - Kelas 6SIA6 Mobile2'),
      ),
      body: ListView(children: <Widget>[
        Center(
            child: Text('Data Mahasiswa',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
        DataTable(
          columns: [
            DataColumn(label: Text('NIRM')),
            DataColumn(label: Text('Nama Mahasiswa')),
            DataColumn(label: Text('Jurusan')),
          ],
          rows: Mahasiswa.getMahasiswa()
  .map(
    (mahasiswa) => DataRow(cells: [
      DataCell(Text(mahasiswa.nirm)),
      DataCell(Text(mahasiswa.namamhs)),
      DataCell(Text(mahasiswa.jurusan)),
    ]),
  )
  .toList(),   
        ),
      ]),
    );
  }
}
class Mahasiswa {
  //Attribut
  String nirm;
  String namamhs;
  String jurusan;

  //Constructor
  Mahasiswa({this.nirm, this.namamhs, this.jurusan});

  //Data List
  static List<Mahasiswa> getMahasiswa() {
    return <Mahasiswa>[
      Mahasiswa(nirm: "0370", namamhs: "Putri Febrianty", jurusan: "Sistem Informasi"),
      Mahasiswa(nirm: "0375", namamhs: "Pitri Manda Sari", jurusan: "Sistem Informasi"),
      Mahasiswa(nirm: "0329", namamhs: "Rafika Ramadhani", jurusan: "Sistem Informasi"),
    ];
  }
}
