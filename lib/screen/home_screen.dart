import 'package:flutter/material.dart';
import 'package:flutter_aplikasi_tempat_wisata_bandung/data/tourism_place_data.dart';
import 'package:flutter_aplikasi_tempat_wisata_bandung/model/tourism_place_model.dart';
import 'package:flutter_aplikasi_tempat_wisata_bandung/screen/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top: 16.0),
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
    );
  }
}
