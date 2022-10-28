import 'dart:math';

import 'package:enerji_diyeti_5/core/constants/theme.dart';
import 'package:enerji_diyeti_5/features/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';

final List<String> imagesList = [
  'https://imgyukle.com/f/2022/03/09/EizBJc.jpg',
  'https://imgyukle.com/f/2022/03/09/EizmkN.png',
  'https://imgyukle.com/f/2022/03/09/EizvHP.jpg',
  'https://imgyukle.com/f/2022/03/09/Eiz1wY.jpg',
  'https://imgyukle.com/f/2022/03/09/Eiz2pv.png',
];
final List<String> mainText = [
  'Tasarruf ediyorum, çevreyi koruyorum.',
  ' Mutlu yarınlar için enerjini boşa harcama.',
  'Enerji tasarrufu çevrenin korunması demektir.',
  'Enerjini koru, dünyayı koru.',
  'Gereksiz harcanan enerji, kaybedilen emektir.',
  'Geleceğini düşün, enerjine sahip çık.',
];
Random random = new Random();
int randomNumber = random.nextInt(5);

final List<String> titles = [
  ' Coffee ',
  ' Bread ',
  ' Gelato ',
  ' Ice Cream ',
];

class MyAppTo extends StatefulWidget {
  @override
  _MyAppToState createState() => _MyAppToState();
}

class _MyAppToState extends State<MyAppTo> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  viewportFraction: 1.0,

                  // enlargeCenterPage: true,
                  //scrollDirection: Axis.vertical,
                  onPageChanged: (index, reason) {
                    setState(
                      () {
                        _currentIndex = index;
                      },
                    );
                  },
                ),
                items: imagesList
                    .map(
                      (item) => InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        ),
                        child: Container(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.height * 3,
                          margin: EdgeInsets.only(),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                            child: Stack(
                              children: <Widget>[
                                Image.network(
                                  item,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                                Center(

                                    /* Text(
                                  '${titles[_currentIndex]}',
                                  style: TextStyle(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.black45,
                                    color: Colors.white,
                                  ),
                                ),*/
                                    ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width * 0.45,
                ),
                child: IndexIndicator(currentIndex: _currentIndex),
              ),
            ],
          ),
        ),
        //  IndexIndicator(currentIndex: _currentIndex),
        Center(
          child: Text(
            mainText[randomNumber],
            style: kCenter,
          ),
        ),
      ],
    );
  }
}

class IndexIndicator extends StatelessWidget {
  const IndexIndicator({
    Key? key,
    required int currentIndex,
  })  : _currentIndex = currentIndex,
        super(key: key);

  final int _currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: imagesList.map((urlOfItem) {
        int index = imagesList.indexOf(urlOfItem);
        return Container(
          width: 10.0,
          height: 10.0,
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentIndex == index
                ? Color.fromRGBO(0, 0, 0, 0.8)
                : Color.fromRGBO(0, 0, 0, 0.3),
          ),
        );
      }).toList(),
    );
  }
}
