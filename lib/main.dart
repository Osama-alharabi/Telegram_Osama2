import 'package:flutter/material.dart';
import 'chat_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Telegram',
      debugShowCheckedModeBanner: false ,
      home: TelegramHomepage() ,
    );
  }
}
class TelegramHomepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title:Text( "Telegram"),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.search))
        ],

      ),
      drawer:_builddrwer() ,
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Icon(Icons.edit),
        backgroundColor: Colors.black,
      ),
      body: ListView.separated(
        itemCount: _chats.length,
itemBuilder: (context,index){
          return _chats[index];
},
        separatorBuilder: (context,index){
          return Divider();
        },

           ),

    );


  }
   List _chats=[

     ChtCard(
       name: 'Bashar_safiya',
       date: '7:30 ',
       message: 'السلام عليكم ',
       imageUrl: 'images/b.jpg',
     ),
     ChtCard(
       name: 'Jwad_fatema',
       date: '9:30 ',
       message: 'مرحبا',
       imageUrl: 'images/j.jpg',
     ),
     ChtCard(
       name: 'Sfwan_salwa',
       date: '6:30 ',
       message: 'هيا نروح نتصيد',
       imageUrl: 'images/s.jpg',
     ),

     ChtCard(
       name: 'Moshary AL-amin',
       date: '3:30 ',
       message: 'كيف حااااااااالك',
       imageUrl: 'images/m.jpg',
     ),



  ];
Widget _builddrwer(){

  return Drawer(
    child: Column(
      children: [
        UserAccountsDrawerHeader(
            accountName: Text('OSAMA amin'),
            accountEmail: Text('osama@gmail.com'),
        decoration: BoxDecoration(
          color: Colors.black
        ),
        currentAccountPicture: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage('images/o.png'),
        ),
        ),
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text('My Account'),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
        ),
        ListTile(
          leading: Icon(Icons.lock),
          title: Text('Logout'),
        ),


      ],
    ),
  );
}

}