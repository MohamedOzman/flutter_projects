// import 'dart:js_interop_unsafe';
// import 'dart:js_util';

import 'package:flutter/material.dart';
// Uncomment lines 3 and 6 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: const Text(
                    'Keymaha duuleedka Baladweyne',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                    ),
                  ),
                ),
                // Padding(padding: EdgeInsets.only(bottom: )),
                Text(
                  'I am Web Application',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 25.0)),
                const SizedBox(
                    // height: 16,
                    ),
            
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.favorite_sharp,
            color: Colors.red[500],
          ),
          const Text(' 22'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(Colors.red, Icons.call, 'CALL'),
          _buildButtonColumn(Colors.red, Icons.near_me, 'ROUTE'),
          _buildButtonColumn(Colors.red, Icons.share, 'SHARE'),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(18),
      child: const Text(
        'As a web developer, you possess a diverse range of we could skills and so  '
        'knowledge that allow you to create as won daydynamic and interactive so that '
        'websites. as long Your expert man  expertise lies in designing and developing web as you can run'
        'applications, ensuring their functionality, usability, and overall user experience. '
        'You are proficient in various programming languages such asYou are proficient in various'
        'programming languages such as we can do we are so.  ',
        style: TextStyle(color: Colors.grey),
        softWrap: true,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text('              Global Design'),
          leading: const Icon(Icons.menu),
          elevation: 0,
          actions: const [
            // Icon(Icons.tiktok),
            Icon(Icons.more_vert),
            SizedBox(
              width: 8,
            ),
          ],
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/1.jpg',
              width: 300,
              height: 250,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          backgroundColor: Colors.red,
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: {};
        //   tooltip: 'Increment',
        //   child: const Icon(Icons.add),
        // ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
