import 'package:flutter/material.dart';
import 'package:vensemartserviceprovider/model/canceled_request.dart';
import 'package:auto_size_text/auto_size_text.dart';
import '../../screens/AcceptRejectBookingsScreen.dart';

class CancelledRequestCard extends StatelessWidget {
  final Data? CancelledRequestModel;
  CancelledRequestCard({Key? key, required this.CancelledRequestModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('set me up $CancelledRequestModel');
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 0.3),
            blurRadius: 1,
            color: Colors.black.withOpacity(0.2),
          ),
        ],
      ),
      width: MediaQuery.of(context).size.width / 1.1,
      height: MediaQuery.of(context).size.height / 6,
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText('New Cancelled request'),

                  Container(
                      width: MediaQuery.of(context).size.width / 3.2,
                      child: AutoSizeText(
                          'From : ${CancelledRequestModel?.name ?? 'no name'}')),

                  // Flexible(
                  //   child: RichText(
                  //     overflow: TextOverflow.ellipsis,
                  //     strutStyle: StrutStyle(fontSize: 3  * MediaQuery.of(context).size.height * 0.01.0),
                  //     text: TextSpan(
                  //         style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),
                  //         text: 'From ${CancelledRequestModel?.name} '),
                  //   ),
                  // ),
                  AutoSizeText('Date : ${CancelledRequestModel?.bookingDate ?? 'no date'}'),
                  AutoSizeText('time:  ${CancelledRequestModel?.bookingTime ?? 'no time'}'),
                ],
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // GestureDetector(
                //   onTap: (){
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) => AcceptRejectBookingsScreen(userAddress: '${CancelledRequestModel?.userAddress}', bookingId: '${CancelledRequestModel?.bookingId}', date: '${CancelledRequestModel?.bookingDate}',),
                //       ),
                //     );
                //   },
                // child: Container(
                //   margin: EdgeInsets.only(left: 15,bottom: 21.0),
                //   width: MediaQuery.of(context).size.width/3.6,
                //   height: MediaQuery.of(context).size.height/18,
                //   decoration: BoxDecoration(
                //       color: Color(0xff1456f1),
                //       borderRadius: BorderRadius.circular(20.0)
                //   ),
                //   child: Center(child: AutoSizeText('View',style: TextStyle(color: Colors.white)),),
                // ),
                // )
              ],
            )
          ]),
    );
  }
}
