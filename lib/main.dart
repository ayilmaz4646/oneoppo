import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class Contact {
  String name;
  String phoneNumber;
  Contact({this.name, this.phoneNumber});
}

class MyApp extends StatelessWidget {

  final List<Contact> contacts = [
    Contact(name: "Ali", phoneNumber: "0534 344 3434"),
    Contact(name: "Ahmet", phoneNumber: "0534 344 4646"),
    Contact(name: "Murat", phoneNumber: "0534 344 4611"),
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Phone Book"),
          actions: <Widget>[IconButton(icon: Icon(Icons.add), onPressed: (){})]
        ),
        body: Container(
          child: ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (BuildContext context, int index){
            Contact contact = contacts[index];
            return Container(
              padding: EdgeInsets.all(5),
              child: Row(children: <Widget>[
                CircleAvatar(
                  backgroundImage: NetworkImage("https://galeri13.uludagsozluk.com/707/ekrem-imamoglu-nun-cedric-in-arkadasina-benzemesi_1837024.png"),
                  child: Text(contact.name[0], style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[Text(contact.name), Text(contact.phoneNumber)],
                  ),
                ),
                Divider(),
              ],)
            );
          }
        )),
      )
    );
  }
}