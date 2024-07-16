// import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
// //
// // class Addtodo extends StatefulWidget{
// //   @override
// //   State<Addtodo> createState() => _AddtodoState();
// // }
// //
// // class _AddtodoState extends State<Addtodo> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Container(
// //         height: MediaQuery.sizeOf(context).height,
// //         width: MediaQuery.sizeOf(context).width,
// //         decoration: BoxDecoration(
// //           gradient: LinearGradient(
// //             colors: [
// //               Color(0xff1d1e26),
// //               Color(0xff252041)
// //             ]
// //           ),
// //         ),
// //         child: SingleChildScrollView(
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               SizedBox(
// //                 height:40,),
// //               InkWell(
// //                 onTap: (){
// //                   Navigator.pop(context);
// //                 },
// //                 child: IconButton(onPressed: (){},
// //                       icon: Icon(CupertinoIcons.arrow_left,color: Colors.white,size: 25,)),
// //               ),
// //               Padding(
// //                 padding: const EdgeInsets.symmetric(
// //                   horizontal: 25,
// //                   vertical: 5,
// //                 ),
// //                 child: Column(
// //                   crossAxisAlignment: CrossAxisAlignment.start,
// //                   children: [
// //                     Text('Create',style: TextStyle(
// //                         fontSize: 33,
// //                         color: Colors.white,
// //                         fontWeight: FontWeight.bold,
// //                         letterSpacing: 2),),
// //                     SizedBox(height: 8,),
// //                     Text('New Todo',style: TextStyle(
// //                         fontSize: 33,
// //                         color: Colors.white,
// //                         fontWeight: FontWeight.bold,
// //                         letterSpacing: 2),),
// //                     SizedBox(height: 25 ,),
// //                     label("Task Title"),
// //                     SizedBox(height: 12,),
// //                     title(),
// //                     SizedBox(height: 30,),
// //                     label("Task Type"),
// //                     SizedBox(height: 12,),
// //                     Row(
// //                       children: [
// //                         chipData("Important", 0xff2664fa),
// //                         SizedBox(width: 22 ,),
// //                         chipData("Planned",0xff2bc8d9)
// //                       ],
// //                     ),
// //                     SizedBox(height: 17,),
// //                     label("Description"),
// //                     SizedBox(height: 12,),
// //                     description(),
// //                     SizedBox(height: 25,),
// //                     label("Category"),
// //                     SizedBox(height: 12,),
// //                     Wrap(
// //                       runSpacing: 10,
// //                       children: [
// //                         chipData("Food", 0xffff6d6e),
// //                         SizedBox(width: 20,),
// //                         chipData("Workout", 0xfff29732),
// //                         SizedBox(width: 20,),
// //                         chipData("Work", 0xff6557ff),
// //                         SizedBox(width: 20,),
// //                         chipData("Design", 0xff234ebd),
// //                         SizedBox(width: 20,),
// //                         chipData("Run", 0xff2bc8d9)
// //                       ],
// //                     ),
// //                     SizedBox(height: 40,),
// //                     button(),
// //                     SizedBox(height: 30,),
// //                   ],
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// //
// //   Widget label(String label){
// //     return Text(label,style: TextStyle(
// //       color: Colors.white,
// //       fontWeight: FontWeight.w600,
// //       fontSize: 18,
// //     ),);
// //   }
// //
// //   Widget title(){
// //     return Container(
// //       height: 55,
// //       width: MediaQuery.sizeOf(context).width,
// //       decoration: BoxDecoration(
// //         color: Color(0xff2a2e3d),
// //         borderRadius: BorderRadius.circular(15),
// //       ),
// //       child: TextFormField(
// //         style: TextStyle(
// //           color: Colors.white,
// //           fontSize: 17,
// //         ) ,
// //         decoration: InputDecoration(
// //           border: InputBorder.none,
// //           hintText: "Task Title",
// //           hintStyle: TextStyle(
// //             color: Colors.grey,
// //             fontSize: 17,
// //           ),
// //           contentPadding: EdgeInsets.only(
// //             left: 20,
// //             right: 20
// //           )
// //         ),
// //       ),
// //     );
// //   }
// //
// //   Widget chipData(String label,int color){
// //     return Chip(
// //       backgroundColor: Color(color),
// //       label: Text(label,style: TextStyle(
// //       color: Colors.white,
// //       fontSize: 18,
// //       fontWeight: FontWeight.w600
// //     ),
// //     ),
// //       labelPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 1),
// //     );
// //   }
// //
// //   Widget description(){
// //     return Container(
// //       height: 155,
// //       width: MediaQuery.sizeOf(context).width,
// //       decoration: BoxDecoration(
// //         color: Color(0xff2a2e3d),
// //         borderRadius: BorderRadius.circular(15),
// //       ),
// //       child: TextFormField(
// //         style: TextStyle(
// //           color: Colors.white,
// //           fontSize: 17,
// //         ) ,
// //         maxLines: null,
// //         decoration: InputDecoration(
// //             border: InputBorder.none,
// //             hintText: "Description",
// //             hintStyle: TextStyle(
// //               color: Colors.grey,
// //               fontSize: 17,
// //             ),
// //             contentPadding: EdgeInsets.only(
// //                 left: 20,
// //                 right: 20
// //             )
// //         ),
// //       ),
// //     );
// //   }
// //
// //   Widget button(){
// //     return Container(
// //       height: 50,
// //       width: MediaQuery.sizeOf(context).width,
// //       decoration: BoxDecoration(
// //         gradient: LinearGradient(
// //           colors: [
// //             Color(0xff8a32f1),
// //             Color(0xffad32f9)
// //           ]
// //         ),
// //         borderRadius: BorderRadius.circular(20),
// //       ),
// //       child: Center(
// //         child: Text("Add Task",style: TextStyle(
// //           color: Colors.white,
// //           fontWeight: FontWeight.w600,
// //           fontSize: 20,
// //         ),),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class Addtodo extends StatefulWidget {
//   @override
//   State<Addtodo> createState() => _AddtodoState();
// }
//
// class _AddtodoState extends State<Addtodo> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         leading: IconButton(
//           icon: Icon(CupertinoIcons.arrow_left, color: Colors.black),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//         title: Text(
//           "Create New Todo",
//           style: TextStyle(
//             color: Colors.black,
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           padding: const EdgeInsets.all(20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: 20),
//               label("Task Title"),
//               SizedBox(height: 12),
//               title(),
//               SizedBox(height: 30),
//               label("Task Type"),
//               SizedBox(height: 12),
//               Row(
//                 children: [
//                   chipData("Important", Color(0xff4caf50)),
//                   SizedBox(width: 12),
//                   chipData("Planned", Color(0xff81c784)),
//                 ],
//               ),
//               SizedBox(height: 30),
//               label("Description"),
//               SizedBox(height: 12),
//               description(),
//               SizedBox(height: 30),
//               label("Category"),
//               SizedBox(height: 12),
//               Wrap(
//                 spacing: 12,
//                 runSpacing: 12,
//                 children: [
//                   chipData("Food", Color(0xff66bb6a)),
//                   chipData("Workout", Color(0xffa5d6a7)),
//                   chipData("Work", Color(0xff388e3c)),
//                   chipData("Design", Color(0xff4caf50)),
//                   chipData("Run", Color(0xff81c784)),
//                 ],
//               ),
//               SizedBox(height: 40),
//               button(),
//               SizedBox(height: 30),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget label(String label) {
//     return Text(
//       label,
//       style: TextStyle(
//         color: Colors.black,
//         fontWeight: FontWeight.w600,
//         fontSize: 18,
//       ),
//     );
//   }
//
//   Widget title() {
//     return Container(
//       height: 55,
//       decoration: BoxDecoration(
//         color: Colors.grey[200],
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: TextFormField(
//         style: TextStyle(
//           color: Colors.black,
//           fontSize: 17,
//         ),
//         decoration: InputDecoration(
//           border: InputBorder.none,
//           hintText: "Task Title",
//           hintStyle: TextStyle(
//             color: Colors.grey,
//             fontSize: 17,
//           ),
//           contentPadding: EdgeInsets.symmetric(horizontal: 20),
//         ),
//       ),
//     );
//   }
//
//   Widget chipData(String label, Color color) {
//     return Chip(
//       backgroundColor: color,
//       label: Text(
//         label,
//         style: TextStyle(
//           color: Colors.white,
//           fontSize: 16,
//           fontWeight: FontWeight.w600,
//         ),
//       ),
//       padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
//     );
//   }
//
//   Widget description() {
//     return Container(
//       height: 120,
//       decoration: BoxDecoration(
//         color: Colors.grey[200],
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: TextFormField(
//         style: TextStyle(
//           color: Colors.black,
//           fontSize: 17,
//         ),
//         maxLines: null,
//         decoration: InputDecoration(
//           border: InputBorder.none,
//           hintText: "Description",
//           hintStyle: TextStyle(
//             color: Colors.grey,
//             fontSize: 17,
//           ),
//           contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//         ),
//       ),
//     );
//   }
//
//   Widget button() {
//     return Container(
//       height: 50,
//       decoration: BoxDecoration(
//         color: Color(0xff4caf50),
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Center(
//         child: Text(
//           "Add Task",
//           style: TextStyle(
//             color: Colors.white,
//             fontWeight: FontWeight.w600,
//             fontSize: 20,
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:to_do_list_app/services/auth_service.dart';

class Addtodo extends StatefulWidget {
  @override
  State<Addtodo> createState() => _AddtodoState();
}

class _AddtodoState extends State<Addtodo> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  AuthService _authService = AuthService();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(CupertinoIcons.arrow_left, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Create New Todo",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              label("Task Title"),
              SizedBox(height: 12),
              title(),
              SizedBox(height: 30),
              label("Description"),
              SizedBox(height: 12),
              description(),
              SizedBox(height: 40),
              button(),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Widget label(String label) {
    return Text(
      label,
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w600,
        fontSize: 18,
      ),
    );
  }

  Widget title() {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        controller: _titleController,
        style: TextStyle(
          color: Colors.black,
          fontSize: 17,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Task Title",
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 17,
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 20),
        ),
      ),
    );
  }

  Widget description() {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        controller: _descriptionController,
        style: TextStyle(
          color: Colors.black,
          fontSize: 17,
        ),
        maxLines: null,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Description",
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 17,
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        ),
      ),
    );
  }

  Widget button() {
    return InkWell(
      onTap: () {
        if (_titleController.text.isNotEmpty &&
            _descriptionController.text.isNotEmpty) {
          final user = FirebaseAuth.instance.currentUser;
          if (user != null) {
            FirebaseFirestore.instance.collection("users").doc(user.uid)
                .collection("todo").add({
              "title": _titleController.text,
              "description": _descriptionController.text,
              'userId': user.uid,
              'completed': false,
            })
                .then((value) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Task Added Successfully"),
              ));
              Navigator.pop(context);
            }).catchError((error) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Failed to add task: $error"),
              ));
            });
          } else {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("User not logged in"),
            ));
          }
        } else {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Please fill out all fields"),
          ));
        }
      },
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Color(0xff4caf50),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            "Add Task",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}