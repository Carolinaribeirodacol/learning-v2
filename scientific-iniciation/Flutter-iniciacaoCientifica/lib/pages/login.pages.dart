import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/pages/cadastro.dart';

class LoginPage extends StatelessWidget {
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

            // ########################  SIZEBOX PARA O ÍCONE
            SizedBox(
              child: Icon(
                Icons.account_circle,
                color: Color(0xff644b81),
                size: 80.0,
              ),
            ),

            // ########################  SIZEBOX PARA O ESPAÇAMENTO ENTRE ELEMENTOS
            SizedBox(
              height: 5,
            ),

            // ########################  CONTAINER DE LOGIN - TEXTO
          Container(
          alignment: Alignment.center,
            child: Text(
              'Login',
              style: TextStyle(
                color: Colors.white70,
                //espessura
                fontWeight: FontWeight.w700,
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
              height: 20,
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


            SizedBox(
              height: 2,
            ),

            // ########################  BOTÃO PARA ESQUECI MINHA SENHA
            Container(
              height: 40,
              alignment: Alignment.center,
              child: FlatButton(
                child: Text(
                  "Esqueci minha senha",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Color(0xff644b81),
                    fontSize: 16,
                  ),
                ),
                onPressed: (){},
              ),
            ),

            // ########################  SIZEBOX PARA O ESPAÇAMENTO ENTRE ELEMENTOS
            SizedBox(
              height: 15,
            ),

            // ########################  BOTÃO PARA ENTRAR
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
                        "Entrar",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.white70,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  onPressed: ()=>{},
                ),
              ),
            ),

            // ########################  SIZEBOX PARA O ESPAÇAMENTO ENTRE ELEMENTOS
            SizedBox(
              height: 15,
            ),

            // ########################  BOTÃO PARA ENTRAR COM O FACEBOOK
            Container(
              height: 45,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Color(0xff4267B2),
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),

              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(

                    //Espaço entre o ícone e o texto
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: <Widget>[

                      //Imagem do facebook
                      Container(
                        child: SizedBox(
                          child: Image.asset("assets/iconeFace.png"),
                          height: 30,
                          width: 30,
                        ),
                      ),

                      //Botão de entrar com Facebook
                      Text(
                        'Entrar com o Facebook',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.white70,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  onPressed: ()=>{},
                ),
              ),
            ),

            // ########################  SIZEBOX PARA O ESPAÇAMENTO ENTRE ELEMENTOS
            SizedBox(
              height: 15,
            ),

            // ########################  BOTÃO PARA ENTRAR COM GOOGLE
            Container(
              height: 45,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),

              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(

                    //Espaço entre o ícone e o texto
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: <Widget>[

                      //Imagem do facebook
                      Container(
                        child: SizedBox(
                          child: Image.asset("assets/iconeGoogle.png"),
                          height: 30,
                          width: 30,
                        ),
                      ),

                      //Botão de entrar com Facebook
                      Text(
                        'Entrar com o Google',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.black54,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  onPressed: ()=>{},
                ),
              ),
            ),

            // ########################  SIZEBOX PARA O ESPAÇAMENTO ENTRE ELEMENTOS
            SizedBox(
              height: 15,
            ),

        // ########################  TEXTO DE CADASTRO
        Container(
          alignment: Alignment.center,
          child: Text(
            'Não tem uma conta?',
            style: TextStyle(
              color: Colors.white70,
              //espessura
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          ),
        ),

            SizedBox(
              height: 2,
            ),

            // ########################  BOTÃO PARA CADASTRAR
            Container(
              height: 35,
              child: FlatButton(
                child: Text(
                  "Cadastrar",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff644b81),
                    //espessura
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
                onPressed: ()=>{
                  // ######################## Ir para a página de cadastro
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => cadastro())),
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}
