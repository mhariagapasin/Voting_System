import 'package:flutter/material.dart';
import 'package:votoan_idos/Voting.dart';
import 'Voting.dart';
import 'prespage.dart';
import 'Vpres.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => const HomeRoute(),
      '/vote': (context) => VoteRoute(),
      '/pres': (context) => Pres(),
      '/vpres': (context) => VicePres(),
      '/sec': (context) => Sec(),
      '/subsec': (context) => SubSec(),
      '/tre': (context) => Tre(),
      '/subtre': (context) => SubTre(),
      '/audi': (context) => Audi(),
      '/end': (context) => End(),
    },
  ));
}

class HomeRoute extends StatelessWidget {
  const HomeRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 120),
            child: Column(
              children: [
                Image(
                  image: AssetImage('images/logo.png'),
                ),
                Text(
                  'Voting System',
                  style: TextStyle(
                      color: Color.fromARGB(255, 130, 71, 202),
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
                SizedBox(height: 20),
                Container(
                  child: Center(
                    child: GestureDetector(
                      onTap: (() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => VoteRoute()),
                        );
                      }),
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 102, 31, 119),
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 1,
                                blurRadius: 8,
                                offset: Offset(4, 4),
                              ),
                              BoxShadow(
                                color: Colors.white,
                                spreadRadius: 2,
                                blurRadius: 8,
                                offset: Offset(-4, -4),
                              )
                            ]),
                        child: Center(
                          child: Text(
                            'Vote',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
