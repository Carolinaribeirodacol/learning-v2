import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/main.dart';

class cadastro extends StatefulWidget {
  @override
  _cadastroState createState() => _cadastroState();
}

class _cadastroState extends State<cadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 20,
          left: 30,
          right: 30,
          bottom: 20,
        ),

        // ########################  COR DO BACKGROUND
        color: Color(0xff2a2d45),

        child: ListView(
          children: <Widget>[

            // ########################  BOTÃO DE RETORNO
            Container(
              height: 35,
              alignment: Alignment.topLeft,
              child: RaisedButton(
                onPressed:(){
                  Navigator.pop(context);
                },
                child: SizedBox(
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white70,
                    size: 35,
                  ),
                ),
                color: Color(0xff2a2d45),
              ),
            ),

            // ########################  SIZEBOX PARA O ESPAÇAMENTO ENTRE ELEMENTOS
            SizedBox(
              height: 30,
            ),

            // ########################  CONTAINER DE LOGIN - TEXTO
            Container(
              alignment: Alignment.center,
              child: Text(
                'Cadastro',
                style: TextStyle(
                  color: Colors.white70,
                  //espessura
                  fontWeight: FontWeight.w600,
                  fontSize: 27,
                ),
              ),
            ),

            // ########################  SIZEBOX PARA O ESPAÇAMENTO ENTRE ELEMENTOS
            SizedBox(
              height: 15,
            ),

            // ########################  LABEL PARA USUÁRIO
            TextFormField(
              maxLines: 1,
              keyboardType: TextInputType.text,
              textAlign: TextAlign.center,

              decoration: new InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  borderSide: BorderSide(color: Color(0xff644b81)),
                ),
                hintText: "Usuário",
                hintStyle: TextStyle(
                  color: Colors.white70,
                  //espessura
                  fontWeight: FontWeight.w300,
                  fontSize: 20,
                ),
              ),

              //Fonte interna
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w200,
                color: Colors.white70,
              ),
            ),

            // ########################  SIZEBOX PARA O ESPAÇAMENTO ENTRE ELEMENTOS
            SizedBox(
              height: 10,
            ),

            // ########################  LABEL PARA SENHA
            TextFormField(
              keyboardType: TextInputType.text,
              textAlign: TextAlign.center,

              //Não exibir os caracteres da senha
              obscureText: true,

              decoration: new InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  borderSide: BorderSide(color: Color(0xff644b81)),
                ),
                hintText: "Senha",
                hintStyle: TextStyle(
                  color: Colors.white70,
                  //espessura
                  fontWeight: FontWeight.w300,
                  fontSize: 20,
                ),
              ),

              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w200,
                color: Colors.white70,
              ),
            ),

            // ########################  SIZEBOX PARA O ESPAÇAMENTO ENTRE ELEMENTOS
            SizedBox(
              height: 10,
            ),

            // ########################  LABEL PARA CONFIRMAR SENHA
            TextFormField(
              keyboardType: TextInputType.text,
              textAlign: TextAlign.center,

              //Não exibir os caracteres da senha
              obscureText: true,

              decoration: new InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  borderSide: BorderSide(color: Color(0xff644b81)),
                ),
                hintText: "Confirmar senha",
                hintStyle: TextStyle(
                  color: Colors.white70,
                  //espessura
                  fontWeight: FontWeight.w300,
                  fontSize: 20,
                ),
              ),

              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w200,
                color: Colors.white70,
              ),
            ),

            SizedBox(
              height: 10,
            ),

            // ########################  LABEL PARA EMAIL
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,

              decoration: new InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  borderSide: BorderSide(color: Color(0xff644b81)),
                ),
                hintText: "Email",
                hintStyle: TextStyle(
                  color: Colors.white70,
                  //espessura
                  fontWeight: FontWeight.w300,
                  fontSize: 20,
                ),
              ),

              //Fonte interna
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w200,
                color: Colors.white70,
              ),
            ),

            SizedBox(
              height: 10,
            ),

            // ########################  LABEL PARA TELEFONE
            TextFormField(
              keyboardType: TextInputType.phone,
              textAlign: TextAlign.center,

              decoration: new InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  borderSide: BorderSide(color: Color(0xff644b81)),
                ),
                hintText: "Telefone",
                hintStyle: TextStyle(
                  color: Colors.white70,
                  //espessura
                  fontWeight: FontWeight.w300,
                  fontSize: 20,
                ),
              ),

              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w200,
                color: Colors.white70,
              ),
            ),

            SizedBox(
              height: 30,
            ),

            // ########################  BOTÃO PARA CADASTRAR
            Container(
              height: 45,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xff644b81),
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),

              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Cadastrar",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.white70,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  onPressed: ()=>{
                    // ######################## Ir para a página de Login
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyApp())),
                  },
                ),
              ),
            ),


          ],
        ),

      ),
    );
  }
}
