
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:healthindia/screen/bmi.dart';
import 'package:healthindia/screen/calorie.dart';
import 'package:healthindia/screen/homescreen.dart';
import 'package:healthindia/screen/registration.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _nameFilter = new TextEditingController();
  final TextEditingController _passwordFilter = new TextEditingController();
  String _name = "";
  String _password = "";
  // bool isLogin=false;
  // SharedPreferences sharedPreferences;
  // @override
  // void initState() async{
  //   super.initState();
  //   _checkLogin();
  // } Future _checkLogin()async{
  //    sharedPreferences = await SharedPreferences.getInstance();
  //    if(sharedPreferences.getBool("isLogin"))
  //    {
  //     Navigator.push(context,
  //      MaterialPageRoute(
  //     builder: (context) =>  HomeScreen())); 
  //    }
 
  // }

  _LoginPageState() {
    _nameFilter.addListener;
    _passwordFilter.addListener;
  }

  void _nameListen(name) {
    if (_nameFilter.text.isEmpty) {
      _name = "";
    } else {
      _name = _nameFilter.text;
    }
  }

  void _passwordListen(password) {
    if (_passwordFilter.text.isEmpty) {
      _password = "";
    } else {
      _password = _passwordFilter.text;
    }
  }

  void message() async {
    if (_name == _password)
    // sharedPreferences = await SharedPreferences.getInstance();
    // sharedPreferences.setBool("isLogin",true);
    // sharedPreferences.setString("username", _nameFilter.text);
    // sharedPreferences.setString("password", _passwordFilter.text); 
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              backgroundColor: Colors.white,
              title: Text('Login'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  CircularProgressIndicator(),
                  SizedBox(
                    height: 5,
                  ),
                  Text("You Logged--in successfully!!"),
                ],
              ),
            );
          }
          );
  

          
    // else
    //  {
    //   sharedPreferences = await SharedPreferences.getInstance();
    // sharedPreferences.setBool("isLogin",false);
    //   showDialog(
    //       context: context,
    //       builder: (BuildContext context) {
    //         return AlertDialog(
    //           backgroundColor: Colors.white,
    //           title: Text('Login'),
    //           content:
    //               Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
    //             CircularProgressIndicator(),
    //             SizedBox(
    //               height: 5,
    //             ),
    //             Text("You Put Wrong Password!! Please Register Your Account"),
    //           ]),
    //         );
    //       });
    // }
  }

  bool isload = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
            child: Scaffold(
               
                backgroundColor: Colors.white,
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(260.0),
                  child: AppBar(
                    
          
          
                 

                    flexibleSpace: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [ 
                        Container(
                        width: 250,
                        height: 200,
                        margin: EdgeInsets.only(top: 30, bottom: 10),
                        child: CircleAvatar(
                        backgroundImage:
                              AssetImage('assets/healthyindia.jpeg'),
                        )
                        ),
                        
                        
                      ],
                    ),
                    elevation: 0.0,
                    backgroundColor: Colors.white,
                    brightness: Brightness.light,
                  ),
                ),
    
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.green.withRed(10)),
            accountName: Text(
              "Mitali Mondal",
              style: TextStyle(
                  color: Colors.indigo,
                  fontStyle: FontStyle.italic,
                  fontSize: 20),
            ),
            accountEmail: Text(
              "mitalimondal450@gmail.com",
              style: TextStyle(
                  color: Colors.indigo,
                  fontStyle: FontStyle.italic,
                  fontSize: 20),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Theme.of(context).platform == TargetPlatform.iOS
                  ? Colors.brown
                  : Colors.white,
              child: Text(
                "M",
                style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 50.0,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Home',
              style: TextStyle(
                  color: Colors.brown,
                  fontStyle: FontStyle.italic,
                  fontSize: 20),
            ),
            trailing: Icon(Icons.arrow_forward, color: Colors.brown),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
          ),
          ListTile(
            title: Text(
              'BMI Calculator',
              style: TextStyle(
                  color: Colors.brown,
                  fontStyle: FontStyle.italic,
                  fontSize: 20),
            ),
            trailing: Icon(Icons.arrow_forward, color: Colors.brown),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Bmical()));
            },
          ),
          ListTile(
            title: Text(
              'Calorie Calculator',
              style: TextStyle(
                  color: Colors.brown,
                  fontStyle: FontStyle.italic,
                  fontSize: 20),
            ),
            trailing: Icon(Icons.arrow_forward, color: Colors.brown),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Calorie()));
            },
          ),
          ListTile(
            title: Text(
              'Logout',
              style: TextStyle(
                  color: Colors.brown,
                  fontStyle: FontStyle.italic,
                  fontSize: 20),
            ),
            trailing: Icon(
              Icons.arrow_forward,
              color: Colors.brown,
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login()));
            },
          ),
        ]),
      ),
      body: isload
          ? new Container(
              color: Colors.grey[300],
              width: 70.0,
              height: 70.0,
              child: new Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: new Center(child: new CircularProgressIndicator())),
            )
          : SingleChildScrollView(
              child: Stack(children: <Widget>[
                Column(mainAxisAlignment: MainAxisAlignment.start, children: <
                    Widget>[
                  
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: <
                      Widget>[
                    Container(
                      width: 350,
                      height: 240,
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.blue, blurRadius: 2)
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(children: <Widget>[
                        Padding(
                          padding:
                              EdgeInsets.only(top: 15, left: 15, right: 15),
                          child: TextFormField(
                            onChanged: _nameListen,
                            controller: _nameFilter,
                            keyboardType: TextInputType.text,
                            inputFormatters: <TextInputFormatter>[
                              WhitelistingTextInputFormatter(
                                  RegExp("[a-zA-Z]")),
                            ],
                            validator: (value) {
                              if (value.length < 2) {
                                return 'Name not long enough';
                              }
                            },
                            decoration: InputDecoration(
                              hintText: ' Enter Your Name',
                              icon: Icon(Icons.person, color: Colors.blue),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(top: 15, left: 15, right: 15),
                          child: TextField(
                            onChanged: _passwordListen,
                            controller: _passwordFilter,
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: ' password',
                              icon:
                                  Icon(Icons.lock_outline, color: Colors.blue),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(top: 30, left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                width: 100,
                                height: 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.blue,
                                ),
                                child: FlatButton(
                                  onPressed: () {
                                    isload = true;
                                    message();
                                    Future.delayed(Duration(seconds: 5), () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  HomeScreen()));
                                    });
                                  },
                                  child: Text(
                                    'Login',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              Container(
                                width: 200,
                                height: 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.blue,
                                ),
                                child: FlatButton(
                                  onPressed: () {
                                    setState(() {});
                                    message();
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Registration()));
                                  },
                                  child: Text(
                                    'Register Your Account',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                    ),
                  ]),
                ]),
              ]),
            ),
            )
        )
    );
  }
}
