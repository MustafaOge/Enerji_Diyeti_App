import 'package:enerji_diyeti_5/core/constants/theme.dart';
import 'package:enerji_diyeti_5/features/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

String food1 =
    "Bazı Besinlerin ne kadar su tüketilerek üretildiği hakkında fikir sahibi olabiliriz.";
String food2 =
    "çöpe dökülen her yemek, besin madellerini hazırlamak için kullanılan suyu israf ettiğimiz anlamına gelir.";
var liter;
int a = 15;

class FoodScreen extends StatefulWidget {
  const FoodScreen({Key? key}) : super(key: key);

  @override
  _FoodScreenState createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text(
          "Enerji Diyeti",
          style: kAppBar,
        ),
        Color: backGroundColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyContainer(
              color: Colors.grey,
              buttonText: food1,
              myTextTheme: kFoodContainer,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      TextButton(
                          style: TextButton.styleFrom(
                              primary: Colors.blue[900],
                              backgroundColor: containerColor,
                              //overlayColor: containerColor,
                              elevation: 5.0),
                          onPressed: () {
                            setState(() {
                              a = 40;
                              // ignore: unnecessary_statements
                            });
                          },
                          child: Text(
                            "1 Dilim Ekmek   ",
                            style: kFoodButton,
                          )),
                      TextButton(
                          style: TextButton.styleFrom(
                              primary: Colors.blue[900],
                              backgroundColor: containerColor,
                              onSurface: Colors.black,
                              elevation: 5.0),
                          onPressed: () {
                            setState(() {
                              a = 70;
                              // ignore: unnecessary_statements
                            });
                          },
                          child: Text(
                            "1 Adet Elma       ",
                            style: kFoodButton,
                          )),
                      TextButton(
                        style: TextButton.styleFrom(
                            primary: Colors.blue[900],
                            backgroundColor: containerColor,
                            onSurface: Colors.black,
                            elevation: 5.0),
                        onPressed: () {
                          setState(() {
                            a = 100;
                            // ignore: unnecessary_statements
                          });
                        },
                        child: Text(
                          "1 Porsiyon Pilav",
                          style: kFoodButton,
                        ),
                      ),
                      TextButton(
                          style: TextButton.styleFrom(
                              primary: Colors.blue[900],
                              backgroundColor: containerColor,
                              onSurface: Colors.black,
                              elevation: 5.0),
                          onPressed: () {
                            setState(() {
                              a = 200;
                              // ignore: unnecessary_statements
                            });
                          },
                          child: Text(
                            "1 Adet Yumurta ",
                            style: kFoodButton,
                          )),
                      TextButton(
                          style: TextButton.styleFrom(
                              primary: Colors.blue[900],
                              backgroundColor: containerColor,
                              onSurface: Colors.black,
                              elevation: 5.0),
                          onPressed: () {
                            setState(() {
                              a = 6000;
                              // ignore: unnecessary_statements
                            });
                          },
                          child: Text(
                            "1 Kilo Kırmızı Et ",
                            style: kFoodButton,
                          )),
                      TextButton(
                          style: TextButton.styleFrom(
                              primary: Colors.blue[900],
                              backgroundColor: containerColor,
                              onSurface: Colors.black,
                              elevation: 5.0),
                          onPressed: () {
                            setState(() {
                              a = 9200;
                              // ignore: unnecessary_statements
                            });
                          },
                          child: Text(
                            "1 Kilo Çay           ",
                            style: kFoodButton,
                          )),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Image.asset(
                      "assets/images/drop.png",
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: MediaQuery.of(context).size.height * 0.25,
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width * 0.30,
                        ),
                        child: Text(
                          "                 $a Lt",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox()
              ],
            ),
            MyContainer(
              color: containerColor,
              buttonText: food2,
              myTextTheme: kFoodContainerBlack,
            ),
          ],
        ),
      ),
    );
  }
}

class MyTextButton extends StatefulWidget {
  final String buttonName;

  const MyTextButton({
    Key? key,
    required this.buttonName,
  }) : super(key: key);

  @override
  _MyTextButtonState createState() => _MyTextButtonState();
}

class _MyTextButtonState extends State<MyTextButton> {
  List<int> liter = [12, 25, 43, 80];

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
            primary: Colors.white,
            backgroundColor: containerColor,
            onSurface: Colors.black,
            elevation: 5.0),
        onPressed: () {
          setState(() {
            // ignore: unnecessary_statements
            print(liter[2]);
          });
        },
        child: Text(
          widget.buttonName,
          style: kFoodButton,
        ));
  }
}

class MyContainer extends StatelessWidget {
  final String buttonText;
  final color;
  final myTextTheme;
  const MyContainer({
    Key? key,
    required this.buttonText,
    required this.color,
    required this.myTextTheme,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: color,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              buttonText,
              style: myTextTheme,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
