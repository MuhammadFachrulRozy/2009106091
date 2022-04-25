import 'package:flutter/material.dart';
import 'package:posttest4_2009106091_muhammadfachrulrozy/login.dart';

void main() => runApp(Regis());

class Regis extends StatefulWidget {
  const Regis({Key? key}) : super(key: key);

  @override
  _RegisState createState() => _RegisState();
}

enum Gender { unknown, laki, perempuan }

class _RegisState extends State<Regis> {
  Gender? gender = Gender.unknown;
  String getGender(Gender? value) {
    if (value == Gender.laki) {
      return "Laki-laki";
    } else if (value == Gender.perempuan) {
      return "Perempuan";
    }
    return "";
  }

  String namalengkap = '', email = '', password = '';
  final ctrlnamalengkap = TextEditingController();
  final ctrlemail = TextEditingController();
  final ctrlpassword = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    ctrlnamalengkap.dispose();
    ctrlemail.dispose();
    ctrlpassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Available Sneakers',
            style: TextStyle(color: Colors.black, fontFamily: 'Satisfy')),
        centerTitle: true,
        elevation: 0.0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: const <Color>[
                Color.fromARGB(255, 250, 33, 4),
                Color.fromARGB(255, 236, 7, 7)
              ])),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/b.png')),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: const <Color>[
                  Color.fromARGB(255, 250, 33, 4),
                  Color.fromARGB(255, 236, 7, 7)
                ])),
        child: ListView(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      controller: ctrlnamalengkap,
                      decoration: InputDecoration(
                          hintText: "Name",
                          hintStyle: TextStyle(color: Colors.black),
                          border: OutlineInputBorder()),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      controller: ctrlemail,
                      decoration: InputDecoration(
                          hintText: "Email",
                          hintStyle: TextStyle(color: Colors.black),
                          border: OutlineInputBorder()),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      controller: ctrlpassword,
                      decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.black),
                          border: OutlineInputBorder()),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 200,
                    color: Colors.white70,
                    child: ListTile(
                      title: Text("Man"),
                      leading: Radio(
                        groupValue: gender,
                        value: Gender.laki,
                        onChanged: (Gender? value) {
                          setState(() {
                            gender = value;
                          });
                        },
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 200,
                    color: Colors.white70,
                    child: ListTile(
                      title: Text("Woman"),
                      leading: Radio(
                        groupValue: gender,
                        value: Gender.perempuan,
                        onChanged: (Gender? value) {
                          setState(() {
                            gender = value;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MaterialButton(
                    padding: EdgeInsets.all(20),
                    minWidth: 250,
                    child: Text(
                      "REGISTER",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    color: Colors.black,
                    onPressed: () {
                      setState(() {
                        namalengkap = ctrlnamalengkap.text;
                        email = ctrlemail.text;
                        password = ctrlpassword.text;
                      });
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                  title: Text('SELAMAT ANDA TELAH REGISTRASI'),
                                  content: Text(
                                      "Nama Anda : $namalengkap\nEmail Anda : $email\nPassword Anda : $password\nJenis Kelamin : ${getGender(gender)}"),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Login()));
                                      },
                                      child: Text('OKE'),
                                    ),
                                  ]));
                    },
                  ),
                  TextButton(
                    child: Text("Jika Sudah Mendaftar? Login Me",
                        style: TextStyle(color: Colors.white)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
