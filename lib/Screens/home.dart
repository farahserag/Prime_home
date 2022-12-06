import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:prime_home/Screens/generalConst.dart';
import 'package:prime_home/main.dart';
import 'package:prime_home/Screens/service.dart';
import 'package:prime_home/widget/customeCon.dart';
import 'package:prime_home/widget/customeCon2.dart';
import 'package:prime_home/widget/widgets.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var b = Color.fromRGBO(30, 70, 69, 1);
  var c = Color.fromRGBO(154, 141, 108, 1);
  var g = Color.fromRGBO(192, 184, 164, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.notifications,
          color: b,
        ),
        title: Center(
          child: Container(
              height: 55, width: 57, child: Image.asset('assets/home.png')),
        ),
      ),
      ///////////////////////////////////////////////
      endDrawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: double.infinity,
                height: 150,
                child: Image.asset('assets/home.png'),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'الرئيسية',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 27, color: b),
              ),
              Divider(
                color: c,
                thickness: 2,
              ),
              Text(
                'اعمالنا',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 27, color: b),
              ),
              Divider(
                color: c,
                thickness: 2,
              ),
              Text(
                'من نحن',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 27, color: b),
              ),
              Divider(
                color: c,
                thickness: 2,
              ),
              Text(
                ' الخدمات',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 27, color: b),
              ),
              Divider(
                color: c,
                thickness: 2,
              ),
              SizedBox(
                height: 100,
              ),
              Center(
                child: TextButton(
                    onPressed: () {
                      navigateAndFinish(context, MyHomePage());
                    },
                    child: Text('تسجيل الخروج',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                            fontSize: 27,
                            color: c))),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 25, left: 30, right: 30),
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Image.asset('assets/tune.png'),
                  ),
                  Container(
                    width: 310,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: c),
                    ),
                    child: TextFormField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                          hintText: 'ابحث عن خدمة محدده',
                          hintStyle: TextStyle(
                            fontSize: 17,
                            color: g,
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          suffixIcon: Icon(
                            Icons.search,
                            color: g,
                          )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'خدماتنا',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      customContainer(
                          image: 'assets/eco.png', text: 'خدمات الكهرباء'),
                      customContainer(
                          image: 'assets/roof.png', text: 'تسقيف حديدي '),
                      GestureDetector(
                        onTap: () => navigateAndFinish(context, GeneralConst()),
                        child: customContainer(
                            image: 'assets/homee.png', text: 'البناء العام'),
                      ),
                      customContainer(
                          image: 'assets/building.png',
                          text: 'بناء المشروعات '),
                    ],
                  ),
                  SizedBox(height: 7),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      customContainer(
                          image: 'assets/repair.png', text: 'ترميم المنزل'),
                      customContainer(
                          image: 'assets/eco.png', text: 'صيانه المنزل '),
                      customContainer(
                          image: 'assets/reno.png', text: 'عمل الارضيات'),
                      customContainer(
                          image: 'assets/conversation.png',
                          text: 'استشارات البناء'),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'المزيد',
                    style: TextStyle(fontSize: 20, color: c),
                  ),
                  // SizedBox(
                  //   width: 100,
                  // ),
                  Text(
                    'احدث مشاريعنا',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Expanded(
                  child: GridView(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  mainAxisSpacing: 20,
                  childAspectRatio: 1.31 / 2,
                  maxCrossAxisExtent: 200,
                  crossAxisSpacing: 20,
                ),
                // padding: EdgeInsets.all(10),
                children: [
                  customeCon2(
                      image: 'assets/pic2.png',
                      text: 'برج السلام ',
                      text1: 'هذا النص هو مثال لنص يمكن ان يستبدل في المزيد'),
                  GestureDetector(
                    onTap: () => navigateAndFinish(context, Service()),
                    child: customeCon2(
                        image: 'assets/pic1.png',
                        text: 'الحي المصري',
                        text1: 'هذا النص هو مثال لنص يمكن ان يستبدل في المزيد'),
                  ),
                  customeCon2(
                      image: 'assets/pic4.png',
                      text: ' استشاره فنيه ',
                      text1: 'هذا النص هو مثال لنص يمكن ان يستبدل في المزيد'),
                  customeCon2(
                      image: 'assets/pic3.png',
                      text: 'ترميم متتحف ',
                      text1: 'هذا النص هو مثال لنص يمكن ان يستبدل في المزيد'),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
