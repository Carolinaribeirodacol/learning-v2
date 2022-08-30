import 'package:cult/Controller/custom_dio.dart';
import 'package:cult/Controller/divider.dart';
import 'package:cult/Controller/enabledBorderStyle.dart';
import 'package:cult/Controller/endDrawer.dart';
import 'package:cult/Controller/errorBorderStyle.dart';
import 'package:cult/Controller/focusedBorderStyle.dart';
import 'package:cult/Controller/focusedErrorBorderStyle.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

var _email;
var _phone;
var _name;
var _password;
var _dio = CustomDio().instance;
final _formKey = GlobalKey<FormState>();

register(_email, _password, _phone, _name, context) async {
  _dio.post(
    'http://192.168.56.1:8080/register',
    data: {
      'email': _email,
      'password': _password,
      'phone': _phone,
      'name': _name
    },
  ).then((res) async {
    Navigator.pushNamed(context, '/HomePage');
  }).catchError((err) {
    throw Exception(err);
  });
}

class _SignUpState extends State<SignUp> {
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.undo),
          color: Colors.white,
          iconSize: 33,
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      endDrawer: EndDrawer(),
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: Center(
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.only(top: 40, right: 30, left: 30),
            child: Column(
              children: [
                Text(
                  'Cadastro',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    height: 2,
                    fontSize: 42,
                    color: Color(0xff7209b7),
                  ),
                ),
                dividerController(),

//  ###################### TEXTFIELD NAME ######################

                Container(
                  height: 50,
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Campo vazio!';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: "Nome",
                      labelStyle: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w300,
                        fontSize: 20,
                      ),
                      focusedBorder: focudedBorderStyle(),
                      enabledBorder: enabledBorderStyle(),
                      errorBorder: errorBorderStyle(),
                      focusedErrorBorder: focudedErrorBorderStyle(),
                    ),
                    onChanged: (value) {
                      _name = value;
                    },
                  ),
                ),
                dividerController(),

//  ###################### TEXTFIELD EMAIL ######################
                Container(
                  height: 50,
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Campo vazio!';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w300,
                        fontSize: 20,
                      ),
                      focusedBorder: focudedBorderStyle(),
                      enabledBorder: enabledBorderStyle(),
                      errorBorder: errorBorderStyle(),
                      focusedErrorBorder: focudedErrorBorderStyle(),
                    ),
                    onChanged: (value) {
                      _email = value;
                    },
                  ),
                ),
                dividerController(),

//  ###################### TEXTFIELD PHONE ######################

                Container(
                  height: 50,
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Campo vazio!';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: "Telefone",
                      labelStyle: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w300,
                        fontSize: 20,
                      ),
                      focusedBorder: focudedBorderStyle(),
                      enabledBorder: enabledBorderStyle(),
                      errorBorder: errorBorderStyle(),
                      focusedErrorBorder: focudedErrorBorderStyle(),
                    ),
                    onChanged: (value) {
                      _phone = value;
                    },
                  ),
                ),
                dividerController(),

//  ###################### TEXTFIELD PASSWORD ######################
                Container(
                  height: 50,
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Campo vazio!';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Senha",
                      labelStyle: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w300,
                        fontSize: 20,
                      ),
                      focusedBorder: focudedBorderStyle(),
                      enabledBorder: enabledBorderStyle(),
                      errorBorder: errorBorderStyle(),
                      focusedErrorBorder: focudedErrorBorderStyle(),
                    ),
                    onChanged: (value) {
                      _password = value;
                    },
                  ),
                ),
                dividerController(),

//  ###################### BUTTON SIGN UP ######################

                Container(
                  height: 50.0,
                  margin: EdgeInsets.only(right: 10),
                  child: FlatButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        _formKey.currentState.save();
                        register(_email, _password, _phone, _name, context);
                      }
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26.0)),
                    padding: EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xff7209b7), Color(0xff64B6FF)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(26.0)),
                      child: Container(
                        constraints:
                            BoxConstraints(maxWidth: 200, minHeight: 50.0),
                        alignment: Alignment.center,
                        child: Text(
                          "Cadastrar",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
