import 'package:flutter/material.dart';
import '../models/list.dart';

class HomeListRecipePage extends StatelessWidget {
  final HomeData data;

  HomeListRecipePage({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          data.name,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(left: 10.0),
            child: Icon(Icons.favorite),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(data.image),
            ),
            Container(
              margin: EdgeInsets.only(top: 25.0),
              child: Text(
                "Bahan-Bahan",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(120.0),
              child: Container(
                margin: EdgeInsets.all(24.0),
                padding: EdgeInsets.only(
                  top: 16.0,
                  bottom: 16.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: data.ingredients.map(
                    (value) {
                      return Container(
                        margin: EdgeInsets.only(
                          left: 16.0,
                          top: 10.0,
                          bottom: 4.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              ">  ",
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              value,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      );
                    },
                  ).toList(),
                ),
              ),
            ),
            Container(
              child: Text(
                "Cara Masak",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(120.0),
              child: Container(
                margin: EdgeInsets.all(24.0),
                padding: EdgeInsets.only(
                  top: 16.0,
                  bottom: 16.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: data.howTo.map(
                    (value) {
                      return Container(
                        margin: EdgeInsets.only(
                          left: 16.0,
                          top: 10.0,
                          bottom: 4.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              ">  ",
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              value,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      );
                    },
                  ).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
