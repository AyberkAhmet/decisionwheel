import 'package:flutter/material.dart';
import 'package:spinner/models/listConstants.dart';
import 'package:spinner/views/createWheelPage.dart';
import 'package:spinner/views/wheelPage.dart';

class HomeCardWidget extends StatefulWidget {
  final String title;
  HomeCardWidget(this.title);

  @override
  _HomeCardWidgetState createState() => _HomeCardWidgetState();
}

class _HomeCardWidgetState extends State<HomeCardWidget> {
  ListConstants listConstants = ListConstants();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(color: Colors.grey,offset: Offset(0,5),blurRadius: 20,)]
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: ListTile(
          //tileColor: Colors.white,
          onTap: () {
            switch (widget.title) {
              case "CREATE DECISION WHEEL":
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CreateWheelPage()),
                );
                break;
              case "DRINKS":
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WheelPage("What will you drink?", listConstants.foodsList)),
                );
                break;
              case "FOODS":
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WheelPage("What will you eat?", listConstants.foodsList)),
                );
                break;
              case "CUISINES":
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WheelPage("Which country cuisine will you eat?", listConstants.cuisinesList)),
                );
                break;
              default:
            }
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          title: Center(child: Text(widget.title,style: TextStyle(color: Colors.black, fontSize: 24),)),
        ),
      ),
    );
  }
}
