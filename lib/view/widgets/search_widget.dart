import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchText extends StatelessWidget {
  final text;
  const SearchText({required this.text,super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow:const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5,
              offset: Offset(1, 3),
            ),
          ],
        ),
        child:  TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            border: InputBorder.none,
            hintText: text,
            hintStyle: TextStyle(color: Colors.grey.shade300,fontWeight: FontWeight.bold,fontSize: 15),
            contentPadding: const  EdgeInsets.symmetric(
                vertical: 12.0, horizontal: 15.0),
          ),
        ),
      ),
    );
  }
}