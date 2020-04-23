import 'package:drawer_menu/src/pages/first.dart';
import 'package:drawer_menu/src/pages/second.dart';
import 'package:flutter/material.dart';

import 'package:hidden_drawer_menu/hidden_drawer/hidden_drawer_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 List<ScreenHiddenDrawer> items = new List();
  @override
  void initState() {
    items.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: 'Pagina 1',
          baseStyle: TextStyle( color: Colors.white.withOpacity(0.8), fontSize: 28.0 ),
          colorLineSelected: Colors.teal,
        ),
       FirstPage() ));

    items.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: 'Pagina 2',
          baseStyle: TextStyle( color: Colors.white.withOpacity(0.8), fontSize: 28.0 ),
          colorLineSelected: Colors.orange,
        ),
       SecondPage() ));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.blueGrey,
      backgroundColorAppBar: Colors.indigoAccent,
      screens: items,
            //typeOpen: TypeOpen.FROM_RIGHT,
        //    enableScaleAnimin: true,
        //    enableCornerAnimin: true,
        //    slidePercent: 80.0,
            verticalScalePercent: 50.0,
            contentCornerRadius: 40.0,
        //    iconMenuAppBar: Icon(Icons.menu),
        //    backgroundContent: DecorationImage((image: ExactAssetImage('assets/bg_news.jpg'),fit: BoxFit.cover),
            whithAutoTittleName: true,
           styleAutoTittleName: TextStyle(color: Colors.white),
        //    actionsAppBar: <Widget>[],
        //    backgroundColorContent: Colors.blue,
        //    elevationAppBar: 4.0,
          // tittleAppBar: Center(child: Icon(Icons.ac_unit),),
            enableShadowItensMenu: true,
           backgroundMenu: DecorationImage(
             image:NetworkImage('https://i.pinimg.com/originals/6b/ff/81/6bff8155890bfd6ece2b3213832e8045.jpg'),
              
              // ExactAssetImage('assets/bg_news.jpg'),
           fit: BoxFit.cover),
    );
  }
}