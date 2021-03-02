import 'package:document_collector/single_item_design/home_centers_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:document_collector/single_item_design/home_papers_item.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF438BE4),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25.0,
                        foregroundColor: Colors.blueGrey,
                        child: Icon(
                          Icons.person_outline,
                          size: 40.0,
                          color: Colors.black45,
                        ),
                      ),
                      Spacer(),
                      CircleAvatar(
                        foregroundColor: Colors.black,
                        child: Icon(
                          Icons.search,
                          size: 26.0,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Profile Name',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    children: [
                      Text(
                        'ID: M1234',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'Total Papers: 08',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Expanded(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFEBF1F9),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(28.0),
                          topRight: Radius.circular(28.0)),
                    ),
                    child: TabBar(
                      labelPadding: EdgeInsets.all(4.0),
                      labelStyle: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                      ),
                      indicatorWeight: 4.0,
                      unselectedLabelColor: Color(0xFF797B7D),
                      labelColor: Color(0xFF4C9AF9),
                      tabs: [
                        Tab(
                          text: 'Papers',
                        ),
                        Tab(
                          text: 'Centers',
                        ),
                      ],
                      controller: _tabController,
                      indicatorSize: TabBarIndicatorSize.tab,
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        Container(
                          color: Colors.white,
                          child: ListView.builder(
                            itemCount: 8,
                            itemBuilder: (context, index) {
                              return HomePapersItem();
                            },
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          child: ListView.builder(
                            itemCount: 8,
                            itemBuilder: (context, index) {
                              return HomeCentersItem();
                            },
                          ),
                        ),
                      ],
                      controller: _tabController,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
