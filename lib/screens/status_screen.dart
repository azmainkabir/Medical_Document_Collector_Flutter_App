import 'package:document_collector/single_item_design/status_received_item.dart';
import 'package:document_collector/single_item_design/status_waiting_item.dart';
import 'package:flutter/material.dart';

class StatusScreen extends StatefulWidget {
  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen>  with SingleTickerProviderStateMixin {
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
                  Text(
                    'Status',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                    ),
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
                          text: 'Waiting',
                        ),
                        Tab(
                          text: 'Received',
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
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return StatusWaitingItem();
                            },
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          child: ListView.builder(
                            itemCount: 6,
                            itemBuilder: (context, index) {
                              return StatusReceivedItem();
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
