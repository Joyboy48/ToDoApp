// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:to_do_list_app/pages/addToDo.dart';
// import 'package:to_do_list_app/pages/signupPage.dart';
// import 'package:to_do_list_app/services/auth_service.dart';
//
// import '../TodoCards.dart';
//
// class Homepage extends StatefulWidget{
//   @override
//   State<Homepage> createState() => _HomepageState();
// }
//
// class _HomepageState extends State<Homepage> {
//   AuthService _authService =AuthService();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black87,
//       appBar: AppBar(
//         backgroundColor: Colors.black87,
//         title: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text("Your Task's",style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold,color: Colors.white),),
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Colors.black87,
//         selectedItemColor: Colors.white,
//         unselectedItemColor: Colors.grey,
//         items: [
//           BottomNavigationBarItem(icon: Container(
//             height: 55,
//             width: 55,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               gradient: LinearGradient(
//                 colors: [
//                   Colors.indigoAccent,
//                   Colors.purple,
//                 ]
//               )
//             ),
//             child: Icon(Icons.home,
//             size: 32,
//             color: Colors.white,),
//
//           ),
//           label: 'home',
//           ),
//
//           BottomNavigationBarItem(icon:
//           InkWell(
//             onTap: (){
//               Navigator.push(context, MaterialPageRoute(builder: (builder)=>Addtodo()));
//             },
//             child: Container(
//               height: 55,
//               width: 55,
//               decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   gradient: LinearGradient(
//                       colors: [
//                         Colors.indigoAccent,
//                         Colors.purple,
//                       ]
//                   )
//               ),
//               child: Icon(Icons.add,
//                 size: 32,
//                 color: Colors.white,),
//
//             ),
//           ),
//               label: 'Add Task',
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           height: MediaQuery.sizeOf(context).height,
//           width: MediaQuery.sizeOf(context).width,
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
//             child: Column(
//               children: [
//                 todocards("text",true),
//                 SizedBox(height: 10,),
//                 todocards("hey",false),
//                 SizedBox(height: 10,),
//                 todocards("aloo",true),
//                 SizedBox(height: 10,),
//                 todocards("tamater",false),
//                 SizedBox(height: 10,),
//                 todocards("majedar",true),
//               ],
//             ),
//           ),
//         ),
//       ),
//
//     );
//   }
//
//   Widget todocards (String title,bool check){
//     return  Container(
//       width: MediaQuery.sizeOf(context).width,
//       child: Row(
//         children: [
//           Theme(child:
//           Transform.scale(
//             scale: 1.5,
//             child: Checkbox(
//                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
//                 activeColor: Color(0xff6cf8a9),
//                 checkColor: Color(0xff0e3e26),
//                 value: check, onChanged: (bool? value){}),
//           ),
//             data: ThemeData(
//               primarySwatch: Colors.blue,
//               unselectedWidgetColor: Color(0xff5e616a),
//             ),
//           ),
//
//           Expanded(
//             child: Container(
//               height: 75,
//               child: Card(
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 color: Color(0xff2a2e3d),
//                 child: Padding(
//                   padding: const EdgeInsets.all(14.0),
//                   child: Text(title,style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w400),),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
//
// // IconButton(onPressed: ()async{
// // await _authService.logOut();
// // Navigator.pushAndRemoveUntil(context,
// // MaterialPageRoute(builder: (builder) => Signuppage()),
// // (route) => false
// // );
// // }, icon: Icon(Icons.logout)),

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:to_do_list_app/pages/addToDo.dart';
import 'package:to_do_list_app/pages/panda.dart';
import 'package:to_do_list_app/pages/signupPage.dart';
import 'package:to_do_list_app/services/auth_service.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Your Tasks",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () async {
              await _authService.logOut();
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (builder) => Signuppage()),
                    (route) => false,
              );
            },
            icon: Icon(Icons.logout),
            color: Colors.black,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                //Navigator.push(context, MaterialPageRoute(builder: (builder) => PandaPage()));
              },
              child: Icon(Icons.home, size: 32),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (builder) => Addtodo()));
              },
              child: Icon(Icons.add_circle_outline, size: 32),
            ),
            label: 'Add Task',
          ),
        ],
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('users')
            .doc(FirebaseAuth.instance.currentUser?.uid) // Directly access user ID here
            .collection('todo')
            .snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return Center(child: Text("No tasks"));
          }
          return ListView.builder(
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) {
              DocumentSnapshot document = snapshot.data!.docs[index];
              return todocards(document);
            },
          );
        },
      ),
    );
  }

  Widget todocards(DocumentSnapshot document) {
    String title = document['title'];
    String description = document['description'];

    Map<String, dynamic>? data = document.data() as Map<String, dynamic>?;
    bool isCompleted = data != null &&
        data.containsKey('completed') &&
        data['completed'] is bool
        ? data['completed']
        : false;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: isCompleted ? Colors.green[100]! : Colors.grey[200]!,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            spreadRadius: 1,
          ),
        ],
      ),
      child: ListTile(
        leading: Checkbox(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          activeColor: Colors.green,
          checkColor: Colors.white,
          value: isCompleted,
          onChanged: (bool? value) {
            setState(() {
              FirebaseFirestore.instance
                  .collection('users')
                  .doc(FirebaseAuth.instance.currentUser?.uid) // Directly access user ID here
                  .collection('todo')
                  .doc(document.id)
                  .update({'completed': value});

              if (value == true) {
                FirebaseFirestore.instance
                    .collection('users')
                    .doc(FirebaseAuth.instance.currentUser?.uid) // Directly access user ID here
                    .collection('todo')
                    .doc(document.id)
                    .delete();
              }
            });
          },
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            decoration: isCompleted ? TextDecoration.lineThrough : TextDecoration.none,
          ),
        ),
        subtitle: Text(
          description,
          style: TextStyle(
            color: Colors.grey[600],
          ),
        ),
      ),
    );
  }
}



// IconButton(onPressed: () async {
// await _authService.logOut();
// Navigator.pushAndRemoveUntil(context,
// MaterialPageRoute(builder: (builder) => Signuppage()),
// (route) => false
// );
// }, icon: Icon(Icons.logout)),
