import 'package:flutter/material.dart';
import 'package:sbisirya/models/home_page.dart';
import 'package:sbisirya/models/profile_donor.dart';

class feedPage extends StatelessWidget {
  feedPage({Key? key}) : super(key: key);

  final List<Map> infos =
      List.generate(100, (index) => {"id": index, "name": "Donor $index"})
          .toList();

  final List<Map> typeblood =
      List.generate(100, (index) => {"id": index, "Blood Type": "AB $index"})
          .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Donors List'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: infos.length,
            itemBuilder: (BuildContext ctx, index) {
              return GestureDetector(
                onTap: () {
                  _showDialog(context, infos[index]["name"],
                      typeblood[index]["Blood Type"]);
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text(infos[index]["name"] +
                      "\n" +
                      typeblood[index]["Blood Type"]),
                  decoration: BoxDecoration(
                      color: Color(0xff6DC8B7),
                      borderRadius: BorderRadius.circular(15)),
                ),
              );
            }),
      ),
    );
  }
}

void _showDialog(BuildContext context, String info, String typess) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: new Text("Donors Details"),
        content: Text("Name : " + info + "\n" + "Blood Type : " + typess),
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
