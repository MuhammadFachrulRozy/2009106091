import 'package:flutter/material.dart';
import 'package:posttest4_2009106091_muhammadfachrulrozy/main.dart';

void main() => runApp(const Sepatu());

class Sepatu extends StatefulWidget {
  const Sepatu({Key? key}) : super(key: key);

  @override
  _SepatuState createState() => _SepatuState();
}

class _SepatuState extends State<Sepatu> {
  int _selectedTabTndex = 0;

  void _onNavbarTapped(int index) {
    setState(() {
      _selectedTabTndex = index;
    });
  }

  Widget container() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
      margin: EdgeInsets.all(20),
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: const <Color>[
              Color.fromARGB(255, 250, 33, 4),
              Color.fromARGB(255, 236, 7, 7)
            ]),
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage('assets/b.png')),
        boxShadow: const [
          BoxShadow(
            color: Colors.black45,
            spreadRadius: 5,
            blurRadius: 5,
            offset: Offset(5, 5), // changes position of shadow
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final _ListPage = <Widget>[
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  container(),
                  container(),
                  container(),
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 200,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                    margin: EdgeInsets.all(20),
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(1000),
                    ),
                    child: Center(
                      child: Text("Halaman Pesanan",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 235, 8, 19),
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Satisfy')),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      Container(
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 200,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                    margin: EdgeInsets.all(20),
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(1000),
                    ),
                    child: Center(
                      child: Text("Halaman Kotak Masuk",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 216, 5, 5),
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Satisfy')),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 100,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 500,
                      color: Colors.white,
                      child: Center(
                        child: Text(
                          'Akun',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    MaterialButton(
                        minWidth: 210,
                        color: Color.fromARGB(255, 201, 14, 14),
                        child: Text("Profil Saya",
                            style: TextStyle(color: Colors.white)),
                        onPressed: () {}),
                    SizedBox(
                      height: 10,
                    ),
                    MaterialButton(
                        minWidth: 210,
                        color: Color.fromARGB(255, 247, 11, 50),
                        child: Text("Alamat Saya",
                            style: TextStyle(color: Colors.white)),
                        onPressed: () {}),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: 500,
                      color: Colors.grey,
                      child: Center(
                        child: Text(
                          'Pengaturan',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    MaterialButton(
                        minWidth: 210,
                        color: Color.fromARGB(255, 238, 5, 17),
                        child: Text("Pengaturan Privasi",
                            style: TextStyle(color: Colors.white)),
                        onPressed: () {}),
                    SizedBox(
                      height: 10,
                    ),
                    MaterialButton(
                        minWidth: 210,
                        color: Color.fromARGB(255, 238, 5, 17),
                        child: Text("Pengaturan Notifikasi",
                            style: TextStyle(color: Colors.white)),
                        onPressed: () {}),
                    SizedBox(
                      height: 10,
                    ),
                    MaterialButton(
                        minWidth: 210,
                        color: Color.fromARGB(255, 238, 5, 17),
                        child: Text("Bahasa",
                            style: TextStyle(color: Colors.white)),
                        onPressed: () {}),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: 500,
                      color: Colors.grey,
                      child: Center(
                        child: Text(
                          'Bantuan',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    MaterialButton(
                        minWidth: 210,
                        color: Color.fromARGB(255, 238, 5, 17),
                        child: Text("Pusat Bantuan",
                            style: TextStyle(color: Colors.white)),
                        onPressed: () {}),
                    SizedBox(
                      height: 10,
                    ),
                    MaterialButton(
                        minWidth: 210,
                        color: Color.fromARGB(255, 238, 5, 17),
                        child: Text("Tips dan Trik",
                            style: TextStyle(color: Colors.white)),
                        onPressed: () {}),
                    SizedBox(
                      height: 10,
                    ),
                    MaterialButton(
                        minWidth: 210,
                        color: Color.fromARGB(255, 238, 5, 17),
                        child: Text("Kebijakan dan Peraturan",
                            style: TextStyle(color: Colors.white)),
                        onPressed: () {}),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: 500,
                      color: Colors.grey,
                      child: Center(
                        child: Text(
                          'Keluar',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    MaterialButton(
                        minWidth: 210,
                        color: Color.fromARGB(255, 238, 5, 17),
                        child: Text("Log out",
                            style: TextStyle(color: Colors.white)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        }),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                )),
          ],
        ),
      ),
    ];

    final _BottomNavBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Beranda',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.assignment),
        label: 'pesanan',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.mail),
        label: 'Kotak Masuk',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'akun',
      ),
    ];

    final _BottomNavBar = BottomNavigationBar(
      items: _BottomNavBarItems,
      currentIndex: _selectedTabTndex,
      selectedItemColor: Color.fromARGB(255, 238, 5, 17),
      unselectedItemColor: Colors.grey,
      onTap: _onNavbarTapped,
    );

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
                Color.fromARGB(255, 238, 5, 17),
                Color.fromARGB(255, 238, 5, 17),
              ])),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 238, 5, 17),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 100,
                      ),
                    ])),
            ListTile(
              leading: Icon(Icons.person_outline),
              title: Text("Profil Saya"),
              tileColor: Color.fromARGB(255, 238, 5, 17),
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (_) {
                //     return SecondPage();
                //   }),
                // );
              },
            ),
            ListTile(
              leading: Icon(Icons.person_pin_circle_outlined),
              title: Text("Alamat Saya"),
              tileColor: Color.fromARGB(255, 238, 5, 17),
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (_) => _ThirdPage()),
                // );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings_applications),
              title: Text("Pengaturan Privasi"),
              tileColor: Color.fromARGB(255, 238, 5, 17),
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (_) => _ThirdPage()),
                // );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings_applications),
              title: Text("Pengaturan Notifikasi"),
              tileColor: Color.fromARGB(255, 238, 5, 17),
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (_) => _ThirdPage()),
                // );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings_applications),
              title: Text("Bahasa"),
              tileColor: Color.fromARGB(255, 238, 5, 17),
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (_) => _ThirdPage()),
                // );
              },
            ),
            ListTile(
              leading: Icon(Icons.help_center),
              title: Text("Pusat Bantuan"),
              tileColor: Color.fromARGB(255, 238, 5, 17),
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (_) => _ThirdPage()),
                // );
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Tips dan Trik"),
              tileColor: Color.fromARGB(255, 238, 5, 17),
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (_) => _ThirdPage()),
                // );
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Kebijakan dan Peraturan"),
              tileColor: Color.fromARGB(255, 238, 5, 17),
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (_) => _ThirdPage()),
                // );
              },
            ),
            // ListTile(
            //   leading: Icon(Icons.person),
            //   title: Text("Alamat Saya"),
            //   tileColor: Color.fromARGB(255, 226, 173, 94),
            //   onTap: () {
            //     // Navigator.push(
            //     //   context,
            //     //   MaterialPageRoute(builder: (_) => _ThirdPage()),
            //     // );
            //   },
            // ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  colors: const <Color>[
                Color.fromARGB(255, 238, 5, 17),
                Color.fromARGB(255, 238, 5, 17),
              ])),
          child: _ListPage[_selectedTabTndex],
        ),
      ),
      bottomNavigationBar: _BottomNavBar,
    );
  }
}
