import 'package:flutter/material.dart';
import 'package:prime_home/Screens/generalConst.dart';
import 'package:prime_home/Screens/home.dart';
import 'package:prime_home/Screens/plumbService.dart';

import 'package:prime_home/widget/widgets.dart';

class ServiceReservation extends StatefulWidget {
  const ServiceReservation({Key? key}) : super(key: key);

  @override
  _ServiceReservationState createState() => _ServiceReservationState();
}

class _ServiceReservationState extends State<ServiceReservation> {
  var b = Color.fromRGBO(30, 70, 69, 1);
  var c = Color.fromRGBO(154, 141, 108, 1);
  var g = Color.fromRGBO(192, 184, 164, 1);
  var _checked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () => navigateAndFinish(context, PlumbService()),
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
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'حجز طلب معاينه',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 30, color: b),
                  ),
                  Text(
                    'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة   لقد تم توليد هذا النص من',
                    maxLines: 2,
                    //  overflow: TextOverflow.clip,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: c,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 360,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: g),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextFormField(
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          hintText: 'الاسم بالكامل',
                          hintStyle: TextStyle(fontSize: 15, color: g),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 360,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: g),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextFormField(
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          hintText: ' العنوان',
                          hintStyle: TextStyle(fontSize: 15, color: g),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 360,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: g),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextFormField(
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          hintText: ' رقم الهاتف',
                          hintStyle: TextStyle(fontSize: 15, color: g),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '  ميعاد المعاينه',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20, color: b),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'الخميس الساعه 5',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: b,
                        ),
                      ),
                      Checkbox(
                          value: _checked,
                          onChanged: (value) {
                            setState(() {
                              _checked = value!;
                            });
                          }),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'الخميس الساعه 5',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: b,
                        ),
                      ),
                      Checkbox(
                          value: _checked,
                          onChanged: (value) {
                            setState(() {
                              _checked = value!;
                            });
                          }),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'الخميس الساعه 5',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: b,
                        ),
                      ),
                      Checkbox(
                          value: _checked,
                          onChanged: (value) {
                            setState(() {
                              _checked = value!;
                            });
                          }),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'الخميس الساعه 5',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: b,
                        ),
                      ),
                      Checkbox(
                          value: _checked,
                          onChanged: (value) {
                            setState(() {
                              _checked = value!;
                            });
                          }),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    InkWell(
                        onTap: () => navigateAndFinish(
                              context,
                              Home(),
                            ),
                        child: Container(
                            width: 152,
                            height: 38,
                            decoration: BoxDecoration(
                              color: b,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              'حجز طلب معاينه',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            )))
                  ])
                ],
              ),
            ),
          ),
        ));
  }
}
