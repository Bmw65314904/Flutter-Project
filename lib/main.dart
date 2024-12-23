import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResumeScreen(),
    );
  }
}

class ResumeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Resume'),
        backgroundColor: const Color.fromARGB(255, 190, 247, 255),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.grey[900],
            border: Border.all(color: Colors.white, width: 1),
            borderRadius: BorderRadius.circular(8),
          ),
          width: 400,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                   Image(image: NetworkImage('https://us-fbcloud.net/wb/data/1433/1433970-img.vqw4m3.1kwuj.opsbba0d.webp'), 
                    width: 120, // กำหนดความกว้าง
                    height: 120, // กำหนดความสูง
                    fit: BoxFit.cover,) // กำหนดลักษณะการแสดงภาพ (Cover, Contain, Fill)))
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Siriphan', style: headerStyle),
                  Text('Boonmee', style: headerStyle),
                  Text('Bmw', style: headerStyle),
                ],
              ),
              Divider(color: Colors.white),
              SizedBox(height: 8),
              Text('Hobby: Play the guitar', style: normalStyle),
              Text('Food: Beef Burger', style: normalStyle),
              Text('Birthplace: Phitsanulok', style: normalStyle),
              SizedBox(height: 16),
              Text('Education:', style: headerStyle),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('elementary: Rojanawit Malabiang', style: normalStyle),
                  Text('year: 50', style: normalStyle),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('primary: Phitsanulok Pittayakhom', style: normalStyle),
                  Text('year: 55', style: normalStyle),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('high school: Phitsanulok Pittayakhom', style: normalStyle),
                  Text('year: 60', style: normalStyle),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Undergrad: Naresuan University', style: normalStyle),
                  Text('year: 65', style: normalStyle),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextStyle get headerStyle => TextStyle(
        color: Colors.red,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      );

  TextStyle get normalStyle => TextStyle(
        color: Colors.white,
        fontSize: 14,
      );
}
