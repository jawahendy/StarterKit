// ignore_for_file: non_constant_identifier_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Webinar celerates'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final titles = ["React Native", "Flutter", "Darts"];

  final subtitles = [
    "Webinar for Course React Native",
    "Webinar for Course Flutter",
    "Webinar for Course Darts",
  ];

  final ImageLogo = [
    "assets/RN.png",
    "assets/Flutter.png",
    "assets/dart.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade900,
      body: Container(
        padding: EdgeInsets.only(left: 30, top: 30, right: 30),
        child: Column(
          children: [
            SizedBox(
              child: Card(
                elevation: 20,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset('assets/slider1.jpg', fit: BoxFit.contain),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Title_Course(Title: "Popular Course"),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: 100,
                      width: 100,
                      child: Card(
                        margin: EdgeInsets.all(10),
                        elevation: 20,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(ImageLogo[index],
                              fit: BoxFit.contain),
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 10,
            ),
            Title_Course(Title: "Course"),
            Expanded(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: ((context, index) {
                    return Card(
                      margin: EdgeInsets.only(right: 10, top: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        title: Text(titles[index]),
                        subtitle: Text(subtitles[index]),
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(ImageLogo[index],
                              fit: BoxFit.contain),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Title_Course extends StatelessWidget {
  const Title_Course({
    Key? key,
    required this.Title,
  }) : super(key: key);

  final String Title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          Title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontFamily: 'Roboto',
          ),
        ),
      ],
    );
  }
}
