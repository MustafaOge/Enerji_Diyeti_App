import 'package:enerji_diyeti_5/features/drawer/view/about_page.dart';
import 'package:enerji_diyeti_5/features/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: ListTileTheme(
          textColor: Colors.white,
          iconColor: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Spacer(),
              Align(
                alignment: Alignment(-0.7, -0.5),
                child: Text(
                  "Enerji Diyeti",
                  style: TextStyle(color: Colors.white, fontSize: 28.0),
                ),
              ),
              Spacer(),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                leading: Icon(Icons.home),
                title: Text('Ana Sayfa'),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AboutPage()));
                },
                leading: Icon(Icons.assignment),
                title: Text('Uygulama Hakkında'),
              ),
              Spacer(),
              Spacer(),
              Spacer(),
              ListTile(
                onTap: () {
                  SystemNavigator.pop();
                },
                leading: Icon(Icons.exit_to_app),
                title: Text('Çıkış'),
              ),
              Spacer(),
              DefaultTextStyle(
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white54,
                ),
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 16.0,
                  ),
                  child: Text('Terms of Service | Privacy Policy'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
