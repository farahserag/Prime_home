import 'package:flutter/material.dart';
import 'package:prime_home/Screens/home.dart';
import 'package:prime_home/Screens/plumbService.dart';
import 'package:prime_home/widget/customeCon.dart';
import 'package:prime_home/widget/customeCon2.dart';
import 'package:prime_home/widget/widgets.dart';

class GeneralConst extends StatefulWidget {
  @override
  _GeneralConstState createState() => _GeneralConstState();
}

class _GeneralConstState extends State<GeneralConst> {
  var b = Color.fromRGBO(30, 70, 69, 1);
  var c = Color.fromRGBO(154, 141, 108, 1);
  var g = Color.fromRGBO(192, 184, 164, 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => navigateAndFinish(context, Home()),
          icon: Icon(Icons.arrow_back_ios_new_outlined),
          color: b,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/menu.png'),
          )
        ],
        title: Center(
            child: Text(
          'البناء العام',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: b,
            fontSize: 25,
          ),
        )),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 25, left: 30, right: 20),
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'خدمات البناء العام',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 30, color: b),
              ),
              Text(
                'هذا النص هو مثال لنص يمكن ان يستبدل في نفس المساحه',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 17, color: c),
              ),
              SizedBox(height: 10),
              Text(
                "ما نقدمه",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 30, color: b),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customContainer(image: 'assets/cond.png', text: 'التكييف'),
                  customContainer(image: 'assets/human.png', text: 'كهرباء'),
                  customContainer(image: 'assets/human.png', text: 'تجاره'),
                  GestureDetector(
                    onTap: () => navigateAndFinish(context, PlumbService()),
                    child: customContainer(
                        image: 'assets/human.png', text: 'سباكه'),
                  )
                ],
              ),
              SizedBox(height: 7),
              customContainer(image: 'assets/repair.png', text: 'جميع الخدمات'),
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
                  //   width: 220,
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
                  childAspectRatio: 1.35 / 2,
                  maxCrossAxisExtent: 200,
                  crossAxisSpacing: 20,
                ),
                children: [
                  customeCon2(
                      image: 'assets/pic7.png',
                      text: 'تجاره برج النيل',
                      text1: 'هذا النص هو مثال لنص يمكن ان يستبدل في المزيد'),
                  customeCon2(
                      image: 'assets/pic8.png',
                      text: 'متحف باريس',
                      text1: 'هذا النص هو مثال لنص يمكن ان يستبدل في المزيد'),
                  customeCon2(
                      image: 'assets/pic6.png',
                      text: ' صرف مصر الخير ',
                      text1: 'هذا النص هو مثال لنص يمكن ان يستبدل في المزيد'),
                  customeCon2(
                      image: 'assets/pic5.png',
                      text: 'كهرباء شركه الاتحاد ',
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
