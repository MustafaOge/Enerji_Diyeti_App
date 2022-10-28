import 'package:flutter/material.dart';

bool b = false;
int c = 512;
bool bs2 = false;

class MyToggleButton extends StatefulWidget {
  const MyToggleButton({Key? key}) : super(key: key);

  @override
  _MyToggleButtonState createState() => _MyToggleButtonState();
}

class _MyToggleButtonState extends State<MyToggleButton> {
  List<bool> isSelected = List.generate(6, (_) => false);

  Widget build(BuildContext context) {
    return ToggleButtons(
      selectedBorderColor: Colors.blue,
      fillColor: Colors.blue,
      selectedColor: Colors.white,
      borderColor: Colors.blue[200],
      textStyle: TextStyle(color: Colors.white),
      borderRadius: BorderRadius.circular(10),
      children: <Widget>[
        Text("1"),
        Text("2"),
        Text("3"),
        Text("4"),
        Text("5"),
        Text("6+"),
      ],
      isSelected: isSelected,
      onPressed: (int index) {
        setState(() {
          for (int buttonIndex = 0;
              buttonIndex < isSelected.length;
              buttonIndex++) {
            if (buttonIndex == index) {
              isSelected[buttonIndex] = true;
            } else {
              isSelected[buttonIndex] = false;
            }
            c = 914;
            for (var i = 0; i < 6; i++) {
              if (isSelected[i] == true) {
                i++;
                c += i * 65;
                print(c);
              }
            }
          }
        });
        b = true;
        print(isSelected);
      },
    );
  }
}

class MyToggleButton2 extends StatefulWidget {
  const MyToggleButton2({Key? key}) : super(key: key);

  @override
  _MyToggleButton2State createState() => _MyToggleButton2State();
}

class _MyToggleButton2State extends State<MyToggleButton2> {
  @override
  // ignore: override_on_non_overriding_member
  List<bool> isSelected = List.generate(4, (_) => false);

  Widget build(BuildContext context) {
    return ToggleButtons(
      selectedBorderColor: Colors.blue,
      fillColor: Colors.blue,
      selectedColor: Colors.white,
      borderColor: Colors.blue[200],
      textStyle: TextStyle(color: Colors.white),
      borderRadius: BorderRadius.circular(10),
      children: <Widget>[
        Text("        5 DK      "),
        Text("        5-20 D    "),
        Text("      21-30 DK    "),
        Text("      30+ DK      "),
      ],
      isSelected: isSelected,
      onPressed: (int index) {
        setState(() {
          for (int buttonIndex = 0;
              buttonIndex < isSelected.length;
              buttonIndex++) {
            if (buttonIndex == index) {
              isSelected[buttonIndex] = true;
            } else {
              isSelected[buttonIndex] = false;
            }
          }
        });
        b = true;
        if (isSelected[0] == true) {
        } else if (isSelected[1] == true) {
          bs2 = true;
          c += 120;
        } else {
          c += 240;
          bs2 = true;
        }
        /*ignore: unused_local_variable
        for (var i in isSelected) {
          print("value: $i");
          print(isSelected.length);
        }
        */
      },
    );
  }
}

class MyToggleButton3 extends StatefulWidget {
  const MyToggleButton3({Key? key}) : super(key: key);

  @override
  _MyToggleButton3State createState() => _MyToggleButton3State();
}

class _MyToggleButton3State extends State<MyToggleButton3> {
  List<bool> isSelected = List.generate(2, (_) => false);

  Widget build(BuildContext context) {
    return ToggleButtons(
      selectedBorderColor: Colors.blue,
      fillColor: Colors.blue,
      selectedColor: Colors.white,
      borderColor: Colors.blue[200],
      textStyle: TextStyle(color: Colors.white),
      borderRadius: BorderRadius.circular(10),
      children: <Widget>[
        Text("    Çamaşır Makinesi    "),
        Text("        Elde Yıkama        "),
      ],
      isSelected: isSelected,
      onPressed: (int index) {
        setState(() {
          for (int buttonIndex = 0;
              buttonIndex < isSelected.length;
              buttonIndex++) {
            if (buttonIndex == index) {
              isSelected[buttonIndex] = true;
            } else {
              isSelected[buttonIndex] = false;
            }
          }
        });
        if (isSelected[0] == true) {
        } else {
          c += 40;
        }
        print(isSelected);
        b = true;
      },
    );
  }
}

class MyToggleButton4 extends StatefulWidget {
  const MyToggleButton4({Key? key}) : super(key: key);

  @override
  _MyToggleButton4State createState() => _MyToggleButton4State();
}

class _MyToggleButton4State extends State<MyToggleButton4> {
  List<bool> isSelected = List.generate(6, (_) => false);

  Widget build(BuildContext context) {
    return ToggleButtons(
      selectedBorderColor: Colors.blue,
      fillColor: Colors.blue,
      selectedColor: Colors.white,
      borderColor: Colors.blue[200],
      textStyle: TextStyle(color: Colors.white),
      borderRadius: BorderRadius.circular(10),
      children: <Widget>[
        Text("1"),
        Text("2"),
        Text("3"),
        Text("4"),
        Text("5"),
        Text("6+"),
      ],
      isSelected: isSelected,
      onPressed: (int index) {
        setState(() {
          for (int buttonIndex = 0;
              buttonIndex < isSelected.length;
              buttonIndex++) {
            if (buttonIndex == index) {
              isSelected[buttonIndex] = true;
            } else {
              isSelected[buttonIndex] = false;
            }
          }
        });
        for (var i = 0; i < 6; i++) {
          if (isSelected[i] == true) {
            i++;
            c += i * 60;
            print(c);
          }
        }
        print(isSelected);
        b = true;
      },
    );
  }
}

class MyToggleButton5 extends StatefulWidget {
  const MyToggleButton5({Key? key}) : super(key: key);

  @override
  _MyToggleButton5State createState() => _MyToggleButton5State();
}

class _MyToggleButton5State extends State<MyToggleButton5> {
  List<bool> isSelected = List.generate(2, (_) => false);

  Widget build(BuildContext context) {
    return ToggleButtons(
      selectedBorderColor: Colors.blue,
      fillColor: Colors.blue,
      selectedColor: Colors.white,
      borderColor: Colors.blue[200],
      textStyle: TextStyle(color: Colors.white),
      borderRadius: BorderRadius.circular(10),
      children: <Widget>[
        Text("    Bulaşık Makinesi    "),
        Text("       Elde Yıkama      "),
      ],
      isSelected: isSelected,
      onPressed: (int index) {
        setState(() {
          for (int buttonIndex = 0;
              buttonIndex < isSelected.length;
              buttonIndex++) {
            if (buttonIndex == index) {
              isSelected[buttonIndex] = true;
            } else {
              isSelected[buttonIndex] = false;
            }
          }
          b = true;
        });

        print(isSelected);
        if (isSelected[0] == true) {
        } else {
          c += 40;
        }
      },
    );
  }
}

class MyToggleButton6 extends StatefulWidget {
  const MyToggleButton6({Key? key}) : super(key: key);

  @override
  _MyToggleButton6State createState() => _MyToggleButton6State();
}

class _MyToggleButton6State extends State<MyToggleButton6> {
  List<bool> isSelected = List.generate(6, (_) => false);

  Widget build(BuildContext context) {
    return ToggleButtons(
      selectedBorderColor: Colors.blue,
      fillColor: Colors.blue,
      selectedColor: Colors.white,
      borderColor: Colors.blue[200],
      textStyle: TextStyle(color: Colors.white),
      borderRadius: BorderRadius.circular(10),
      children: <Widget>[
        Text("1"),
        Text("2"),
        Text("3"),
        Text("4"),
        Text("5"),
        Text("6+"),
      ],
      isSelected: isSelected,
      onPressed: (int index) {
        setState(() {
          for (int buttonIndex = 0;
              buttonIndex < isSelected.length;
              buttonIndex++) {
            if (buttonIndex == index) {
              isSelected[buttonIndex] = true;
            } else {
              isSelected[buttonIndex] = false;
            }
          }
        });
        for (var i = 0; i < 6; i++) {
          if (isSelected[i] == true) {
            i++;
            c += i * 15;
            print(c);
          }
        }
        print(isSelected);
        b = true;
      },
    );
  }
}

class MyToggleButton7 extends StatefulWidget {
  const MyToggleButton7({Key? key}) : super(key: key);

  @override
  _MyToggleButton7State createState() => _MyToggleButton7State();
}

class _MyToggleButton7State extends State<MyToggleButton7> {
  List<bool> isSelected = List.generate(2, (_) => false);

  Widget build(BuildContext context) {
    return ToggleButtons(
      borderRadius: BorderRadius.circular(10),
      selectedBorderColor: Colors.blue,
      fillColor: Colors.blue,
      selectedColor: Colors.white,
      borderColor: Colors.blue[200],
      textStyle: TextStyle(color: Colors.white),
      children: <Widget>[
        Text("                    Evet                   "),
        Text("                    Hayır                  "),
      ],
      isSelected: isSelected,
      onPressed: (int index) {
        setState(() {
          for (int buttonIndex = 0;
              buttonIndex < isSelected.length;
              buttonIndex++) {
            if (buttonIndex == index) {
              isSelected[buttonIndex] = true;
            } else {
              isSelected[buttonIndex] = false;
            }
          }
        });

        print(isSelected);
        if (isSelected[0] == true) {
          c += 40;
        }

        b = true;
      },
    );
  }
}

class MyToggleButton8 extends StatefulWidget {
  const MyToggleButton8({Key? key}) : super(key: key);

  @override
  _MyToggleButton8State createState() => _MyToggleButton8State();
}

class _MyToggleButton8State extends State<MyToggleButton8> {
  @override
  // ignore: override_on_non_overriding_member
  List<bool> isSelected = List.generate(4, (_) => false);

  Widget build(BuildContext context) {
    return ToggleButtons(
      borderRadius: BorderRadius.circular(10),
      selectedBorderColor: Colors.blue,
      fillColor: Colors.blue,
      selectedColor: Colors.white,
      borderColor: Colors.blue[200],
      textStyle: TextStyle(color: Colors.white),
      children: <Widget>[
        Text("        5 DK      "),
        Text("        5-20 D    "),
        Text("      21-45 DK    "),
        Text("      45+ DK      "),
      ],
      isSelected: isSelected,
      onPressed: (int index) {
        setState(() {
          for (int buttonIndex = 0;
              buttonIndex < isSelected.length;
              buttonIndex++) {
            if (buttonIndex == index) {
              isSelected[buttonIndex] = true;
            } else {
              isSelected[buttonIndex] = false;
            }
          }
        });
        for (var i = 0; i < 4; i++) {
          if (isSelected[i] == true) {
            i++;
            c += i * 25;
            print(c);
          }
        }
        print(isSelected);
        b = true;
      },
    );
  }
}

class MyToggleButton9 extends StatefulWidget {
  const MyToggleButton9({Key? key}) : super(key: key);

  @override
  _MyToggleButton9State createState() => _MyToggleButton9State();
}

class _MyToggleButton9State extends State<MyToggleButton9> {
  @override
  // ignore: override_on_non_overriding_member
  List<bool> isSelected = List.generate(5, (_) => false);

  Widget build(BuildContext context) {
    return ToggleButtons(
      selectedBorderColor: Colors.blue,
      fillColor: Colors.blue,
      selectedColor: Colors.white,
      borderColor: Colors.blue[200],
      textStyle: TextStyle(color: Colors.white),
      borderRadius: BorderRadius.circular(10),
      children: <Widget>[
        Text("   800    "),
        Text("   1200   "),
        Text("   1800   "),
        Text("   2500   "),
        Text("   3000   "),
      ],
      isSelected: isSelected,
      onPressed: (int index) {
        setState(() {
          for (int buttonIndex = 0;
              buttonIndex < isSelected.length;
              buttonIndex++) {
            if (buttonIndex == index) {
              isSelected[buttonIndex] = true;
            } else {
              isSelected[buttonIndex] = false;
            }
          }
        });
        for (var i = 0; i < 5; i++) {
          if (isSelected[i] == true) {
            i++;
            c += i * 25;
            print(c);
          }
        }
        print(isSelected);
        b = true;
      },
    );
  }
}

class MyToggleButton10 extends StatefulWidget {
  const MyToggleButton10({Key? key}) : super(key: key);

  @override
  _MyToggleButton10State createState() => _MyToggleButton10State();
}

class _MyToggleButton10State extends State<MyToggleButton10> {
  List<bool> isSelected = List.generate(5, (_) => false);

  Widget build(BuildContext context) {
    return ToggleButtons(
      selectedBorderColor: Colors.blue,
      fillColor: Colors.blue,
      selectedColor: Colors.white,
      borderColor: Colors.blue[200],
      textStyle: TextStyle(color: Colors.white),
      borderRadius: BorderRadius.circular(10),
      children: <Widget>[
        Text("    0  KG   "),
        Text("    0-1 KG  "),
        Text("    1-2 KG  "),
        Text("    2-3 KG  "),
        Text("    3 KG+   "),
      ],
      isSelected: isSelected,
      onPressed: (int index) {
        setState(() {
          for (int buttonIndex = 0;
              buttonIndex < isSelected.length;
              buttonIndex++) {
            if (buttonIndex == index) {
              isSelected[buttonIndex] = true;
            } else {
              isSelected[buttonIndex] = false;
            }
          }
        });
        for (var i = 0; i < 5; i++) {
          if (isSelected[i] == true) {
            i++;
            c += i * 15;
            print(c);
          }
        }
        print(isSelected);
        b = true;
      },
    );
  }
}

class MyToggleButton11 extends StatefulWidget {
  const MyToggleButton11({Key? key}) : super(key: key);

  @override
  _MyToggleButton11State createState() => _MyToggleButton11State();
}

class _MyToggleButton11State extends State<MyToggleButton11> {
  List<bool> isSelected = List.generate(4, (_) => false);

  Widget build(BuildContext context) {
    return ToggleButtons(
      selectedBorderColor: Colors.blue,
      fillColor: Colors.blue,
      selectedColor: Colors.white,
      borderColor: Colors.blue[200],
      textStyle: TextStyle(color: Colors.white),
      borderRadius: BorderRadius.circular(10),
      children: <Widget>[
        Text("      0         "),
        Text("      1-3       "),
        Text("      4-6       "),
        Text("      6+        "),
      ],
      isSelected: isSelected,
      onPressed: (int index) {
        setState(() {
          for (int buttonIndex = 0;
              buttonIndex < isSelected.length;
              buttonIndex++) {
            if (buttonIndex == index) {
              isSelected[buttonIndex] = true;
            } else {
              isSelected[buttonIndex] = false;
            }
          }
        });
        print(isSelected);
        for (var i = 0; i < 4; i++) {
          if (isSelected[i] == true) {
            if (i == 1) {
            } else {
              i++;
              c += i * 160;
            }
            print(c);
          }
        }
        b = true;
      },
    );
  }
}

class MyToggleButton12 extends StatefulWidget {
  const MyToggleButton12({Key? key}) : super(key: key);

  @override
  _MyToggleButton12State createState() => _MyToggleButton12State();
}

class _MyToggleButton12State extends State<MyToggleButton12> {
  List<bool> isSelected = List.generate(6, (_) => false);

  Widget build(BuildContext context) {
    return ToggleButtons(
      selectedBorderColor: Colors.blue,
      fillColor: Colors.blue,
      selectedColor: Colors.white,
      borderColor: Colors.blue[200],
      textStyle: TextStyle(color: Colors.white),
      borderRadius: BorderRadius.circular(10),
      children: <Widget>[
        Text("0"),
        Text("1"),
        Text("2"),
        Text("3"),
        Text("4"),
        Text("5+"),
      ],
      isSelected: isSelected,
      onPressed: (int index) {
        setState(() {
          for (int buttonIndex = 0;
              buttonIndex < isSelected.length;
              buttonIndex++) {
            if (buttonIndex == index) {
              isSelected[buttonIndex] = true;
            } else {
              isSelected[buttonIndex] = false;
            }
          }
        });
        for (var i = 0; i < 6; i++) {
          if (isSelected[i] == true) {
            if (i == 1) {
            } else {
              i++;
              c += i * 100;
            }
            print(c);
          }
        }
        print(isSelected);
        b = true;
      },
    );
  }
}
