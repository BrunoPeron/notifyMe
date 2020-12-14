import 'package:flutter/material.dart';
import 'package:projeto_app/searchAction/dataList.dart';
import 'package:projeto_app/searchAction/searchbar.dart';

class ListagemPage extends StatefulWidget {
  @override
  _ListagemPageState createState() => _ListagemPageState();
}

class _ListagemPageState extends State<ListagemPage> {
  bool _checkBoxValue = true;
  int _listSelected = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listagem"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: DataSearch(
                    [
                      ListWords('titlelist', 'definitionlist'),
                      ListWords('teste', 'teste'),
                    ],
                  ),
                );
              })
        ],
      ),
      drawer: Drawer(
        child: Container(
          height: 200,
          color: Colors.grey,
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.blue,
                      Colors.blueGrey,
                    ]),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Card(
                    color: Colors.transparent,
                    shadowColor: Colors.transparent,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.network(
                            'https://flutter.io/images/catalog-widget-placeholder.png',
                            height: 150,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Flutter - 2019 - Macoratti.net ",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "http://www.macoratti.net",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Card(
                color: Colors.grey[300],
                margin: EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            children: [
                              RaisedButton(
                                disabledColor: Colors.grey,
                                onPressed: _listSelected == 1
                                    ? null
                                    : () => setState(() => _listSelected = 1),
                                child: Text('Sobre'),
                              ),
                              RaisedButton(
                                disabledColor: Colors.grey,
                                onPressed: _listSelected == 2
                                    ? null
                                    : () => setState(() => _listSelected = 2),
                                child: Text('Notícias'),
                              ),
                              RaisedButton(
                                disabledColor: Colors.grey,
                                onPressed: _listSelected == 3
                                    ? null
                                    : () => setState(() => _listSelected = 3),
                                child: Text('Comentários'),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Text('Notificações'),
                            Checkbox(
                              value: _checkBoxValue,
                              onChanged: (a) =>
                                  setState(() => _checkBoxValue = a),
                            ),
                          ],
                        )
                      ],
                    ),
                    if (_listSelected == 1)
                      Container(
                          padding: EdgeInsets.all(15),
                          height: MediaQuery.of(context).size.height / 3,
                          child: Text(
                              'SOBRE sobre SOBRE sobre SOBRE sobre SOBRE sobre SOBRE sobre SOBRE sobre SOBRE sobre SOBRE sobre SOBRE sobre SOBRE sobre SOBRE sobre SOBRE sobre')),
                    if (_listSelected == 2)
                      Container(
                        height: MediaQuery.of(context).size.height / 3,
                        child: ListView.separated(
                          itemCount: 20,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text('Notícia: $index'),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return Divider();
                          },
                        ),
                      ),
                    if (_listSelected == 3)
                      Container(
                        height: MediaQuery.of(context).size.height / 3,
                        child: ListView.separated(
                          itemCount: 20,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text('Comentário: $index'),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return Divider();
                          },
                        ),
                      ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
