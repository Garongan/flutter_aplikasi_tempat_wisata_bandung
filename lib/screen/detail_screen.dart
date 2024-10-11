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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image.asset(
                'assets/images/farm_house_lembang/main.jpg',
                height: 301,
                fit: BoxFit.cover,
              ),
              ActionButton(
                xPadding: xPadding,
                xGap: xGap,
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(
              top: yGap,
              left: xPadding,
              right: xPadding,
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
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
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
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
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.calendar_today,
                          color: Color.fromRGBO(29, 170, 171, 1),
                          size: 24,
                        ),
                        SizedBox(
                          height: yGap,
                        ),
                        const Text(
                          'Open Everyday',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.access_time,
                          color: Color.fromRGBO(29, 170, 171, 1),
                          size: 24,
                        ),
                        SizedBox(
                          height: yGap,
                        ),
                        const Text(
                          '09.00 - 20.00',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.monetization_on,
                          color: Color.fromRGBO(29, 170, 171, 1),
                          size: 24,
                        ),
                        SizedBox(
                          height: yGap,
                        ),
                        const Text(
                          'Rp. 25.000',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: yGap,
              left: xPadding,
              right: xPadding,
            ),
            child: const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  final double xPadding;
  final double xGap;
  const ActionButton({super.key, required this.xPadding, required this.xGap});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(xPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color.fromRGBO(29, 170, 171, 1),
                    width: 0.5,
                  )),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 24,
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color.fromRGBO(29, 170, 171, 1),
                        width: 0.5,
                      )),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.bookmark_border,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                ),
                SizedBox(
                  width: xGap,
                ),
                Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color.fromRGBO(29, 170, 171, 1),
                        width: 0.5,
                      )),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.share_outlined,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
