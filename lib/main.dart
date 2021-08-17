import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // theme: ThemeData(accentColor: Colors.grey),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.greenAccent,
                  backgroundImage: AssetImage('assets/images/me.jpg'),
                ),
                const Text(
                  'Furkan Aktaş',
                  style: TextStyle(
                    fontFamily: 'Caveat',
                    fontSize: 52,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                const Text(
                  'JavaScript-Flutter Developer',
                  style: TextStyle(
                    fontFamily: 'DancingScript',
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                  child: const Text(
                    'About',
                    style: TextStyle(
                      fontFamily: 'Caveat',
                      fontSize: 16,
                      color: Colors.white10,
                    ),
                  ),
                  onPressed: () {
                    Route route = MaterialPageRoute(builder: (context) {
                      return const About();
                    });
                    Navigator.push(context, route);
                  },
                ),
                SizedBox(
                  width: 350,
                  height: 40,
                  child: Divider(
                    height: 30,
                    color: Colors.blueAccent[999],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 50,
                  ),
                  padding: const EdgeInsets.all(6.0),
                  color: Colors.grey,
                  child: Row(
                    children: const <Widget>[
                      Icon(
                        Icons.email,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'furkanaktas.x@hotmail.com',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Caveat'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 50,
                  ),
                  color: Colors.grey,
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      children: const <Widget>[
                        Icon(
                          Icons.phone,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          '+90 507 193 60 48',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Caveat'),
                        ),
                      ],
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

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  List<String> myExperiences = [
    'Html',
    'Css',
    'JavaScript',
    'Flutter',
    'Python'
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: const Text('About')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 170,
            ),
            const Text('Education'),
            const SizedBox(
              height: 30,
            ),
            const Text('Experiences'),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                myExperiences[index],
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.brown,
                ),
              ),
            ),
            const Text(
              'I wrote this for stateful widget',
              style: TextStyle(
                fontSize: 10,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              // ignore: deprecated_member_use
              child: RaisedButton(
                child: const Text('Other'),
                onPressed: () {
                  setState(() {
                    index++;
                    index = (index == myExperiences.length ? 0 : index);
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
