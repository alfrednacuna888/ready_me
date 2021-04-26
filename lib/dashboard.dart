import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  _DashboardState() {
    print("test");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[400],
      body: SafeArea(
          child: CustomScrollView(slivers: [
        SliverPadding(
            padding: EdgeInsets.only(bottom: 8.0),
            sliver: SliverAppBar(
              backgroundColor: Colors.indigo[400],
              floating: true,
              pinned: true,
              expandedHeight: 150.0,
              flexibleSpace: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        color: Colors.indigo[400],
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                            child: SizedBox(
                                width: 100,
                                child: Image.asset('assets/images/logo.png'))))
                  ]),
            )),
        SliverList(
          delegate: SliverChildListDelegate(_buildList()),
        ),
      ])),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.indigo[500],
        onPressed: () {
          print("adding");
          setState(() {
            listItems = [
              ...listItems,
              Center(
                  child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text('Task Item ${listItems.length}',
                          style: TextStyle(fontSize: 22.0))))
            ];
          });
        },
      ),
    );
  }

  List<Widget> listItems = [];

  List _buildList() {
    return listItems;
  }
}
