import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';
import 'package:projeto_app/custom_drawer.dart';
// import 'package:projeto_app/firstPage.dart';

class CabecalhoCat extends StatefulWidget {
  static const routeName = '/cabecalho';
  State<StatefulWidget> createState() {
    return _CabecalhoCat();
  }
}

class _CabecalhoCat extends State<CabecalhoCat> {
  @override
  void initState() {
    // SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
    searchBar = new SearchBar(
      inBar: false,
      setState: setState,
      onSubmitted: print,
      buildDefaultAppBar: buildAppBar,
    );
  }

  SearchBar searchBar;

  AppBar buildAppBar(BuildContext context) {
    return new AppBar(
        title: new Text('My Home Page'),
        actions: [searchBar.getSearchAction(context)]);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: CustomDrawer(),
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text: "Meus Favoritos"),
              Tab(text: "Categorias"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              children: [

              ],
            ),
            ListView(
              children: [

              ],
            ),
          ],
        ),
      ),
    );
  }

  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     drawer: CustomDrawer(),
  //     appBar: AppBar(
  //       title: Text('TESTE'),
  //     ),
  //     body: Container(
  //         width: double.infinity,
  //         height: 100,
  //         decoration: BoxDecoration(
  //           gradient: LinearGradient(
  //               begin: Alignment.topCenter,
  //               end: Alignment.bottomCenter,
  //               colors: [
  //                 Colors.blue,
  //                 Colors.blueGrey,
  //               ]),
  //         ),
  //         child:
  //             DefaultTabController(length: 2, child: buildScaffold(context))),
  //   );
  // }

  Widget buildScaffold(BuildContext context) {
    return TabBar(
        indicator: UnderlineTabIndicator(
            borderSide: BorderSide(color: Color(0xffff0863), width: 4.0),
            insets: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 0)),
        indicatorWeight: 15,
        indicatorSize: TabBarIndicatorSize.label,
        labelColor: Color(0xff2d386b),
        labelStyle: TextStyle(
            fontSize: 12, letterSpacing: 1.3, fontWeight: FontWeight.w500),
        unselectedLabelColor: Colors.black26,
        tabs: [
          Tab(
            child: Container(
                margin: EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width / 2.2,
                height: 40,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.green,
                      Colors.greenAccent,
                    ],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: Center(
                  child: Text(
                    'Botão 1'.toUpperCase(), //mudar para botão
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                )),
          ),
          Tab(
            child: Container(
                margin: EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width / 2.2,
                height: 40,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.green,
                      Colors.greenAccent,
                    ],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: Center(
                  child: Text(
                    'Botão 2'.toUpperCase(), //mudar para botão
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                )),
          ),
        ]);
  }
}
