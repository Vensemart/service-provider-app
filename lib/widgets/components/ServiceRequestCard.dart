import 'package:flutter/material.dart';
import 'package:vensemartserviceprovider/model/upcoming_request.dart';

import '../../screens/AcceptRejectBookingsScreen.dart';

class ServiceRequestCard extends StatelessWidget {
  Data? UpcomingRequest;
  ServiceRequestCard({Key? key, required this.UpcomingRequest}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    print('set me up $UpcomingRequest');
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 0.1),
            blurRadius: 1,
            color: Colors.black.withOpacity(0.1),
          ),
        ],

      ),
      width: double.infinity,
      height: MediaQuery.of(context).size.height/6,
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Container(
              margin: EdgeInsets.only(top: 22,left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text('New Service Request'),
                  // Text('${UpcomingRequest?.name}' ?? ''),
                  Flexible(
                    child: RichText(
                      overflow: TextOverflow.ellipsis,
                      strutStyle: StrutStyle(fontSize: 40.0),
                      text: TextSpan(
                          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),
                          text: 'From ${UpcomingRequest?.name} '),
                    ),
                  ),
                  Text('${UpcomingRequest?.bookingDate}'),
                  Text('${UpcomingRequest?.bookingTime}'),
                ],
              ),
            ),
            SizedBox(width: 20.0,),

            Column(
              mainAxisAlignment: MainAxisAlignment.end,

              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AcceptRejectBookingsScreen(userAddress: '${UpcomingRequest?.userAddress}', bookingId: '${UpcomingRequest?.bookingId}', date: '${UpcomingRequest?.bookingDate}',),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 21.0),
                    width: MediaQuery.of(context).size.width/3.6,
                    height: MediaQuery.of(context).size.height/18,
                    decoration: BoxDecoration(
                        color: Color(0xff1456f1),
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: Center(child: Text('View',style: TextStyle(color: Colors.white)),),
                  ),
                )
              ],
            )
          ]
      ),
    );
  }
}
