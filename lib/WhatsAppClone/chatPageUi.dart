import 'package:flutter/material.dart';
import 'package:uiclonedemo/WhatsAppClone/selectContactsUi.dart';

class MyChatPageClass extends StatelessWidget {
  MyChatPageClass({Key? key}) : super(key: key);

  List Name = [
    "Mary",
    "Mom",
    "Dad",
    "Sis",
    "Net general grp2023",
    "+91 7034933444",
    "MyJio",
    "Jennie"
  ];
  List Message = [
    "~Shaa:okay",
    "byee",
    "haaa",
    "Heyy",
    "Aslin:hey",
    "okay",
    "Fine",
    "Okay",
    "Anjana:hmmm"
  ];
  List Time = [
    "7:53 pm",
    "5:45 pm",
    "2:15 pm",
    "yesterday",
    "yesterday",
    "25/07/2023",
    "24/07/2023",
    "23/07/2023"
  ];
  List ProPics = [
    "https://shorturl.at/anuQV",
    "",
    "https://shorturl.at/dsBKL",
    "https://shorturl.at/bcdf9",
    "",
    "https://shorturl.at/bcdf9",
    "",
    "https://shorturl.at/bcdf9"
  ];
  List Count = ["2", "3", "1", "7", "2", "0", "0", "0"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => SelectContactsClass()));
        },
        child: Icon(
          Icons.message_rounded,
          color: Colors.white,
        ),
        backgroundColor: Colors.teal[600],
      ),
      body: ListView.builder(
          itemCount: Name.length,
          itemBuilder: (context, int index) {
            return ListTile(
              leading: ProPics[index] == ""
                  ? CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.black12,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Icon(
                          Icons.person_rounded,
                          color: Colors.white,
                          size: 45,
                        ),
                      ),
                    )
                  : CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(ProPics[index]),
                    ),
              title: Text(
                Name[index],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(Message[index]),
              trailing: Column(
                children: [
                  Text(Time[index]),
                  Count[index] == "0"
                      ? CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.white,
                        )
                      : CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.teal[500],
                          child: Center(
                              child: Text(
                            Count[index],
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          )),
                        )
                ],
              ),
            );
          }),
    );
  }
}
