import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {

  final Map<String, String> contacts = {
  'Proeschel Chleo': '06 16 40 72 53',
  'Proesche Chle':'06 16 40 72 53', 
  'Proesch Chl':'06 16 40 72 53',
  'Proesc Ch':'06 16 40 72 53',
  'Proesc C':'06 16 40 72 53',
  'Proesc':'06 16 40 72 53',
  'Proes':'06 16 40 72 53',
  'Proe':'06 16 40 72 53',
  'Pro':'06 16 40 72 53',
  'Pr':'06 16 40 72 53',
  'P':'06 16 40 72 53',
  'Johnny Hallyday':'06 66 66 66 66',
  'Johnn Hallyda':'06 66 66 66 66',
  'John Hallyd':'06 66 66 66 66',
  'Joh Hally':'06 66 66 66 66',
  'Jo Hally':'06 66 66 66 66',
  'J Hall':'06 66 66 66 66',
  'Hall':'06 66 66 66 66',
  'Hal':'06 66 66 66 66',
  'Ha':'06 66 66 66 66',
  'H':'06 66 66 66 66',
  'Arielle Dombasle':'06 66 66 66 66',
  'Ariell Dombasl':'06 66 66 66 66',
  'Ariel Dombas':'06 66 66 66',
  'Arie Domba':'06 66 66 66 66',
  'Ari Domb':'06 66 66 66 66',
  'Ar Dom':'06 66 66 66 66',
  'A Do':'06 66 66 66 66',
  'D':'06 66 66 66 66',
  };
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Contact'),
        leading: BackButton(),
      ),
      body: Container(
        color: Colors.amber,
        alignment: Alignment.center,
        child: ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (BuildContext context, int index) {
            final contactName = contacts.keys.elementAt(index);
            final contactNumber = contacts.values.elementAt(index);
            
            return Column(
              children: [
                Text(
                  contactName,
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  contactNumber,
                  style: TextStyle(fontSize: 14),
                ),

              ]
            );
          },
        ),
      ),
    );
  }
}
