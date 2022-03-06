import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:spinner/extensions/context_extension.dart';
import 'package:spinner/models/wheel_model.dart';
import 'package:spinner/utils/constants/string_constants.dart';
import 'package:spinner/utils/constants/style_constants.dart';
import 'package:spinner/views/wheel_page.dart';
import 'package:spinner/widgets/custom_appbar.dart';
import 'package:spinner/widgets/createWheelWidgets/show_color_picker.dart';

class CreateWheelPage extends StatefulWidget {
  const CreateWheelPage({Key? key}) : super(key: key);

  @override
  _CreateWheelPageState createState() => _CreateWheelPageState();
}

class _CreateWheelPageState extends State<CreateWheelPage> {
  Color? _itemColor;
  String? _question;
  String? _itemName;
  List<FortuneItem>? _itemList;

  @override
  void initState() {
    super.initState();

    _itemColor = Colors.white;

    _question = "";
    _itemName = "";
    _itemList = [];
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
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppbar(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(context.normalValue),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildQuestionTextField(context),
              SizedBox(height: context.lowValue),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(flex: 10, child: _buildItemTextField()),
                  const Spacer(),
                  Expanded(flex: 10, child: _takeColorRow()),
                ],
              ),
              SizedBox(height: context.lowValue),
              Center(child: _buildAddItemButton()),
              SizedBox(height: context.lowValue),
              _buildItemListArea(context),
              SizedBox(height: context.lowValue),
              Center(child: _buildCreateWheelButton(context))
            ],
          ),
        ),
      ),
    );
  }

  Container _buildItemListArea(BuildContext context) {
    return Container(
      width: context.width,
      height: context.height * 0.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(10),
        color: Colors.white,
      ),
      child: ListView.builder(
        itemCount: _itemList!.length,
        itemBuilder: (context, index) {
          Text _itemNameTextWidget = _itemList![index].child as Text;
          String? _itemName = _itemNameTextWidget.data;
          return Padding(
            padding: const EdgeInsets.all(1.0),
            child: Card(
              color: _itemList![index].style!.color,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(width: 3)),
              child: ListTile(
                trailing: IconButton(
                    icon: const Icon(Icons.remove_circle),
                    onPressed: () {
                      _itemList!.removeAt(index);
                      setState(() {});
                    }),
                title: Center(
                    child: Text(
                  _itemName!,
                  style: _itemList![index].style!.color == Colors.white
                      ? context.theme.primaryTextTheme.headline4!
                          .copyWith(color: Colors.black)
                      : context.theme.primaryTextTheme.headline4,
                )),
              ),
            ),
          );
        },
      ),
    );
  }

  ElevatedButton _buildCreateWheelButton(BuildContext context) {
    return ElevatedButton(
      child: Text(createWheelButtonText,
          style: context.theme.primaryTextTheme.headline6),
      onPressed: () {
        _itemList!.length < 2 ? _validate = true : _validate = false;
        WheelModel createdWheelModel =
            WheelModel(question: _question!, fortuneItems: _itemList!);

        if (_validate == false) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => WheelPage(createdWheelModel)));
        }
        setState(() {});
      },
    );
  }

  TextField _buildItemTextField() {
    return TextField(
      decoration: InputDecoration(
        hintText: itemNameTextFieldHintText,
        errorText: _validate ? itemNameTextFieldErrorText : null,
      ),
      maxLines: 1,
      onChanged: (value) {
        setState(() {
          _itemName = value;
        });
      },
    );
  }

  ElevatedButton _buildAddItemButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.lightGreen,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
      onPressed: () {
        _itemList!.add(
          FortuneItem(
            style: getFortuneItemStyle(_itemColor!),
            child: Text(_itemName!),
          ),
        );

        setState(() {
          _itemList!.length < 2 ? _validate = true : _validate = false;
        });
      },
      child: const Text(
        addItemButtonText,
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Container _buildQuestionTextField(BuildContext context) {
    return Container(
      width: context.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: const InputDecoration(
          hintText: questionHintText,
        ),
        maxLines: 1,
        onChanged: (value) {
          setState(() {
            _question = value;
          });
        },
      ),
    );
  }

  Widget _takeColorRow() {
    return Row(
      children: [
        Text(
          takeColorTitle,
          style: context.theme.primaryTextTheme.headline6,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(context.lowValue),
            color: _itemColor,
          ),
          width: context.mediumValue,
          height: context.mediumValue,
        ),
        _buildTakeColorButton(),
      ],
    );
  }

  IconButton _buildTakeColorButton() {
    return IconButton(
      splashRadius: 20,
      color: Colors.white,
      icon: const Icon(Icons.color_lens, color: Colors.black),
      onPressed: () async {
        _itemColor = await showDialog(
          barrierDismissible: false,
          context: context,
          builder: (BuildContext context) {
            return const ShowColorPicker();
          },
        );
        setState(() {});
      },
    );
  }
}
