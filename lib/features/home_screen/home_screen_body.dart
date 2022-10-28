import 'package:flutter/material.dart';

class HomeScreenBody extends StatefulWidget {
  static const routename = "/product-detail";

  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  _HomeScreenBodyState createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Wrap(children: [
                Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: MyMainCon(
                              pagePath: "energySave",
                              title: "Tasarruf Öğren",
                              iconPath: "assets/images/png1.png",
                            ),
                          ),
                          Expanded(
                            child: MyMainCon(
                              pagePath: "energySave",
                              title: "Faturam Düşüyor",
                              iconPath: "assets/images/fatura.png",
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: MyMainCon(
                              pagePath: "foodScreen",
                              title: "Yemek çöpe atılmaz",
                              iconPath: "assets/images/tabak.png",
                            ),
                          ),
                          Expanded(
                            child: MyMainCon(
                              pagePath: "waterMain",
                              title: "Su ayak izi",
                              iconPath: "assets/images/suayakizi.jpg",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
// ignore: must_be_immutable
class MyMainCon extends StatelessWidget {
  String pagePath;
  final String iconPath;
  final String title;

  MyMainCon({
    Key? key,
    required this.iconPath,
    required this.title,
    required this.pagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        InkWell(
          child: TextButton(
            onPressed: () => Navigator.pushNamed(context, '$pagePath'),
            child: Container(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Wrap(
                  children: [
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 40, right: 40, top: 20, bottom: 5),
                          child: Image.asset(
                            iconPath,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              title,
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontFamily: "Review", fontSize: 15),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          /*onTap: () {
              Navigator.pushNamed(context, "$imagePath");
            },*/
        ),
      ],
    );
  }
}

class MyMainCard extends StatelessWidget {
  const MyMainCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(),
    );
  }
}
