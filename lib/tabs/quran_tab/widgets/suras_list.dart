import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islamic_app/data/models/sura_model.dart';
import 'package:islamic_app/data/quran_data.dart';

import '../../../gen/assets.gen.dart';

class SurasList extends StatelessWidget {
  const SurasList({super.key, required this.suras});
  final List<SuraModel> suras;
  @override
  Widget build(BuildContext context) {
    return SliverMainAxisGroup(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text("Sura List",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
          ),
        ),
        SliverList.builder(
            itemCount: suras.length,
            itemBuilder: (context, index) {
              var sura = suras[index];
              return ListTile(
                minVerticalPadding: 0,
                contentPadding: EdgeInsets.all(0),
                title: Text(
                  sura.enName,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                subtitle: Text(
                  sura.versesCount,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                trailing: Text(
                  sura.arName,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                leading: Stack(
                  alignment: Alignment.center,
                  children: [
                    SvgPicture.asset(Assets.verseIcon),
                    Text(
                      sura.number.toString(),
                      style: TextStyle(
                          fontSize: index > 99 ? 12 : 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              );
            })
      ],
    );
  }
}
