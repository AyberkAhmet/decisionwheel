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
      height: 80,
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(color: Colors.grey[400]!,offset: Offset(0,5),blurRadius: 20,)]
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
                case "SHOULD I ...?":
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WheelPage("Should I ...?", listConstants.shouldList,listConstants.shouldTextList)),
                );
                break;
              case "DRINKS":
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WheelPage("What will you drink?", listConstants.drinkList, listConstants.drinksTextList)),
                );
                break;
              case "FOODS":
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WheelPage("What will you eat?", listConstants.foodsList, listConstants.foodsTextList)),
                );
                break;
              case "CUISINES":
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WheelPage("Which country cuisine will you eat?", listConstants.cuisinesList,listConstants.cuisineTextList)),
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
