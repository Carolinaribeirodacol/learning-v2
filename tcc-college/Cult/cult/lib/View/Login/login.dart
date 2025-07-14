import 'package:cult/Controller/divider.dart';
import 'package:cult/Controller/enabledBorderStyle.dart';
import 'package:cult/Controller/errorBorderStyle.dart';
import 'package:cult/Controller/focusedBorderStyle.dart';
import 'package:cult/Controller/focusedErrorBorderStyle.dart';
import 'package:flutter/material.dart';
import 'package:cult/Controller/custom_dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

final _formKey = GlobalKey<FormState>();
var email;
var password;
var _dio = CustomDio().instance;

login(_email, _password, context) async {
  _dio.post(
    'http://192.168.56.1:8080/login',
    data: {'email': _email, 'password': _password},
  ).then((res) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('token', res.data['token']);
    Navigator.pushNamed(context, '/HomePage');
  }).catchError((err) {
    throw Exception('Login ou senha inválidos!');
  });
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Center(
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.only(top: 40, right: 30, left: 30),
              child: Column(
                children: [
                  Text(
                    'Bem vindo!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      height: 2,
                      fontSize: 42,
                      color: Color(0xff7209b7),
                    ),
                  ),
                  dividerController(),
                  Text(
                    'Faça login e se conecte conosco!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 17,
                      color: Color(0xff1e4e87),
                    ),
                  ),
                  Divider(
                    height: 50,
                    color: Colors.white,
                  ),

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
                        email = value;
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
                      keyboardType: TextInputType.text,
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
                        password = value;
                      },
                    ),
                  ),

                  Divider(height: 5, color: Colors.white),
                  Container(
                    height: 30,
                    alignment: Alignment.topRight,
                    child: FlatButton(
                      child: Text(
                        'Esqueci minha senha',
                        style: TextStyle(
                          color: Colors.lightBlue,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/ForgotPassword');
                      },
                    ),
                  ),
                  dividerController(),
                  //  ###################### BUTTON SIGN IN ######################

                  Container(
                    height: 50,
                    width: 300,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xff7209b7), Color(0xff64B6FF)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(26),
                      ),
                    ),
                    child: SizedBox.expand(
                      child: FlatButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Entrar',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            _formKey.currentState.save();
                            Navigator.pushNamed(context, '/HomePage');
                            // login(_email, _password, context);
                          } else {
                            // ignore: deprecated_member_use
                            Scaffold.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Login ou senha inválidos!'),
                              ),
                            );
                          }
                        },
                      ),
                    ),
                  ),

                  dividerController(),

                  //  ###################### BUTTON SIGN UP ######################

                  Container(
                    height: 50,
                    width: 300,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.8,
                        color: Color(0xff7209b7),
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(26),
                      ),
                    ),
                    child: SizedBox.expand(
                      child: FlatButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Criar conta',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xff7209b7),
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/SignUp');
                        },
                      ),
                    ),
                  ),
                  Divider(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 76,
                        child: FlatButton(
                            onPressed: () {},
                            child: Image.asset('assets/facebook.png')),
                      ),
                      Container(
                        width: 80,
                        child: FlatButton(
                            onPressed: () {},
                            child: Image.asset('assets/google.png')),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Future<User> signIn() async {
  //   try {
  //     await FirebaseAuth.instance
  //         .signInWithEmailAndPassword(email: _email, password: _password);
  //     Navigator.pushNamed(context, '/HomePage'); //go to a home page
  //   } catch (e) {
  //     print("erro"); //Invalid field
  //   }
  // }

}
