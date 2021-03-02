import 'package:flutter/material.dart';

class StatusReceivedItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: ListTile(
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
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '02/03/2021',
                style: TextStyle(
                  color: Color(0xFF00CC96),
                  fontSize: 16.0,
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                '10:20 PM',
                style: TextStyle(
                  color: Color(0xFF797B7D),
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
