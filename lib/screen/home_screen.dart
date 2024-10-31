import 'package:flutter/material.dart';
import 'package:flutter_aplikasi_tempat_wisata_bandung/data/tourism_place_data.dart';
import 'package:flutter_aplikasi_tempat_wisata_bandung/model/tourism_place_model.dart';
import 'package:flutter_aplikasi_tempat_wisata_bandung/screen/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final xPadding = width * 0.06;
    final xGap = width * 0.02;
    final yGap = width * 0.03;
    return SafeArea(
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
        margin: const EdgeInsets.only(top: 16.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Current Location',
                      style: TextStyle(fontSize: 14),
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined),
                        Text(
                          'Bandung, Indonesia',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    )
                  ],
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
                      Icons.notifications_on_outlined,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: xPadding,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  final TourismPlaceModel placeModel = tourismPlaceData[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(
                            placeModel: placeModel,
                          ),
                        ),
                      );
                    },
                    child: Card(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            child: Image.asset(placeModel.imageAsset),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  placeModel.name,
                                  style: const TextStyle(fontSize: 16),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(placeModel.location),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                itemCount: tourismPlaceData.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
