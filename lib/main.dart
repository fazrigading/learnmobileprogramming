import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Gading",
      theme: ThemeData(fontFamily: 'SanFrancisco'),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        height: tinggi,
        width: lebar,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.blue, Colors.teal])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              "Post-test 1 Gading",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            backgroundColor: Colors.black45,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/loginiconsmall.png'),
              const Padding(
                  padding: EdgeInsets.only(left: 75, right: 75),
                  child: Text(
                    "Sign-in",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 42,
                        fontWeight: FontWeight.w700),
                  )),
              const Padding(
                padding:
                    EdgeInsets.only(left: 75, right: 75, top: 25, bottom: 25),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person, color: Colors.white),
                    focusColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    border: OutlineInputBorder(),
                    hintText: 'Username',
                    hintStyle: TextStyle(
                        color: Colors.white60,
                        fontSize: 18,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 75, right: 75, bottom: 25),
                child: TextField(
                  obscureText: true,
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'SanFrancisco'),
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock, color: Colors.white),
                      focusColor: Colors.white,
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                          color: Colors.white60,
                          fontSize: 18,
                          fontWeight: FontWeight.w300)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 75, right: 75),
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(30.0),
                  color: const Color.fromARGB(255, 186, 136, 57),
                  child: MaterialButton(
                      minWidth: MediaQuery.of(context).size.width,
                      padding:
                          const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                      onPressed: () {},
                      child: const Text("Login",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w500))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
