import 'package:flutter/material.dart';

class HistoryScreen extends StatefulWidget {
  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
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
                    'History',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(28.0),
                      topRight: Radius.circular(28.0)),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: 25.0,
                      ),
                      Text(
                        'Recently Opened',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Color(0xFF3D5E87),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      Text(
                        'Today, 07 February 2021',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Color(0xFF797B7D),
                        ),
                      ),
                      Divider(
                        color: Colors.black45,
                      ),
                      ListTile(
                        onTap: () {
                          // functionality will go here.
                        },
                        leading: Container(
                          height: 45.0,
                          width: 45.0,
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFFAB6FE3),
                                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.picture_in_picture_outlined,
                                  color: Colors.white,
                                  size: 30.0,
                                ),
                              )
                          ),
                        ),
                        title: Text(
                          'Report Name',
                          style: TextStyle(
                            color: Color(0xFF3D5E87),
                            fontSize: 16.0,
                          ),
                        ),
                        subtitle: Text(
                          'Center Name',
                          style: TextStyle(
                            color: Color(0xFFA8C3EC),
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          // functionality will go here.
                        },
                        leading: Container(
                          height: 45.0,
                          width: 45.0,
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFFAB6FE3),
                                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.picture_in_picture_outlined,
                                  color: Colors.white,
                                  size: 30.0,
                                ),
                              )
                          ),
                        ),
                        title: Text(
                          'Report Name',
                          style: TextStyle(
                            color: Color(0xFF3D5E87),
                            fontSize: 16.0,
                          ),
                        ),
                        subtitle: Text(
                          'Center Name',
                          style: TextStyle(
                            color: Color(0xFFA8C3EC),
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          // functionality will go here.
                        },
                        leading: Container(
                          height: 45.0,
                          width: 45.0,
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFFAB6FE3),
                                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.picture_in_picture_outlined,
                                  color: Colors.white,
                                  size: 30.0,
                                ),
                              )
                          ),
                        ),
                        title: Text(
                          'Report Name',
                          style: TextStyle(
                            color: Color(0xFF3D5E87),
                            fontSize: 16.0,
                          ),
                        ),
                        subtitle: Text(
                          'Center Name',
                          style: TextStyle(
                            color: Color(0xFFA8C3EC),
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Text(
                        'Today, 07 February 2021',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Color(0xFF797B7D),
                        ),
                      ),
                      Divider(
                        color: Colors.black45,
                      ),
                      ListTile(
                        onTap: () {
                          // functionality will go here.
                        },
                        leading: Container(
                          height: 45.0,
                          width: 45.0,
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFFAB6FE3),
                                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.picture_in_picture_outlined,
                                  color: Colors.white,
                                  size: 30.0,
                                ),
                              )
                          ),
                        ),
                        title: Text(
                          'Report Name',
                          style: TextStyle(
                            color: Color(0xFF3D5E87),
                            fontSize: 16.0,
                          ),
                        ),
                        subtitle: Text(
                          'Center Name',
                          style: TextStyle(
                            color: Color(0xFFA8C3EC),
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          // functionality will go here.
                        },
                        leading: Container(
                          height: 45.0,
                          width: 45.0,
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFFAB6FE3),
                                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.picture_in_picture_outlined,
                                  color: Colors.white,
                                  size: 30.0,
                                ),
                              )
                          ),
                        ),
                        title: Text(
                          'Report Name',
                          style: TextStyle(
                            color: Color(0xFF3D5E87),
                            fontSize: 16.0,
                          ),
                        ),
                        subtitle: Text(
                          'Center Name',
                          style: TextStyle(
                            color: Color(0xFFA8C3EC),
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          // functionality will go here.
                        },
                        leading: Container(
                          height: 45.0,
                          width: 45.0,
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFFAB6FE3),
                                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.picture_in_picture_outlined,
                                  color: Colors.white,
                                  size: 30.0,
                                ),
                              )
                          ),
                        ),
                        title: Text(
                          'Report Name',
                          style: TextStyle(
                            color: Color(0xFF3D5E87),
                            fontSize: 16.0,
                          ),
                        ),
                        subtitle: Text(
                          'Center Name',
                          style: TextStyle(
                            color: Color(0xFFA8C3EC),
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
