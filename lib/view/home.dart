import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_project/model/constants.dart';
import 'package:quiz_project/view/widgets/category_widget.dart';
import 'package:quiz_project/view/widgets/search_widget.dart';

class Home extends StatelessWidget {
  static String routeName = '/home';

  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text("title"),
        centerTitle: true,
        backgroundColor: AppConstant.primaryBackgroundColor,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Icon(CupertinoIcons.bag),
          )
        ],
      ),
      body: const HomeBody(),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.all(10),
      color: AppConstant.primaryBackgroundColor,
      child: Column(
        children: [
          SearchText(text: "Search shoes"),
          GridView.builder(

            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 15,crossAxisSpacing: 10),
            itemBuilder: (context, index) => CategoryWidget(),
            itemCount: 4,
            shrinkWrap: true,
          ),
        ],
      ),
    );
  }
}
