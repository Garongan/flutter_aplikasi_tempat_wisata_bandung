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
              Colors.white,
              Colors.white,
              Colors.white,
            ],
          ),
        ),
        child: SafeArea(child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constrains) {
          if (constrains.maxWidth > 1200) {
            return _DekstopDetail(
              width: width,
              yGap: (yGap / 2),
              xGap: (xGap / 2),
              xPadding: xPadding,
              placeModel: placeModel,
            );
          } else if (constrains.maxWidth > 600) {
            return _TabletDetail(
              width: width,
              yGap: yGap,
              xGap: xGap,
              xPadding: xPadding,
              placeModel: placeModel,
            );
          } else {
            return _MobileDetail(
              width: width,
              yGap: yGap,
              xGap: xGap,
              xPadding: xPadding,
              placeModel: placeModel,
            );
          }
        })),
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
  final double titleSize;
  const _TitleLocation({
    required this.yGap,
    required this.name,
    required this.location,
    required this.titleSize,
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
            style: TextStyle(fontSize: titleSize, fontWeight: FontWeight.w500),
          ),
          Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                size: (titleSize - 8),
                color: const Color.fromRGBO(29, 170, 171, 1),
              ),
              Text(
                location,
                style: TextStyle(
                    color: const Color.fromRGBO(29, 170, 171, 1),
                    fontSize: (titleSize - 8),
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
  final double childAspectRatio;
  final String ticketPrice;
  final double iconSize;

  const _LocationFeature({
    required this.yGap,
    required this.xGap,
    required this.openDays,
    required this.openTime,
    required this.ticketPrice,
    required this.childAspectRatio,
    required this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: yGap,
      ),
      child: GridView.count(
        crossAxisCount: 3,
        shrinkWrap: true,
        crossAxisSpacing: xGap,
        childAspectRatio: childAspectRatio,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: xGap,
              vertical: yGap,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromRGBO(29, 170, 171, 0.5),
                width: 0.5,
              ),
              borderRadius: BorderRadius.circular(7),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  Icons.calendar_today,
                  color: const Color.fromRGBO(29, 170, 171, 1),
                  size: iconSize,
                ),
                Text(
                  openDays,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: (iconSize - 12),
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: xGap, vertical: yGap),
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromRGBO(29, 170, 171, 0.5),
                width: 0.5,
              ),
              borderRadius: BorderRadius.circular(7),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  Icons.access_time,
                  color: const Color.fromRGBO(29, 170, 171, 1),
                  size: iconSize,
                ),
                Text(
                  openTime,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: (iconSize - 12),
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: xGap,
              vertical: yGap,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromRGBO(29, 170, 171, 0.5),
                width: 0.5,
              ),
              borderRadius: BorderRadius.circular(7),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  Icons.monetization_on,
                  color: const Color.fromRGBO(29, 170, 171, 1),
                  size: iconSize,
                ),
                Text(
                  ticketPrice,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: (iconSize - 12),
                      fontWeight: FontWeight.w500),
                )
              ],
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
  final int gridCount;
  final List<String> imageUrls;
  const _Gallery({
    required this.xPadding,
    required this.yGap,
    required this.xGap,
    required this.imageUrls,
    required this.gridCount,
  });

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
            crossAxisCount: gridCount,
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

class _MobileDetail extends StatelessWidget {
  final double width;
  final double yGap;
  final double xGap;
  final double xPadding;
  final TourismPlaceModel placeModel;

  const _MobileDetail({
    required this.width,
    required this.yGap,
    required this.xGap,
    required this.xPadding,
    required this.placeModel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  child: AspectRatio(
                    aspectRatio: 1.7,
                    child: Image.asset(
                      placeModel.imageAsset,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                _TitleLocation(
                  location: placeModel.location,
                  name: placeModel.name,
                  yGap: yGap,
                  titleSize: 24,
                ),
                _LocationFeature(
                  openDays: placeModel.openDays,
                  openTime: placeModel.openTime,
                  ticketPrice: placeModel.ticketPrice,
                  xGap: xGap,
                  yGap: yGap,
                  iconSize: 24,
                  childAspectRatio: 1.5,
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
                  gridCount: 2,
                  imageUrls: placeModel.imageUrls,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _TabletDetail extends StatelessWidget {
  final double width;
  final double yGap;
  final double xGap;
  final double xPadding;
  final TourismPlaceModel placeModel;

  const _TabletDetail({
    required this.width,
    required this.yGap,
    required this.xGap,
    required this.xPadding,
    required this.placeModel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  child: AspectRatio(
                    aspectRatio: 1.7,
                    child: Image.asset(
                      placeModel.imageAsset,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                _TitleLocation(
                  location: placeModel.location,
                  name: placeModel.name,
                  yGap: yGap,
                  titleSize: 32,
                ),
                _LocationFeature(
                  openDays: placeModel.openDays,
                  openTime: placeModel.openTime,
                  ticketPrice: placeModel.ticketPrice,
                  xGap: xGap,
                  yGap: yGap,
                  childAspectRatio: 1.7,
                  iconSize: 32,
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: yGap,
                  ),
                  child: Text(
                    placeModel.description,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.justify,
                  ),
                ),
                _Gallery(
                  xPadding: xPadding,
                  yGap: yGap,
                  xGap: xGap,
                  gridCount: 3,
                  imageUrls: placeModel.imageUrls,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _DekstopDetail extends StatelessWidget {
  final double width;
  final double yGap;
  final double xGap;
  final double xPadding;
  final TourismPlaceModel placeModel;

  const _DekstopDetail({
    required this.width,
    required this.yGap,
    required this.xGap,
    required this.xPadding,
    required this.placeModel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _ActionButton(
          yGap: yGap,
          xGap: xGap,
          xPadding: xPadding,
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(7),
                child: AspectRatio(
                  aspectRatio: 0.7,
                  child: Image.asset(
                    placeModel.imageAsset,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: xGap,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(
                        color: const Color.fromRGBO(29, 170, 171, 0.5),
                        width: 0.5
                      )
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: xGap,
                      vertical: yGap,
                    ),
                    child: Column(
                      children: [
                        _TitleLocation(
                          location: placeModel.location,
                          name: placeModel.name,
                          yGap: 0,
                          titleSize: 32,
                        ),
                        _LocationFeature(
                          openDays: placeModel.openDays,
                          openTime: placeModel.openTime,
                          ticketPrice: placeModel.ticketPrice,
                          xGap: xGap,
                          yGap: yGap,
                          childAspectRatio: 2,
                          iconSize: 32,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: yGap,
                          ),
                          child: Text(
                            placeModel.description,
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        _Gallery(
                          xPadding: xPadding,
                          yGap: yGap,
                          xGap: xGap,
                          gridCount: 4,
                          imageUrls: placeModel.imageUrls,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
