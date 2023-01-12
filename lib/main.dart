import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Team Group")),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Card(
              //ค่าที่ต้องการเพิ่ม
              context: context,
              color: Colors.blue,
              blocktext: "นายภาณุวิชญ์ ปัสสาโท",
              imgPath:
                  "lib/asset/images/295382260_454831482890633_7807382381885944674_n.jpg",
              nickname: "เฟรน",
              ID: "ID: 633410026-7",
              fack: "Fackbook: panuwit passatho",
              about: "คำอธิบาย: โล้นเหมือนพระ"),
          Card(
              context: context,
              color: Colors.blue,
              blocktext: "นางสาว อมาญาวีณ์ สุทธมงคล",
              imgPath:
                  "lib/asset/images/สกรีนช็อต 2023-01-12 200514.png+",
              nickname: "ราม",
              ID: "ID: 633410090-8",
              fack: "Fackbook : ญาวีณ์",
              about: "คำอธิบาย: หน้าเหมือนกัปปะ สวย เก่ง"),
        ],
      ),
    );
  }

  Widget Card(
      //กำหนดค่าที่ใช้รับในการส่ง
      {required BuildContext context,
      required Color color,
      required String blocktext,
      required String imgPath,
      required String nickname,
      required String ID,
      required String fack,
      required String about}) {
    return Container(
      width: 250,
      color: Colors.black12,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailScreen(
                        //กำหนดค่าที่ใช้ส่ง
                        name: blocktext,
                        imPath: imgPath,
                        Nickname: nickname,
                        id: ID,
                        Fackbook: fack,
                        About: about,
                      )));
        },
        child: Column(
          children: [
            CircleAvatar(radius: 60, backgroundImage: NetworkImage(imgPath)),
            Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                //margin: EdgeInsets.all(10),
                color: color,
                child: Text(blocktext)),
          ],
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  DetailScreen(
      {required this.name,
      required this.Nickname,
      required this.imPath,
      required this.id,
      required this.Fackbook,
      required this.About});
  String name;
  String Nickname;
  String imPath;
  String id;
  String Fackbook;
  String About;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My First Flutter App"),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(10.0)),
              CircleAvatar(radius: 120, backgroundImage: NetworkImage(imPath)),
              Padding(padding: EdgeInsets.all(10.0)),
              Text(name),
              Text(id),
              Text(Nickname),
              Text(Fackbook),
              Text(About),
            ],
          ),
        ));
  }
}
