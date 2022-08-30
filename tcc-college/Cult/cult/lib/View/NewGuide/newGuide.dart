import 'package:cult/Controller/EnabledBorderStyle.dart';
import 'package:cult/Controller/divider.dart';
import 'package:cult/Controller/endDrawer.dart';
import 'package:cult/Controller/errorBorderStyle.dart';
import 'package:cult/Controller/focusedBorderStyle.dart';
import 'package:cult/Controller/focusedErrorBorderStyle.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

final _formKey = GlobalKey<FormState>();

class NewGuide extends StatelessWidget {
  final format = DateFormat("dd/MM/yyyy");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.undo),
            color: Colors.white,
            iconSize: 33,
            onPressed: () => Navigator.pop(context)),
      ),
      endDrawer: EndDrawer(),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Center(
            child: Container(
              color: Colors.white,
              padding:
                  EdgeInsets.only(top: 40, right: 30, left: 30, bottom: 20),
              child: Column(
                children: [
                  dividerController(),
                  Text(
                    'Nome da viagem:',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      height: 2,
                      fontSize: 18,
                      color: Color(0xff7209b7),
                    ),
                  ),
                  //  ###################### TEXTFIELD TRIP NAME ######################
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
                        labelText: "Nome da viagem",
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w300,
                          fontSize: 18,
                        ),
                        focusedBorder: focudedBorderStyle(),
                        enabledBorder: enabledBorderStyle(),
                        errorBorder: errorBorderStyle(),
                        focusedErrorBorder: focudedErrorBorderStyle(),
                      ),
                      // onChanged: (value) {
                      //   email = value;
                      // },
                    ),
                  ),
                  Text(
                    'Descrição:',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      height: 2,
                      fontSize: 18,
                      color: Color(0xff7209b7),
                    ),
                  ),
                  //  ###################### TEXTFIELD DESCRIPTION ######################
                  Container(
                    height: 50,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: "Descrição",
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w300,
                          fontSize: 18,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff7209b7), width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blue, width: 1.8),
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      // onChanged: (value) {
                      //   email = value;
                      // },
                    ),
                  ),
                  dividerController(),
                  Text(
                    'Valor médio que desejo gastar:',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      height: 2,
                      fontSize: 18,
                      color: Color(0xff7209b7),
                    ),
                  ),
                  //  ###################### TEXTFIELD VALUE ######################
                  Container(
                    height: 50,
                    child: TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Campo vazio!';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w300,
                          fontSize: 18,
                        ),
                        focusedBorder: focudedBorderStyle(),
                        enabledBorder: enabledBorderStyle(),
                        errorBorder: errorBorderStyle(),
                        focusedErrorBorder: focudedErrorBorderStyle(),
                      ),
                      // onChanged: (value) {
                      //   email = value;
                      // },
                    ),
                  ),
                  dividerController(),
                  Text(
                    'Duração da viagem:',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      height: 2,
                      fontSize: 18,
                      color: Color(0xff7209b7),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 114,
                        child: DateTimeField(
                          decoration: InputDecoration(
                            labelText: "IDA",
                            labelStyle: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w300,
                              fontSize: 12,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1.8),
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                          format: format,
                          onShowPicker: (context, currentValue) {
                            return showDatePicker(
                                context: context,
                                firstDate: DateTime(1900),
                                initialDate: currentValue ?? DateTime.now(),
                                lastDate: DateTime(2100));
                          },
                        ),
                      ),
                      Container(
                        width: 20,
                      ),
                      Container(
                        width: 114,
                        child: DateTimeField(
                          decoration: InputDecoration(
                            labelText: "VOLTA",
                            labelStyle: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w300,
                              fontSize: 12,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1.8),
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                          format: format,
                          onShowPicker: (context, currentValue) {
                            return showDatePicker(
                                context: context,
                                firstDate: DateTime(1900),
                                initialDate: currentValue ?? DateTime.now(),
                                lastDate: DateTime(2100));
                          },
                        ),
                      ),
                    ],
                  ),
                  dividerController(),
                  Container(
                    height: 50.0,
                    margin: EdgeInsets.only(right: 10),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/MyTrip');
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
                            "Avançar",
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
      ),
    );
  }
}
