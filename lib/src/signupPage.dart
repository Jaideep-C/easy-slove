import 'package:easy_solve/src/tutor/tutorSignup.dart';
import 'package:easy_solve/src/user/userSignup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SinupPage extends StatefulWidget {
    final String title;
    SinupPage({Key key, this.title}) : super(key:key);
  @override
  _SinupPageState createState() => _SinupPageState();
}

class _SinupPageState extends State<SinupPage> {
   
   Widget _divider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 2,
              ),
            ),
          ),
          Text('or'),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 2,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
   Widget _tutor(){
     return InkWell(
       onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => TutorSignupPage()));
      },
       child: Container(
         width:MediaQuery.of(context).size.width,
         padding: EdgeInsets.symmetric(vertical: 13),
         alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: Colors.white, width: 2),
        ),
         child: Text(
           "Tutor",
           style: TextStyle(fontSize: 20, color: Colors.white),
         ),
       ),
     );
   }
   Widget _student(){
     return InkWell(
       onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => UserSignupPage()));
      },
       child: Container(
         width:MediaQuery.of(context).size.width,
         padding: EdgeInsets.symmetric(vertical: 13),
         alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: Colors.white, width: 2),
        ),
         child: Text(
           "Student",
           style: TextStyle(fontSize: 20, color: Colors.white),
         ),
       ),
     );
   }
   Widget _title() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'Easy',
        style: GoogleFonts.portLligatSans(
          textStyle: Theme.of(context).textTheme.display1,
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        children: [
          TextSpan(
            text: 'Solve',
            //style: TextStyle(color:  Colors.black, fontSize: 40,fontWeight: FontWeight.bold,)
          ),
        ]),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
            decoration:BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              // end: Alignment.bottomRight,
              colors: [
                Color(0xff3a7bd5),
                Color(0xff00d2ff),
              ]
            ),
            borderRadius:BorderRadius.all(Radius.circular(5)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.grey.shade200,
                offset: Offset(2,4),

              ),
            ],
          ),
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[                
                    _title(),
                    SizedBox(
                        height: 5,
                      ),
                    Column(
                      children: <Widget>[
                        Image.network("https://images.unsplash.com/photo-1513258496099-48168024aec0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"),
                      ],
                    ),
                    SizedBox(
                        height: 5,
                      ),
                    _tutor(),
                    _divider(),
                    _student(),
                  ],
                ),
              ),
              Positioned(top: 40, left: 0, child: _backButton()),
            ],
          ), 
        ),
      ),
    );
  }
}