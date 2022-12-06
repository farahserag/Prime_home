import 'package:flutter/material.dart';
import 'package:prime_home/Screens/home.dart';
import 'package:prime_home/widget/widgets.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var b = Color.fromRGBO(30, 70, 69, 1);
  var c = Color.fromRGBO(154, 141, 108, 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Center(
                  child: Column(
                children: [
                  Container(child: Image.asset('assets/home.png')),
                  Text('مرحبا بك',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: b,
                        //Color.fromRGBO(36, 62, 63, 1),
                        fontSize: 29,
                      )),
                  Text('أنشئ حساب جديد   ',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: c,
                        fontSize: 21,
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 380,
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            labelText: 'الاسم كامل ',
                            labelStyle: TextStyle(
                              color: b,
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: b, width: 2)),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: b, width: 2),
                            ),
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
                    width: 380,
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'البريد الالكتروني  ',
                            labelStyle: TextStyle(
                              color: b,
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: b, width: 2)),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: b, width: 2),
                            ),
                            prefixIcon: Icon(
                              Icons.email,
                              color: b,
                            ),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 380,
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: ' رقم الهاتف ',
                            labelStyle: TextStyle(
                              color: b,
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: b, width: 2)),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: b, width: 2),
                            ),
                            prefixIcon: Icon(
                              Icons.phone,
                              color: b,
                            ),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 380,
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
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'هل نسيت الرقم السري ؟',
                          style: TextStyle(
                            fontSize: 15,
                            color: c,
                          ),
                        )),
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
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    'او سجل عن طريق',
                    style: TextStyle(
                      fontSize: 15,
                      color: c,
                    ),
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
                      )
                    ],
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
