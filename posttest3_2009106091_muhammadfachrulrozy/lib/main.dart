import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.red),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String nama = "", jenis = "", ukuran = "", jumlah = "";
  TextEditingController controllerNama = TextEditingController();
  TextEditingController controllerJenis = TextEditingController();
  TextEditingController controllerUkuran = TextEditingController();
  TextEditingController controllerJumlah = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    controllerNama.dispose();
    controllerJenis.dispose();
    controllerUkuran.dispose();
    controllerJumlah.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Posttest 3 Rozy "),
          backgroundColor: Color.fromARGB(255, 228, 9, 9)),
      backgroundColor: Color.fromARGB(255, 245, 5, 5),
      body: ListView(
        children: [
          SizedBox(height: 20),
          Text(
            "FORM ORDER",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 11, 8, 8),
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          TextField(
            controller: controllerNama,
            decoration: InputDecoration(
              labelText: "Masukkan Nama Anda : ",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          TextFormField(
            controller: controllerJenis,
            decoration: InputDecoration(
              labelText: "Masukkan jenis Sepatu :",
              labelStyle: TextStyle(fontSize: 15),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          TextFormField(
            controller: controllerUkuran,
            decoration: InputDecoration(
              labelText: "Masukkan Ukuran Sepatu :",
              labelStyle: TextStyle(fontSize: 15),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          TextFormField(
            controller: controllerJumlah,
            decoration: InputDecoration(
              labelText: "Masukkan Jumlah Sepatu Yang Akan Di Beli",
              labelStyle: TextStyle(fontSize: 15),
              border: OutlineInputBorder(),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                nama = controllerNama.text;
                jenis = controllerJenis.text;
                ukuran = controllerUkuran.text;
                jumlah = controllerJumlah.text;
              });
            },
            child: Text("Buy Now"),
          ),
          Text(
            "Nama Pembeli Adalah : $nama ",
            style: TextStyle(fontSize: 15),
          ),
          Text(
            "Pesanan Sepatu berjenis : $jenis ",
            style: TextStyle(fontSize: 15),
          ),
          Text(
            "ukuran Sepatu Anda : $ukuran",
            style: TextStyle(fontSize: 15),
          ),
          Text(
            "Jumlah Sepatu Yang Ingin Di Beli : $jumlah",
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}
