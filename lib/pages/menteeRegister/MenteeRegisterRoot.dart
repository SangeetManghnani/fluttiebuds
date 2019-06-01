import 'package:flutter/material.dart';
import 'package:fluttiebuds/pages/mentorRegister/mentors.dart';

class RegistrationFormMentee extends StatefulWidget {
  @override
  RegistrationFormMenteeState createState() {
    return RegistrationFormMenteeState();
  }
}

class RegistrationFormMenteeState extends State<RegistrationFormMentee> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Builder(
            builder: (context) => SingleChildScrollView(
                child: Form(
                    key: _formKey,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 40),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 25),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Mentee",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w100),
                                ),
                                Text(
                                  "Register",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Card(
                            margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                            color: Color(0xFF333366),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            elevation: 10,
                            child: Padding(
                                padding: EdgeInsets.all(20),
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(top: 20),
                                    ),
                                    TextFormField(
                                      textCapitalization:
                                          TextCapitalization.words,
                                      maxLines: 1,
                                      style: TextStyle(
                                          decorationColor: Colors.white,
                                          color: Colors.white),
                                      decoration: const InputDecoration(
                                        prefixIcon: Icon(
                                          Icons.person,
                                          color: Colors.white,
                                        ),
                                        hintText: 'What do people call you?',
                                        hintStyle:
                                            TextStyle(color: Colors.blueGrey),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.white, width: 1),
                                        ),
                                        border: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.white, width: 1),
                                        ),
                                      ),
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return 'Please enter a valid Name';
                                        }
                                      },
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 20),
                                    ),
                                    TextFormField(
                                      maxLines: 1,
                                      keyboardType: TextInputType.emailAddress,
                                      style: TextStyle(
                                          decorationColor: Colors.white,
                                          color: Colors.white),
                                      decoration: const InputDecoration(
                                          prefixIcon: Icon(
                                            Icons.email,
                                            color: Colors.white,
                                          ),
                                          hintText: 'Your Email id here',
                                          hintStyle:
                                              TextStyle(color: Colors.blueGrey),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white, width: 1),
                                          ),
                                          border: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white, width: 1),
                                          )),
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return 'Please enter valid email';
                                        }
                                      },
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 20),
                                    ),
                                    TextFormField(
                                      maxLines: 1,
                                      keyboardType: TextInputType.text,
                                      style: TextStyle(
                                          decorationColor: Colors.white,
                                          color: Colors.white),
                                      decoration: const InputDecoration(
                                          prefixIcon: Icon(
                                            Icons.security,
                                            color: Colors.white,
                                          ),
                                          hintText: 'Select a strong password',
                                          hintStyle:
                                              TextStyle(color: Colors.blueGrey),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white, width: 1),
                                          ),
                                          border: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white, width: 1),
                                          )),
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return 'Your password cannot be empty!';
                                        }
                                      },
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 20),
                                    ),
                                    TextFormField(
                                      maxLines: 1,
                                      keyboardType: TextInputType.text,
                                      style: TextStyle(
                                          decorationColor: Colors.white,
                                          color: Colors.white),
                                      decoration: const InputDecoration(
                                          prefixIcon: Icon(
                                            Icons.security,
                                            color: Colors.white,
                                          ),
                                          hintText: 'Confirm password',
                                          hintStyle:
                                              TextStyle(color: Colors.blueGrey),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white, width: 1),
                                          ),
                                          border: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white, width: 1),
                                          )),
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return 'Your password cannot be empty!';
                                        }
                                      },
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 20),
                                    ),
                                    RaisedButton(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      onPressed: () {
                                        // Validate will return true if the form is valid, or false if
                                        // the form is invalid.
                                        if (_formKey.currentState.validate()) {
                                          // If the form is valid, display a snackbar. In the real world, you'd
                                          // often want to call a server or save the information in a database
                                          Scaffold.of(context).showSnackBar(
                                              SnackBar(
                                                  content: Text(
                                                      'Successfully registered as a Mentee!')));
                                        }
                                      },
                                      child: InkWell(
                                        child: Text('Submit'),
                                        onTap: () => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        Mentors())),
                                      ),
                                    )
                                  ],
                                )),
                          )
                        ])))));
  }
}
