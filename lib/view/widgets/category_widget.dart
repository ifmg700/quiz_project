import 'package:flutter/cupertino.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          child: Image.asset("name asa",),
          width: MediaQuery.sizeOf(context).width / 2,
          height: 500,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text("data"),
        )
      ],
    );
  }
}
