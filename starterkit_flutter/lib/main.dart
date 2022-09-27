// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
        padding: const EdgeInsets.only(left: 30.0, top: 30, right: 30),
        child: Column(
          children: [
            // card banner
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Card(
                elevation: 9,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset('assets/slider1.jpg', fit: BoxFit.contain),
                ),
              ),
            ),

            // pembatas
            const SizedBox(
              height: 10,
            ),

            //  Text title
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Populer Course',
                  style: TextStyle(
                      color: Colors.white, fontSize: 24, fontFamily: 'Roboto'),
                  textAlign: TextAlign.left,
                ),
              ],
            ),

            // pembatas
            const SizedBox(
              height: 10,
            ),

            // item Categories
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
                        margin: const EdgeInsets.all(10),
                        elevation: 20,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            ImageLogo[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  }),
            ),

            // pembatas
            const SizedBox(
              height: 10,
            ),

            // Text title
            const Title_item(
              title: "Course",
            ),

            // Item shop
            Expanded(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                    itemCount: titles.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: const EdgeInsets.only(right: 10, top: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ListTile(
                          onTap: () {},
                          title: Text(titles[index]),
                          subtitle: Text(subtitles[index]),
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(ImageLogo[index],
                                fit: BoxFit.cover),
                          ),
                        ),
                      );
                    }),
              ),
            ),

            // pembatas
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

class Title_item extends StatelessWidget {
  const Title_item({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
              color: Colors.white, fontSize: 24, fontFamily: 'Roboto'),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
