import 'package:flutter/material.dart';
import 'package:prime_home/Screens/home.dart';
import 'package:prime_home/Screens/serviceReserv.dart';
import 'package:prime_home/widget/containerImage.dart';
import 'package:prime_home/widget/widgets.dart';

class Service extends StatefulWidget {
  const Service({Key? key}) : super(key: key);

  @override
  _ServiceState createState() => _ServiceState();
}

class _ServiceState extends State<Service> {
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
          'اعمالنا',
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
                  'الحي المصري  ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 30, color: b),
                ),
                Text(
                  'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة لقد تم توليد هذا النص من',
                  maxLines: 2,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: c,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'صور من المشروع',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 30, color: b),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Wrap(
                    alignment: WrapAlignment.end,
                    spacing: 10.0,
                    // runSpacing: 10.0,
                    children: [
                      containerImage(),
                      containerImage(),
                      containerImage(),
                      containerImage(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'رأي العملاء',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 30, color: b),
                ),
                Center(
                  child: Container(
                    width: 300,
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: c, width: 2)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_back_ios_new_outlined,
                              color: b,
                            )),
                        Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'مصطفي هلال',
                                style: TextStyle(
                                    color: b,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'هذا النص هو مثثال لنص يمكن ان يستخدم',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: c,
                                ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: b,
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Container(
                    height: 40,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: b,
                    ),
                    // ignore: deprecated_member_use
                    child: FlatButton(
                        onPressed: () {
                          navigateAndFinish(context, ServiceReservation());
                        },
                        child: Text(
                          'حجز طلب معاينه',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
