import 'package:enerji_diyeti_5/core/constants/theme.dart';
import 'package:enerji_diyeti_5/features/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text(
          "Enerji Diyeti",
          style: kTitle,
        ),
        elevation: 0.0,
        Color: backGroundColor,
      ),
      backgroundColor: backGroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/tree.png"),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(26.0),
                    child: Text(
                      "Bu Uygulama Tubitak Yarışması için Ayşe yılmaz rehberliğinde Ayşenur Öğe ve Fatma yılmaz öğrencilerinin projesidir",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: containerColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 0,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.navigate_before,
                  size: 64,
                  color: Colors.amber,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
