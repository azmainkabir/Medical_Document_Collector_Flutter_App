import 'package:flutter/material.dart';

class HomeCentersItem extends StatelessWidget {
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
                    color: Color(0xFF4C9AF9),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                ),
                child: Center(
                  child: Icon(
                    Icons.location_city_sharp,
                    color: Colors.white,
                    size: 30.0,
                  ),
                )
            ),
          ),
          title: Text(
            'Center Name',
            style: TextStyle(
              color: Color(0xFF3D5E87),
              fontSize: 16.0,
            ),
          ),
          subtitle: Text(
            'Location',
            style: TextStyle(
              color: Color(0xFFA8C3EC),
              fontSize: 12.0,
            ),
          ),
        ),
      ),
    );
  }
}
