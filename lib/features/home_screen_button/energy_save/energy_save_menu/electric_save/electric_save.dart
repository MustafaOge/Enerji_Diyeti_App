import 'package:enerji_diyeti_5/core/constants/theme.dart';
import 'package:enerji_diyeti_5/features/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

// ignore: must_be_immutable
class HeroAnimation extends StatelessWidget {
  var size, height, width;

  Widget build(BuildContext context) {
    timeDilation = 2.0; // 1.0 means normal animation speed.
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      appBar: MyAppBar(
        title: Text(
          "Enerji Diyeti",
          style: kAppBar,
        ),
        Color: backGroundColor,
      ),
      //mainAxisAlignment: MainAxisAlignment.spaceAround,

      body: Container(
        alignment: Alignment
            .center, //Set container alignment  then wrap the column with singleChildScrollView
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MyPhotoHero(
                      myImagePath: "assets/images/uy1.png",
                      myTextImage: "assets/images/ag1.png"),
                  MyPhotoHero(
                      myImagePath: "assets/images/uy2.jpg",
                      myTextImage: "assets/images/ag2.png"),
                ],
              ),
              SizedBox(height: height / 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MyPhotoHero(
                      myImagePath: "assets/images/uy3.jpg",
                      myTextImage: "assets/images/ag3.png"),
                  MyPhotoHero(
                      myImagePath: "assets/images/uy4.jpg",
                      myTextImage: "assets/images/ag4.png"),
                ],
              ),
              SizedBox(height: height / 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MyPhotoHero(
                      myImagePath: "assets/images/uy5.png",
                      myTextImage: "assets/images/ag5.png"),
                  MyPhotoHero(
                      myImagePath: "assets/images/uy8.png",
                      myTextImage: "assets/images/ag6.png"),
                ],
              ),
              SizedBox(height: height / 10),
            ],
          ),
        ),
      ),
    );
  }
}

class MyPhotoHero extends StatelessWidget {
  final String myImagePath;
  final String myTextImage;

  const MyPhotoHero({
    Key? key,
    required this.myImagePath,
    required this.myTextImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PhotoHero(
      photo: ("$myImagePath"),
      width: 100.0,
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute<void>(builder: (BuildContext context) {
          return Scaffold(
            appBar: MyAppBar(
              title: Text(
                "Enerji Diyeti",
                style: kAppBar,
              ),
              Color: backGroundColor,
            ),
            body: Container(
              // The blue background emphasizes that it's a new route.
              color: backGroundColor,
              padding: const EdgeInsets.all(16.0),
              alignment: Alignment.center,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    PhotoHero(
                      photo: ("$myImagePath"),
                      width: 150.0,
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    // Image.asset("assets/images/ag12.png"),
                    //Image.asset("assets/images/ag13.png"),
                    Image.asset(myTextImage),
                  ],
                ),
              ),
            ),
          );
        }));
      },
    );
  }
}

class PhotoHero extends StatelessWidget {
  const PhotoHero(
      {Key? key, required this.photo, required this.onTap, required this.width})
      : super(key: key);

  final String photo;
  final VoidCallback onTap;
  final double width;

  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Hero(
        tag: photo,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Image.asset(
              photo,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}

class Photo extends StatelessWidget {
  Photo(
      {Key? key, required this.photo, required this.color, required this.onTap})
      : super(key: key);

  final String photo;
  final Color color;
  final VoidCallback onTap;

  Widget build(BuildContext context) {
    return Material(
      // Slightly opaque color appears where the image has transparency.
      color: Theme.of(context).primaryColor.withOpacity(0.25),
      child: InkWell(
          onTap: onTap,
          child: Image.asset(
            photo,
            fit: BoxFit.contain,
          )),
    );
  }
}
