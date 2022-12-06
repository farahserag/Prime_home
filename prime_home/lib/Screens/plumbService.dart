import 'package:flutter/material.dart';
import 'package:prime_home/Screens/generalConst.dart';
import 'package:prime_home/main.dart';
import 'package:prime_home/Screens/serviceReserv.dart';
import 'package:prime_home/widget/widgets.dart';

class PlumbService extends StatefulWidget {
  const PlumbService({Key? key}) : super(key: key);

  @override
  _PlumbServiceState createState() => _PlumbServiceState();
}

class _PlumbServiceState extends State<PlumbService> {
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
          onPressed: () => navigateAndFinish(context, GeneralConst()),
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
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
              // SizedBox(height: 30),
              Text(
                'خدمة السباكه',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 30, color: b),
              ),
              Text(
                'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة لقد تم توليد هذا النص من',
                maxLines: 2,
                //  overflow: TextOverflow.clip,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: c,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'مشاريعنا',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 30, color: b),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: 180,
                          height: 140,
                          child: Image.asset(
                            'assets/paris.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          'متحف باريس',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: b,
                          ),
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
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: 180,
                          height: 140,
                          child: Image.asset(
                            'assets/nile.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          'صرف برج النيل',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: b),
                        ),
                        Text(
                          'هذا النص هو مثل لنص يمكن ان يستخدم',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textDirection: TextDirection.rtl,
                          style: TextStyle(fontSize: 12, color: c),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 7,
              ),
              Text('راي العملاء',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 30, color: b)),
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
            ]),
          ),
        ),
      ),
    );
  }
}
// Padding(
//           padding: EdgeInsets.only(left: 25, right: 25, top: 20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               Text(
//                 '',
//                 style: TextStyle(
//                     fontWeight: FontWeight.bold, fontSize: 30, color: b),
//               ),
//               Text(
//                 'هذا النص هو مثال لنص يمكن ان يستبدل في نفس المساحه',
//                 style: TextStyle(
//                     fontWeight: FontWeight.bold, fontSize: 17, color: c),
//               ),
//               SizedBox(height: 10),
//               Text(
//                 "ما نقدمه",
//                 style: TextStyle(
//                     fontWeight: FontWeight.bold, fontSize: 30, color: b),
//               ),
//             ],
//           ),
//         )