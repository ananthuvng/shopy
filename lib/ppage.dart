import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Image.network(
              'https://mir-s3-cdn-cf.behance.net/project_modules/1400/2b10d8100471043.5f0987e7cf241.png',
              fit: BoxFit.cover,
            ),
          ),
          Text(
            'Book Name',
            style: TextStyle(fontSize: 25),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Book description blah blahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblah',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
