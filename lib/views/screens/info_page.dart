import 'package:flutter/material.dart';
import 'package:planet_animatons/models/planets_model.dart';

class info_page extends StatefulWidget {
  const info_page({super.key});

  @override
  State<info_page> createState() => _info_pageState();
}

class _info_pageState extends State<info_page> {

  Color primaryTextColor = const Color(0xFF414C6B);
  Color secondaryTextColor = const Color(0xFFE4979E);
  Color contentTextColor = const Color(0xff868686);
  Color navigationColor = const Color(0xFF6751B5);
  Color gradientStartColor = const Color(0xFF0050AC);
  Color gradientEndColor = const Color(0xFF9354B9);

  @override
  Widget build(BuildContext context) {
    int index = ModalRoute
        .of(context)!
        .settings
        .arguments as int;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 32),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 300,
                  ),
                  Text(
                    "${planets[index].name}",
                    style: TextStyle(
                        fontSize: 55,
                        fontFamily: 'Avenir',
                        color: primaryTextColor,
                        fontWeight: FontWeight.w900),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "Solar System",
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Avenir',
                        color: primaryTextColor,
                        fontWeight: FontWeight.w300),
                    textAlign: TextAlign.left,
                  ),
                  const Divider(
                    color: Colors.black38,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 140,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.95,
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      child: Text(
                        planets[index].description.toString(),
                        style: TextStyle(
                            fontSize: 20,
                            overflow: TextOverflow.ellipsis,
                            fontFamily: 'Avenir',
                            color: contentTextColor,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.left,
                        maxLines: 60,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Divider(
                    color: Colors.black38,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Gallery",
                    style: TextStyle(
                        fontSize: 24,
                        overflow: TextOverflow.ellipsis,
                        fontFamily: 'Avenir',
                        color: contentTextColor,
                        fontWeight: FontWeight.w300),
                    textAlign: TextAlign.center,
                    maxLines: 40,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 250,
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: planets[index].images!.length,
                      itemBuilder: (context, index) {
                        return Card(
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24)),
                          child: AspectRatio(
                              aspectRatio: 1,
                              child: Image.network(
                                planets[index].images![index],
                                fit: BoxFit.cover,
                              )),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
              right: -70,
              child: Hero(
                  tag: planets[index].position,
                  child: Image.asset(planets[index].iconImage.toString()))),
          Positioned(
              top: 60,
              left: 32,
              child: Text(
                planets[index].position.toString(),
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 247,
                    color: Colors.grey.withOpacity(0.2)),
              )),
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_new))
        ],
      ),
    );
  }
}
