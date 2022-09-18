import 'package:data_post_api/View/Home_Page.dart';
import 'package:flutter/material.dart';

import '../Model_Post/Mode_Post.dart';
import '../Service_Post/SignUpUserServices.dart';

class PostData extends StatefulWidget {
  const PostData({Key? key}) : super(key: key);

  @override
  State<PostData> createState() => _PostDataState();
}

class _PostDataState extends State<PostData> {
  final firstname = TextEditingController();
  final lastname = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final formkye = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: formkye,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'First name can not be empty';
                    }
                  },
                  controller: firstname,
                  decoration: InputDecoration(hintText: 'First name'),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'First name can not be empty';
                    }
                  },
                  controller: lastname,
                  decoration: InputDecoration(hintText: 'Last name'),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Last name can not be empty';
                    }else if([\w-]|(?<!\.)\.)+[a-zA-Z0-9]@[a-zA-Z0-9]([a-zA-Z0-9\-]+)((\.([a-zA-Z]){2,9}){0‌​,2})
                  },
                  controller: username,
                  decoration: InputDecoration(hintText: 'User name'),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'password name can not be empty';
                    }
                  },
                  controller: password,
                  decoration: InputDecoration(hintText: 'password'),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (formkye.currentState!.validate()) {
                      // SignUpUserServics.signUpUser(
                      //         firstname: firstname.text,
                      //         lastname: lastname.text,
                      //         password: password.text,
                      //         username: username.text)
                      PostModelData model = PostModelData();
                      model.firstName = firstname.text;
                      model.lastName = lastname.text;
                      model.username = username.text;
                      model.password = password.text;
                      model.avatar =
                          "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
                      SignUpUserServics.signUp(model.toJson())
                          .then((value) => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              )));
                    }
                  },
                  child: Text('Sing in '),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
