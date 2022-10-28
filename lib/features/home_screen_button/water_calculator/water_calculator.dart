import 'dart:async';
import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:enerji_diyeti_5/core/constants/theme.dart';
import 'package:enerji_diyeti_5/features/home_screen/home_screen.dart';
import 'package:enerji_diyeti_5/features/home_screen_button/water_calculator/toggle_buttons.dart';
import 'package:enerji_diyeti_5/features/widgets/check_box.dart';
import 'package:enerji_diyeti_5/features/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

String ayakIziTanim =
    "Bir kişinin ortalama tükettiği su miktarına su ayak izi denir. Su ayak izinizi hesaplayarak, ev ekonomine ve çevreye fayda sağlayabilirsin";

class WaterMain extends StatefulWidget {
  const WaterMain({Key? key}) : super(key: key);

  @override
  _WaterMainState createState() => _WaterMainState();
}

class _WaterMainState extends State<WaterMain> {
  // ignore: unused_field
  bool _checkbox = false;
  @override

  // ignore: override_on_non_overriding_member
  bool isChecked = false;
  int a = 1;
  bool _checkbox1 = false;
  bool _checkbox2 = false;
  bool _checkbox3 = false;

  List<String> question = [
    "-",
    "haftada kaç kere duş alıyorsunuz?",
    "ortalama duş süreniz?",
    "Çamaşırlarınızı nasıl yıkıyorsunuz?",
    "Haftada kaç kere çamaşır yıkıyorsunuz?",
    "Bulaşıklarınızı nasıl yıkıyorsunuz?",
    "Haftada kaç kez bulaşık yıkıyorsunuz?",
    "Bulaşıklarınızı makineye atmadan önce sudan geçiriyor musunuz?",
    "Mutfak musluklarını bir günde ne kadar süre kullanıyorsunuz?",
    "Aylık yaklaşık mutfak gideriniz (hane)",
    "Haftalık kırmızı et tüketiminiz (kg)",
    "Günde kaç bardak kahve içersiniz?",
    "Aracınız varsa ayda kaç kez yıkatıyorsunuz?",
  ];
  List<Widget> togleList = [
    MyToggleButton(),
    MyToggleButton(),
    MyToggleButton2(),
    MyToggleButton3(),
    MyToggleButton4(),
    MyToggleButton5(),
    MyToggleButton6(),
    MyToggleButton7(),
    MyToggleButton8(),
    MyToggleButton9(),
    MyToggleButton10(),
    MyToggleButton11(),
    MyToggleButton12(),
  ];
  late ConfettiController controllerTopCenter;
  // ignore: unused_local_variable
  bool isChecked1 = false;
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    setState(() {
      initController();
    });
  }

  void initController() {
    controllerTopCenter =
        ConfettiController(duration: const Duration(seconds: 1));
  }

  List<String> myPage = ["newMethod(),"];

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: backGroundColor,
      appBar: MyAppBar(
        title: Text(
          "Enerji Diyeti",
          style: kTitle,
        ),
        elevation: 0.0,
        Color: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                  spreadRadius: 0,
                  color: Colors.grey,
                  offset: Offset(0, 6), //(x,y)
                  blurRadius: 2.0,
                ),
              ],
            ),
            child: Column(
              children: [
                // ignore: dead_code
                if (a < 13) newMethod(context),
                if (a == 13) myResult(context)
              ],
            )),
      ),
    );
  }

// newMethod(context),
  Column newMethod(BuildContext context) {
    Object? url;
    print(url);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 26),
          child: Text(
            "Su Ayak İzi Hesapla",
            style: TextStyle(
                color: Colors.blue[800],
                fontSize: 18,
                fontFamily: "Crete Round"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 40, left: 40, top: 16),
          child: Text(
            ayakIziTanim,
            style: waterMain,
            textAlign: TextAlign.center,
          ),
        ),
        Image.asset("assets/images/s$a.jpg"),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            question[a],
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            alignment: Alignment.center,
            child: togleList[a],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                        ),
                      ),
                    ),
                    child: Text(
                      'GERİ',
                      style: TextStyle(color: Colors.blue[200]),
                    ),
                    onPressed: () {
                      setState(() {
                        if (a <= 1) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()),
                          );
                          b = false;
                        } else {
                          a--;
                          print(a);
                        }
                      });
                    },
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: SizedBox(
                  height: 10,
                  width: 10,
                ),
              ),
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                    ),
                    child: Text('İLERİ'),
                    onPressed: () {
                      setState(() {
                        if (b == true) {
                          if (a == 13) {
                          } else if (a < 13) {
                            a++;
                          } else {
                            print(a);
                          }
                        }
                        b = false;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Container myResult(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.white,
          offset: Offset(0.0, 1.0), //(x,y)
          blurRadius: 6.0,
        ),
      ]),
      child: Column(
        children: [
          Center(
            child: Column(
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Su ayak İzin ',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                    children: <TextSpan>[
                      TextSpan(
                          text: '$c',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red[900])),
                      TextSpan(text: ' lt/gün!'),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: _checkbox1,
                                onChanged: (value) {
                                  setState(() {
                                    if (_checkbox1 == false) {
                                      _checkbox1 = true;
                                      c -= 10;
                                    } else {
                                      _checkbox1 = false;
                                      c += 10;
                                    }
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
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              default1C,
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: _checkbox2,
                          onChanged: (value) {
                            setState(() {
                              if (_checkbox2 == false) {
                                _checkbox2 = true;
                                c -= 30;
                              } else {
                                _checkbox2 = false;
                                c += 30;
                              }
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
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: _checkbox3,
                          onChanged: (value) {
                            setState(() {
                              if (_checkbox3 == false) {
                                _checkbox3 = true;
                                c -= 120;
                              } else {
                                _checkbox3 = false;
                                c += 120;
                              }
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
                    Text(
                      default3C,
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    buildButton(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Align buildButton() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Stack(
          children: [
            buildConfettiWidget(controllerTopCenter, pi / 1),
            buildConfettiWidget(controllerTopCenter, pi / 4),
            Center(
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                ),
                child: Text('SEN DE SÖZ VER'),
                onPressed: () {
                  // ignore: unrelated_type_equality_checks
                  if ((_checkbox1 == true) &
                      (_checkbox2 == true) &
                      (_checkbox3 == true)) {
                    print("dugmeye basildiii");
                    controllerTopCenter.play();
                    Future.delayed(Duration(seconds: 3), () {
                      // 5s over, navigate to a new page
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => HomeScreen()));
                    });
                  }
                  // ignore: unused_element
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Align buildConfettiWidget(controller, double blastDirection) {
    return Align(
      alignment: Alignment.topCenter,
      child: ConfettiWidget(
        maximumSize: Size(30, 30),
        shouldLoop: false,
        confettiController: controller,
        blastDirection: blastDirection,
        blastDirectionality: BlastDirectionality.directional,
        maxBlastForce: 20, // set a lower max blast force
        minBlastForce: 8, // set a lower min blast force
        emissionFrequency: 1,
        numberOfParticles: 8, // a lot of particles at once
        gravity: 1,
      ),
    );
  }
}
