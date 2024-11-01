import 'package:flutter/material.dart';
import 'package:flutter_aplikasi_tempat_wisata_bandung/data/tourism_place_data.dart';
import 'package:flutter_aplikasi_tempat_wisata_bandung/model/tourism_place_model.dart';
import 'package:flutter_aplikasi_tempat_wisata_bandung/screen/detail_screen.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
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
                height: yGap,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[
                      Color.fromRGBO(78, 207, 184, 1),
                      Color.fromRGBO(29, 170, 171, 1),
                    ],
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 12,
                ),
                child: const Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    Text(
                      'Search Destination',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: yGap,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        gradient: const LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: <Color>[
                            Color.fromRGBO(78, 207, 184, 1),
                            Color.fromRGBO(29, 170, 171, 1),
                          ],
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 7,
                      ),
                      child: const Text(
                        'Popular',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      width: xGap,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                        border: Border.all(
                          color: const Color.fromRGBO(29, 170, 171, 1),
                          width: 0.5,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 7,
                      ),
                      child: const Text(
                        'Nature',
                        style:
                            TextStyle(color: Color.fromRGBO(29, 170, 171, 1)),
                      ),
                    ),
                    SizedBox(
                      width: xGap,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                        border: Border.all(
                          color: const Color.fromRGBO(29, 170, 171, 1),
                          width: 0.5,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 7,
                      ),
                      child: const Text(
                        'Aesthetic',
                        style:
                            TextStyle(color: Color.fromRGBO(29, 170, 171, 1)),
                      ),
                    ),
                    SizedBox(
                      width: xGap,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                        border: Border.all(
                          color: const Color.fromRGBO(29, 170, 171, 1),
                          width: 0.5,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 7,
                      ),
                      child: const Text(
                        'Education',
                        style:
                            TextStyle(color: Color.fromRGBO(29, 170, 171, 1)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: yGap,
              ),
              Expanded(
                child: MasonryGridView.count(
                  crossAxisCount: width > 1240 ? 4 : 2,
                  shrinkWrap: true,
                  crossAxisSpacing: xGap,
                  mainAxisSpacing: yGap,
                  itemCount: tourismPlaceData.length,
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
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                        elevation: 2,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(7),
                                topRight: Radius.circular(7),
                              ),
                              child: AspectRatio(
                                aspectRatio: 1.7,
                                child: Image.asset(
                                  placeModel.imageAsset,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    placeModel.name,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.location_on_outlined,
                                            color:
                                                Color.fromRGBO(29, 170, 171, 1),
                                            size: 12,
                                          ),
                                          const SizedBox(
                                            width: 1,
                                          ),
                                          Text(
                                            placeModel.location,
                                            style: const TextStyle(
                                              color:
                                                  Color.fromRGBO(29, 170, 171, 1),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12,
                                            ),
                                          )
                                        ],
                                      ),
                                      Text(
                                        placeModel.ticketPrice,
                                        style: const TextStyle(
                                          color: Color.fromRGBO(29, 170, 171, 1),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
