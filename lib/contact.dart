import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {

  final Map<String, String> contacts = {
  'Proeschel Chleo': '06 16 40 72 53',
  'Proesche Chle':'06 16 40 72 5', 
  'Proesch Chl':'06 16 40 72',
  'Proesc Ch':'06 16 40 7',
  'Proesc C':'06 16 40',
  'Proesc':'06 16 40',
  'Proes':'06 16 4',
  'Proe':'06 16',
  'Pro':'06 1',
  'Pr':'06',
  'P':'0',
  'Johnny Hallyday':'06 66 66 66 66',
  'Johnn Hallyda':'06 66 66 66 6',
  'John Hallyd':'06 66 66 66',
  'Joh Hally':'06 66 66 6',
  'Jo Hally':'06 66 66',
  'J Hall':'06 66 6',
  'Hall':'06 66',
  'Hal':'06 6',
  'Ha':'06',
  'H':'0',
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
          itemBuilder: (context, index) {
            final contactName = contacts.keys.elementAt(index);
            final contactNumber = contacts.values.elementAt(index);
            return Column(
              children: [
                Text(
                  contactName,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  contactNumber,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
              ],
            );
          },
        ),
      ),
    );
  }
}
