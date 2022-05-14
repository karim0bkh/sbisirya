import 'package:flutter/material.dart';
import 'package:sbisirya/models/profile_donor.dart';
import 'package:sbisirya/widget/button_widget.dart';

class OrdersPage extends StatelessWidget {
  OrdersPage({Key? key}) : super(key: key);

  // Generate a dummy list
  final orders = List<String>.generate(10, (i) => 'Order $i');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Orders List'),
        ),
        body: Container(
          // Use ListView.builder
          child: ListView.builder(
              // the number of items in the list
              itemCount: orders.length,

              // display each item of the product list
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                          leading: Icon(Icons.gps_fixed),
                          title: Text('first name last name'),
                          subtitle: Text(orders[index])),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          const SizedBox(width: 8),
                          const SizedBox(height: 24),
                          ButtonWidget(
                            text: 'View Details',
                            onClicked: () =>
                                {_showDialog(context, orders[index])},
                          ),
                          const SizedBox(height: 60),
                          const SizedBox(width: 8),
                          ButtonWidget(
                            text: 'Accept',
                            onClicked: () => {},
                          ),
                          const SizedBox(width: 8),
                          const SizedBox(height: 24),
                        ],
                      ),
                    ],
                  ),
                );
              }),
        ));
  }
}

void _showDialog(BuildContext context, String info) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: new Text("Donors Details"),
        content: Text("Order : " + info),
        actions: <Widget>[
          new FlatButton(
            child: new Text("Show Profile"),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => profilDonor(),
                ),
              );
            },
          ),
          new FlatButton(
            child: new Text("Close"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
