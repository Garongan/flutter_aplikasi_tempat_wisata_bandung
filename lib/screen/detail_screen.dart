import 'package:flutter/material.dart';
import 'package:flutter_aplikasi_tempat_wisata_bandung/model/tourism_place_model.dart';

class DetailScreen extends StatelessWidget {
  final TourismPlaceModel placeModel;

  const DetailScreen({super.key, required this.placeModel});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final xPadding = width * 0.06;
    final xGap = width * 0.02;
    final yGap = width * 0.03;
    return Material(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: xPadding,
          vertical: yGap,
        ),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Color.fromRGBO(29, 170, 171, 1),
              Color.fromRGBO(239, 239, 239, 1),
              Color.fromRGBO(239, 239, 239, 1),
              Color.fromRGBO(239, 239, 239, 1),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              _ActionButton(
                yGap: yGap,
                xGap: xGap,
                xPadding: xPadding,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: Image.asset(
                          placeModel.imageAsset,
                          width: width - (2 * xPadding),
                          height: 301,
                          fit: BoxFit.cover,
                        ),
                      ),
                      _TitleLocation(
                        location: placeModel.location,
                        name: placeModel.name,
                        yGap: yGap,
                      ),
                      _LocationFeature(
                        openDays: placeModel.openDays,
                        openTime: placeModel.openTime,
                        ticketPrice: placeModel.ticketPrice,
                        xGap: xGap,
                        yGap: yGap,
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: yGap,
                        ),
                        child: Text(
                          placeModel.description,
                          style: const TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      _Gallery(
                        xPadding: xPadding,
                        yGap: yGap,
                        xGap: xGap,
                        imageUrls: placeModel.imageUrls,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
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
    return Container(
      padding: EdgeInsets.only(
        bottom: yGap,
      ),
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
    );
  }
}

class _TitleLocation extends StatelessWidget {
  final double yGap;
  final String name;
  final String location;
  const _TitleLocation({
    required this.yGap,
    required this.name,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: yGap,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            name,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
          ),
          Row(
            children: [
              const Icon(
                Icons.location_on_outlined,
                size: 15,
                color: Color.fromRGBO(29, 170, 171, 1),
              ),
              Text(
                location,
                style: const TextStyle(
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
  final String openDays;
  final String openTime;
  final String ticketPrice;

  const _LocationFeature(
      {required this.yGap,
      required this.xGap,
      required this.openDays,
      required this.openTime,
      required this.ticketPrice});

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
                  Text(
                    openDays,
                    style: const TextStyle(
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
                  Text(
                    openTime,
                    style: const TextStyle(
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
                  Text(
                    ticketPrice,
                    style: const TextStyle(
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

class _Gallery extends StatelessWidget {
  final double xPadding;
  final double yGap;
  final double xGap;
  final List<String> imageUrls;
  const _Gallery(
      {required this.xPadding,
      required this.yGap,
      required this.xGap,
      required this.imageUrls});

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
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: xGap,
            mainAxisSpacing: yGap,
            childAspectRatio: 1.7,
            children: List.generate(imageUrls.length, (index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(7),
                child: Image.network(
                  imageUrls[index],
                  fit: BoxFit.cover,
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
