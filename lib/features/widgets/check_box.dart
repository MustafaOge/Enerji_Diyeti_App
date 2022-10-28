import 'package:flutter/material.dart';

bool _checkbox1 = false;
bool _checkbox2 = false;
bool _checkbox3 = false;

String default1 =
    "Çamaşır makinesini tam dolu ve ön yıkamasız çalıştıracağıma söz veriyorum.";
String default1C =
    " Çamaşırları ön yıkamadan geçirmek yaklaşık 10 litre fazladan su harcamanıza neden olur.";

String default2 =
    "Mutfak musluklarının kullandığım süreyi yarıya indireceğime söz veriyorum.";
String default3 = "Kıyafet masrafımı yarıya indireceğime söz veriyorum.";
String default3C = "Bir tişört üretmek için harcanan su miktarı 2700 litredir.";

class CheckBox extends StatefulWidget {
  const CheckBox({Key? key}) : super(key: key);

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        iPromise(),
        iPromise1(),
        iPromise2(),
      ],
    );
  }

  Column iPromise() {
    return Column(
      children: [
        Row(
          children: [
            Checkbox(
              value: _checkbox1,
              onChanged: (value) {
                setState(() {
                  _checkbox1 = !_checkbox1;
                });
              },
            ),
            Expanded(
              child: Text(
                default1,
                style: TextStyle(fontSize: 14),
              ),
            ),
          ],
        ),
        Text(
          default1C,
          style: TextStyle(fontSize: 12, color: Colors.grey),
        ),
      ],
    );
  }

  Column iPromise1() {
    return Column(
      children: [
        Row(
          children: [
            Checkbox(
              value: _checkbox2,
              onChanged: (value) {
                setState(() {
                  _checkbox2 = !_checkbox2;
                });
              },
            ),
            Expanded(
              child: Text(
                default2,
                style: TextStyle(fontSize: 14),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Column iPromise2() {
    return Column(
      children: [
        Row(
          children: [
            Checkbox(
              value: _checkbox3,
              onChanged: (value) {
                setState(() {
                  _checkbox3 = !_checkbox3;
                });
              },
            ),
            Expanded(
              child: Text(
                default3,
                style: TextStyle(fontSize: 14),
              ),
            ),
          ],
        ),
        Expanded(
          child: Text(
            default3C,
            style: TextStyle(fontSize: 14),
          ),
        ),
      ],
    );
  }
}
