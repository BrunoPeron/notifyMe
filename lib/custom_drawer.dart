import 'package:flutter/material.dart';

import 'cabecalho.dart';
import 'cabecalho_cat.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  String _selectedIndex = '/home';

  _onSelectItem(String index) {
    setState(() => _selectedIndex = index);
    if (index == _selectedIndex) Navigator.of(context).pop();
    Navigator.of(context).pushNamed(index);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Text('Menu'),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: AssetImage("lib/assets/sasuke-uchiha.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            title: Text('CADASTRO'),
            selected: '/cadastro' == _selectedIndex,
            onTap: () {
              _onSelectItem('/cadastro');
            },
          ),

          ListTile(
            title: Text('CABECALHO'),
            selected: '/cabecalho' == _selectedIndex,
            onTap: () {
              _onSelectItem('/cabecalho');
            },
          ),
          ListTile(
            title: Text('MAIN'),
            selected: '/main' == _selectedIndex,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CabecalhoCat()),
              );
            },
          ),
          ListTile(
            title: Text('Forum'),
            selected: '/cabecalho' == _selectedIndex,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Cabecalho()),
              );
            },
          ),
          // Container(
          //   height: 100,
          //   color: Colors.transparent,
          // ),
          // DrawerTile(
          //   iconData: Icons.home,
          //   title: 'HOME',
          //   page: 0,
          // ),
        ],
      ),
    );
  }
}
