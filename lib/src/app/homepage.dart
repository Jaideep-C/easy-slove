import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _goldenEd="https://i2.wp.com/1.bp.blogspot.com/-VqYi5k44lzE/VBGcExleYsI/AAAAAAAACk4/6TdU41u-b24/s1600/Education%2Bis%2BGolden.png";
  Widget _profile(){
    return Container(
      decoration: BoxDecoration(
        gradient:LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomLeft,
          colors: [Color(0xffF1A7F1),Color(0xffFAD0C4)]
          ),
      ),
      child: Center(
          child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 60.0,
                backgroundImage: NetworkImage("https://avatars1.githubusercontent.com/u/51963564?s=460&v=4"),
              ),
              Text(
                "Qwerty H",
                style: TextStyle(
                  fontFamily: "Bilbo",
                  color: Colors.black87,
                  fontSize:40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "You Know me!",
                style: TextStyle(
                  fontFamily: "One",
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.7,
                ),
              ),
              SizedBox(
                width: 200,
                height: 10,
                child: Divider(
                  thickness: 1,
                  color: Colors.black,
                ),
              ),
              Card(
                color: Colors.cyan,
                margin: EdgeInsets.symmetric(vertical: 5.0,horizontal: 55.0),
                child: ListTile(
                  leading: Icon(
                      Icons.phone,
                      size: 24.0,
                      color: Colors.black,
                    ),
                  title: Text(
                      "+91 9876543210",
                      style: TextStyle(
                        fontFamily: "One",
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),  
                ),
              ),
              Card(
                color: Colors.cyan,
                margin: EdgeInsets.symmetric(vertical:8.0,horizontal:55.0 ),
                child: ListTile(
                  leading:Icon(
                      Icons.email,
                      size: 18.0,
                      color: Colors.black,
                    ),
                  title:Text(
                      "qwerty@mail.com",
                      style: TextStyle(
                      fontFamily: "Roboto",
                      letterSpacing: 0,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),  
    );
  }
  _launchURL() async {
  const url = 'http://easysolve.co.in/index.html/home.html#';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
  Widget _signupButton() {
    return InkWell(
        onTap: _launchURL,
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
                colors: [Color(0xff3a7bd5), Color(0xff00d2ff)])),//Color(0xfffbb448),Color(0xffe46b10)])),
        child: Text(
          'Sign Up ;)',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child:Scaffold(
          body: TabBarView(
            children: <Widget>[
              Scaffold(
                  appBar: AppBar(
                  backgroundColor: Colors.white,
                  ),
                  body: Container(
                    decoration:BoxDecoration(
                      gradient:LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomRight,
                        colors: [Colors.white70,Colors.blue]),
                      
                    ),
                  ),
              ),
              Scaffold(
                body: Stack(
                  children: <Widget>[
                    Center(
                      child: Column(
                        children: <Widget>[
                          Image.network(_goldenEd,width: 349,),                        
                          Card(
                            elevation: 5,
                            child: Container(
                              decoration: BoxDecoration(
                                gradient:LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Color(0xffFFEF77),
                                    Color(0xffF9FF60),
                                ]),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal:30,vertical: 10),
                                child: Text(                          
                                  "Golden-Education",
                                  style: GoogleFonts.portLligatSans(                              
                                    textStyle: Theme.of(context).textTheme.display1,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal:50,vertical:20),
                            child: Text(
                              "\"Your attitude, not your aptitude, will determine your altitude\" -EasySolve",
                              style: TextStyle(
                                fontFamily:"one",
                                fontSize: 20,
                              ),
                            ),
                          ),
                          SizedBox(height: 40,),
                          _signupButton(),                          
                        ],
                      ),
                    ),              
                  ],
                ),
              ),
              _profile(),
            ],
          ),
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.rss_feed),
              ),
              Tab(
                icon: Icon(Icons.perm_identity),
              ),
            ],
            labelColor: Colors.white,
            unselectedLabelColor: Color(0xffe46b10),
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(70),
              gradient: LinearGradient(
                colors: [Color(0xfffbb448),Color(0xffe46b10)],
              ),
            ),
          ),
          backgroundColor: Colors.white10,
        ),
      );
  }
}