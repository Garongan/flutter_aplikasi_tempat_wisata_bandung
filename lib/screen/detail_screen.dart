import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final xPadding = width * 0.06;
    final xGap = width * 0.02;
    final yGap = width * 0.03;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(239, 239, 239, 1),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: EdgeInsets.only(
                top: yGap,
                left: xPadding,
                right: xPadding,
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Farm House Lembang',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 15,
                        color: Color.fromRGBO(29, 170, 171, 1),
                      ),
                      Text(
                        'Lembang',
                        style: TextStyle(
                            color: Color.fromRGBO(29, 170, 171, 1),
                            fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: yGap,
                left: xPadding,
                right: xPadding,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7)),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.calendar_today,
                            color: Color.fromRGBO(29, 170, 171, 1),
                            size: 24,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Open Everyday',
                            style: TextStyle(
                                color: Color.fromRGBO(29, 170, 171, 1),
                                fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: xGap,
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      width: 115,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7)),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.access_time,
                            color: Color.fromRGBO(29, 170, 171, 1),
                            size: 24,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            '09.00 - 20.00',
                            style: TextStyle(
                                color: Color.fromRGBO(29, 170, 171, 1),
                                fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: xGap,
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      width: 115,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7)),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.monetization_on,
                            color: Color.fromRGBO(29, 170, 171, 1),
                            size: 24,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Rp. 25.000',
                            style: TextStyle(
                                color: Color.fromRGBO(29, 170, 171, 1),
                                fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
