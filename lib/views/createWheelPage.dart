import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:spinner/models/colorConstants.dart';
import 'package:spinner/views/wheelPage.dart';
import 'package:spinner/widgets/customAppbar.dart';
import 'package:spinner/widgets/createWheelWidgets/showColorPicker.dart';

class CreateWheelPage extends StatefulWidget {
  @override
  _CreateWheelPageState createState() => _CreateWheelPageState();
}

class _CreateWheelPageState extends State<CreateWheelPage> {
  Color? _itemColor;
  String? _question;
  String? _itemName;
  List<FortuneItem>? _itemList;
  List<AutoSizeText>? _itemTextList;

  double? _screenWidth;

  @override
  void initState() {
    super.initState();

    _itemColor = Colors.white;

    _question = "";
    _itemName = "";
    _itemList = [];
    _itemTextList = [];
  }

  final _text = TextEditingController();
  bool _validate = false;

  @override
  void dispose() {
    _text.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ColorConstants _colorConstants = ColorConstants();

    _screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: _colorConstants.backgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppbar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: _colorConstants.backgroundColor,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: _screenWidth,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Question?",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(10),
                    ),
                    maxLines: 1,
                    onChanged: (value) {
                      setState(() {
                        _question = value;
                      });
                    },
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Item Name",
                          errorText: _validate ? "Add at least 2 item" : null,
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(10),
                        ),
                        maxLines: 1,
                        onChanged: (value) {
                          setState(() {
                            _itemName = value;
                          });
                        },
                      ),
                    ),
                    _takeColorRow("Item Color : "),
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.lightGreen,
                        onSurface: Colors.red,
                        backgroundColor: Colors.lightGreen,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      ),
                      onPressed: () {
                        _itemList!.add(
                          FortuneItem(
                            style: FortuneItemStyle(
                              borderWidth: 5,
                              borderColor: Colors.white,
                              textStyle: TextStyle(
                                  color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
                              color: _itemColor!,
                            ),
                            child: Text(_itemName!),
                          ),
                        );
                        _itemTextList!.add(
                          AutoSizeText(
                          _itemName!,
                          style: TextStyle(
                              fontFamily: "PoeNewBold", fontSize: 50, fontWeight: FontWeight.bold),
                        ));
                        setState(() {
                          _itemList!.length < 2 ? _validate = true : _validate = false;
                        });
                      },
                      child: Text(
                        "Add Item",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 400,
              child: Padding(
                padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(10),
                    color: Colors.white,
                  ),
                  child: ListView.builder(
                    itemCount: _itemList!.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(1.0),
                        child: Card(
                          color: _itemList![index].style!.color,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10), side: BorderSide(width: 3)),
                          child: ListTile(
                            trailing: IconButton(
                                icon: Icon(Icons.remove_circle),
                                onPressed: () {
                                  _itemList!.removeAt(index);
                                  print(_itemList);
                                  setState(() {});
                                }),
                            title: Center(child: _itemTextList![index]),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: MediaQuery.of(context).viewInsets.bottom == 0.0
          ? FloatingActionButton.extended(
              label: Text("Create Wheel"),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              onPressed: () {
                _itemList!.length < 2 ? _validate = true : _validate = false;
                if (_validate == false) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WheelPage(_question, _itemList, _itemTextList)));
                }
                setState(() {});
              },
            )
          : null,
    );
  }

  Widget _takeColorRow(String title) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 15, color: Colors.black),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
            ),
            borderRadius: BorderRadius.circular(5),
            color: _itemColor,
          ),
          width: 20,
          height: 20,
        ),
        IconButton(
          color: Colors.white,
          icon: Icon(Icons.color_lens, color: Colors.black),
          onPressed: () async {
            _itemColor = await showDialog(
              barrierDismissible: false,
              context: context,
              builder: (BuildContext context) {
                return ShowColorPicker();
              },
            );
            setState(() {
              print("ffasdsadff" + _itemColor.toString());
            });
          },
        ),
      ],
    );
  }
}
