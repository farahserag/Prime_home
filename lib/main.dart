import 'package:flutter/material.dart';
import 'package:prime_home/Screens/home.dart';
import 'package:prime_home/Screens/signUp.dart';
import 'package:prime_home/widget/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var b = Color.fromRGBO(30, 70, 69, 1);
  var c = Color.fromRGBO(154, 141, 108, 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Center(
                      child: Column(
                          //crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                        Container(child: Image.asset('assets/home.png')),
                        Text('مرحبا بعودتك',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: b,
                              //Color.fromRGBO(36, 62, 63, 1),
                              fontSize: 29,
                            )),
                        Text('من فضلك سجل دخولك',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: c,
                              fontSize: 21,
                            )),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: 350,
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: TextFormField(
                                decoration: InputDecoration(
                              labelText: 'البريد الالكتروني',
                              labelStyle: TextStyle(
                                color: b,
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: b, width: 2)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: b, width: 2)),
                              prefixIcon: Icon(
                                Icons.person,
                                color: b,
                              ),
                            )),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 350,
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: 'الرقم السري',
                                labelStyle: TextStyle(
                                  color: b,
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: b, width: 2)),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: b, width: 2),
                                ),
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: b,
                                ),
                              ),
                              keyboardType: TextInputType.visiblePassword,
                            ),
                          ),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'هل نسيت الرقم السري ؟',
                              style: TextStyle(
                                fontSize: 15,
                                color: c,
                              ),
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 40,
                          width: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: b,
                          ),
                          // ignore: deprecated_member_use
                          child: FlatButton(
                              onPressed: () {
                                navigateAndFinish(context, Home());
                              },
                              child: Text(
                                'تسجيل دخول',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'او سجل عن طريق',
                          style: TextStyle(
                            fontSize: 15,
                            color: c,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.red),
                              // ignore: deprecated_member_use
                              child: FlatButton(
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Text(
                                        'G',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      Text(
                                        'جوجل ',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ],
                                  )),
                            ),
                            Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.blue),
                              // ignore: deprecated_member_use
                              child: FlatButton(
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Text(
                                        'f',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      Text(
                                        'فيسبوك ',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 17),
                                      ),
                                    ],
                                  )),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                                onPressed: () {
                                  navigateAndFinish(context, SignUp());
                                },
                                child: Text(
                                  'انشاء حساب',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: b,
                                      fontWeight: FontWeight.bold),
                                )),
                            Text(
                              "ليس لديك حساب ؟",
                              style: TextStyle(
                                fontSize: 20,
                                color: b,
                              ),
                            ),
                          ],
                        ),
                      ])),
                ],
              )),
        ));
  }
}
