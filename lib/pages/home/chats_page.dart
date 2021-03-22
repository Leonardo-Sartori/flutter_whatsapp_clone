import 'package:flutter/material.dart';

class ChatsPage extends StatefulWidget {
  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              trailing: Text("7:45 PM"),
              title: Text("Leonardo Sartori",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: Icon(Icons.done_all, size: 20, color: Colors.blue),
                  ),
                  Text("Mensagem 1"),
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person)
              ),
              trailing: Text("6:13 PM"),
              title: Text("João Silva",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child:
                        Icon(Icons.done_outlined, size: 20, color: Colors.grey),
                  ),
                  Text("Mensagem 2"),
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person)
              ),
              trailing: Text("5:15 PM"),
              title: Text("Pedro Sampaio",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text("Mensagem 3"),
            ),
          ],
        ),
      ),
    );
  }
}
