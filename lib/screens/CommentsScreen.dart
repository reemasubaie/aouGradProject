import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:saudi_toursim_guide/constants.dart';
import 'package:flutter/material.dart';
import 'package:saudi_toursim_guide/models/comments.dart';

class CommentScreen extends StatefulWidget {
  const CommentScreen({Key? key}) : super(key: key);
  static String id = 'Comment_screen';

  @override
  State<CommentScreen> createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  List<CommentModel> comments = [];

  var msgController = TextEditingController();
  String username = '';
  @override
  void initState() {
    super.initState();
    getUsername();
  }

  void getUsername() async {
    DocumentSnapshot snap = await FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();
    setState(() {
      username = (snap.data() as Map<String, dynamic>)['username'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Comments',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          comments.isNotEmpty
              ? Expanded(
                  child: ListView.builder(
                      itemCount: comments.length,
                      itemBuilder: (context, index) {
                        return Container(
                          child: ListTile(
                            title: Text(
                              username,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              comments[index].comment as String,
                            ),
                          ),
                        );
                      }),
                )
              : const Center(
                  child: Text('NO comments'),
                ),
          TextField(
            //to save data after press done after writing the comment
            textInputAction: TextInputAction.done,

            decoration: kTextfeldDecor.copyWith(hintText: 'Enter your comment'),
            //store the input
            controller: msgController,
            onSubmitted: (String val) {
              setState(() {
                //add item to the list
                comments.add(CommentModel(msgController.text, username));

                //redeclare variable
                msgController.clear();
              });
            },
          ),
        ],
      ),
    );
  }
}
