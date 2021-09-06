import 'package:flutter/material.dart';
class Mycard extends StatefulWidget {
  final Color? c;
  Mycard(@required this.c);
  @override
  _MycardState createState() => _MycardState();
}

class _MycardState extends State<Mycard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      color: widget.c!,
      elevation: 0.0,
      
    );
  }
}