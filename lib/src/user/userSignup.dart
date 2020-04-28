import 'package:easy_solve/src/Widget/bezierContainer.dart';
import 'package:easy_solve/src/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserSignupPage extends StatefulWidget {
    final String title;
    UserSignupPage({Key key, this.title}) : super(key:key);
  @override
  _UserSignupPageState createState() => _UserSignupPageState();
}

class _UserSignupPageState extends State<UserSignupPage> {

   Widget _entryField(String title, {bool isPassword = false,String hint=""}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
              obscureText: isPassword,
              decoration: InputDecoration(
                  hintText: hint,
                  border: InputBorder.none ,
                  fillColor: Color(0xfff3f3f4),
                  filled: true))
        ],
      ),
    );
  }

  Widget _title() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'E',
          style: GoogleFonts.portLligatSans(
            textStyle: Theme.of(context).textTheme.display1,
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
          children: [
            TextSpan(
              text: 'as',
              style: TextStyle(color: Color(0xff3a7bd5), fontSize: 30),//0xffe46b10), fontSize: 30),
            ),
            TextSpan(
              text: 'yS',
              style: TextStyle(color:  Colors.black, fontSize: 30),
            ),
            TextSpan(
              text: 'olv',
              style: TextStyle(color: Color(0xffe46b10), fontSize: 30),
            ),
            TextSpan(
              text: 'e',
              style: TextStyle(color:  Colors.black, fontSize: 30),
            ),
          ]),
    );
  }
  
  Widget _loginLabel() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Already have an account ?',
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      },
            child: Text(
              'Login',
              style: TextStyle(
                  color: Color(0xff3a7bd5),
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
  
  Widget _signupButton() {
    return InkWell(
        onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      },
        child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 15),
        margin: EdgeInsets.symmetric(vertical:5,horizontal:20,),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.grey.shade200,
                  offset: Offset(2, 4),
                  blurRadius: 5,
                  spreadRadius: 3)
            ],
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xff3a7bd5), Color(0xff00d2ff)])),
        child: Text(
          'Sign Up ;)',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
 
  Widget _backButton() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(Icons.keyboard_arrow_left, color: Colors.black),
            ),
            Text('Back',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500))
          ],
        ),
      ),
    );
  }
  
  Widget _newProfile(){
    return Column(
      children: <Widget>[
        _entryField(
          "User Name",
          hint:"John Wick",
        ),
        _entryField(
          "UserID",
          hint:"john_wick679",
        ),
        _entryField(
          "Email ID",
          hint:"johnwick@email.com",
        ),
        _entryField(
          "Password",
          isPassword: true,
        ),
      ],
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:Container(
          height: MediaQuery.of(context).size.height,
          child:Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.bottomCenter,
                child: _loginLabel(),
              ),
              Positioned(top: 40, left: 0, child: _backButton()),
              Positioned(
                  top: -MediaQuery.of(context).size.height * .15,
                  right: -MediaQuery.of(context).size.width * .4,
                  child: BezierContainer()
                  ),
              Container(
                padding: EdgeInsets.symmetric(vertical:20,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                        flex: 3,
                        child: SizedBox(),
                      ),
                    _title(),
                    SizedBox(
                        height: 20,
                      ),
                    _newProfile(),
                    SizedBox(
                        height: 20,
                      ),
                    _signupButton(),
                    Expanded(
                        flex: 2,
                        child: SizedBox(),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}