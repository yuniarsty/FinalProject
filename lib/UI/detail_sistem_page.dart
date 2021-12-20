// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:sistem/Models/sistem.dart';

class DetailSistemPage extends StatefulWidget {
  DetailSistemPage ({required this.sistem});
  final Sistem sistem;

  @override
  _DetailSistemPageState createState() => _DetailSistemPageState();
}

class _DetailSistemPageState extends State<DetailSistemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.sistem.nama),
      ),
      body: Container(
        width: double.infinity,
        child: ListView(
          children: [
            Image.network("http://192.168.43.14/program3/public/" + widget.sistem.foto),
            Container(
              padding: EdgeInsets.all(5),
              decoration: new BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [const Color(0xff3164bd), const Color(0xff295cb5)],
                ),
              ),
              child: Text(widget.sistem.nama, style: TextStyle(color: Colors.white),),
            ),
          ],
        )
      ),
    );
  }
}