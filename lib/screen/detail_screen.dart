import 'package:flutter/material.dart';
import 'package:flutter_aplikasi_tempat_wisata_bandung/components/navigation_menu.dart';

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
        child: Stack(
          children: [
            ListView(
              padding: EdgeInsets.only(
                left: xPadding,
                right: xPadding,
                top: 100,
              ),
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(7),
                  child: Image.asset(
                    'assets/images/farm_house_lembang.jpg',
                    width: width - (2 * xPadding),
                    height: 301,
                    fit: BoxFit.cover,
                  ),
                ),
                _TitleLocation(yGap),
                _LocationFeature(yGap, xGap),
                Container(
                  margin: EdgeInsets.only(
                    top: yGap,
                  ),
                  child: const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Gallery(
                  xPadding: xPadding,
                  yGap: yGap,
                  xGap: xGap,
                ),
              ],
            ),
            _ActionButton(
              yGap: yGap,
              xGap: xGap,
              xPadding: xPadding,
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavigationMenu(),
    );
  }
}

class _ActionButton extends StatelessWidget {
  final double yGap;
  final double xGap;
  final double xPadding;
  const _ActionButton(
      {required this.yGap, required this.xGap, required this.xPadding});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: const Color.fromRGBO(239, 239, 239, 1),
        padding: EdgeInsets.symmetric(
          vertical: yGap,
          horizontal: xPadding,
        ),
        height: 100,
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
                onPressed: () {
                  Navigator.pop(context);
                },
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

class _TitleLocation extends StatelessWidget {
  final double yGap;
  const _TitleLocation(this.yGap);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: yGap,
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
    );
  }
}

class _LocationFeature extends StatelessWidget {
  final double yGap;
  final double xGap;

  const _LocationFeature(this.yGap, this.xGap);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: yGap,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(
                left: 10,
                top: 20,
                bottom: 20,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7),
              ),
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
              padding: const EdgeInsets.only(
                left: 10,
                top: 20,
                bottom: 20,
              ),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(7)),
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
              padding: const EdgeInsets.only(
                left: 10,
                top: 20,
                bottom: 20,
              ),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(7)),
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
    );
  }
}

class Gallery extends StatelessWidget {
  final double xPadding;
  final double yGap;
  final double xGap;
  const Gallery(
      {super.key,
      required this.xPadding,
      required this.yGap,
      required this.xGap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: yGap,
        bottom: xPadding,
      ),
      child: Column(
        children: [
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Gallery',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(
            height: yGap,
          ),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                      child: Image.network(
                        'https://lh5.googleusercontent.com/p/AF1QipNw89HVDAQt_zsgGZG9hk3q03bRGHDPX987Z-42=w675-h390-n-k-no',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: xGap,
                  ),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                      child: Image.network(
                        'https://lh5.googleusercontent.com/p/AF1QipO6uE8zqXK9CQxsseW0A8DwaqaZVgTEHmalO6i8=w675-h390-n-k-no',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: yGap,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                      child: Image.network(
                        'https://lh5.googleusercontent.com/p/AF1QipP0khgrBLFQHqlPGm-xCodeq7InrXfzcYoZDeL8=w675-h390-n-k-no',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: xGap,
                  ),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                      child: Image.network(
                        'https://lh5.googleusercontent.com/p/AF1QipM3TLVvn4pCLm5rllYDwQEa525ZKFQCPdoRVM8J=w675-h390-n-k-no',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: yGap,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                      child: Image.network(
                        'https://lh5.googleusercontent.com/p/AF1QipPws5oeklKQJqx-m7YNcINfplsATug82mHkNrw7=w675-h390-n-k-no',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: xGap,
                  ),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                      child: Image.network(
                        'https://lh5.googleusercontent.com/p/AF1QipPf7RSfYEYrGNy-q7jAx2QW1U3kSHFREMIGMdPR=w675-h390-n-k-no',
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
