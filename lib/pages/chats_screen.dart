import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat_model.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {

  List<ChatModel> sampleData = [
    ChatModel("Abhi", "Good Morning!", "7:30 am", "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8YXZhdGFyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
    ChatModel("Ami", "Hey!", "8:20 pm", "https://images.unsplash.com/photo-1544725176-7c40e5a71c5e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8YXZhdGFyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
    ChatModel("Pritesh", "How Do you do?", "1:30 pm", "https://images.unsplash.com/photo-1543610892-0b1f7e6d8ac1?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8YXZhdGFyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
    ChatModel("Akash", "Pick up my phone..", "11:30 am", "https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8YXZhdGFyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
    ChatModel("Dev", "Have you seen today's episode of GOT?", "8:00 pm", "https://images.unsplash.com/photo-1628157588553-5eeea00af15c?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGF2YXRhcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
    ChatModel("Sunny", "That's bullshit!", "1:40 pm", "https://images.unsplash.com/photo-1601455763557-db1bea8a9a5a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGF2YXRhcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
    ChatModel("Sagar", "Yeah, that's also correct", "3:30 am", "https://images.unsplash.com/photo-1624298357597-fd92dfbec01d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjJ8fGF2YXRhcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
    ChatModel("Pitoo", "You should go for the second one", "2:20 pm", "https://images.unsplash.com/photo-1629467057571-42d22d8f0cbd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1898&q=80"),
    ChatModel("Paablo", "How much for 2 kilo?", "5:20 pm", "https://upload.wikimedia.org/wikipedia/commons/9/9a/Pablo_Escobar_Mug.jpg"),
    ChatModel("Pena", "Have you seen my insta story?", "8:30 am", "https://m.media-amazon.com/images/M/MV5BYzQ5Yzg1NzktMDcxNC00ZDc1LWJlMjEtNTg2ZjRlOTk4ZDNjXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_.jpg"),
    ChatModel("Kunal", "Hey!", "1:00 pm", "https://images.unsplash.com/photo-1632922267756-9b71242b1592?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjd8fGF2YXRhcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
    ChatModel("Paavan", "Hu wat kare!!", "1:30 pm", "https://images.unsplash.com/photo-1626586066636-a1523dd2141b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: sampleData.length,
      itemBuilder: (BuildContext context, int index) => Column(
        children: [
          const Divider(height: 10,),
          ListTile(
            leading: CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(sampleData[index].avatarUrl),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(sampleData[index].name,style: const TextStyle(fontWeight: FontWeight.bold),),
                Text(sampleData[index].time,style: const TextStyle(color: Colors.grey),),
              ],
            ),
            subtitle: Container(
              padding: const EdgeInsets.only(top: 5),
              child:  Text(sampleData[index].message,style: const TextStyle(fontWeight: FontWeight.normal),),
            ),
          ),
        ],
      ),
    );
  }
}
