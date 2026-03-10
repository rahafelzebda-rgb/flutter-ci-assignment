import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islamic_app/app_color.dart';
import 'package:islamic_app/common/widgets/bd_layout_widget.dart';
import 'package:islamic_app/common/widgets/header_widget.dart';
import 'package:islamic_app/data/models/sura_model.dart';
import 'package:islamic_app/data/quran_data.dart';
import 'package:islamic_app/gen/assets.gen.dart';
import 'package:islamic_app/tabs/quran_tab/widgets/custom_text_field.dart';
import 'package:islamic_app/tabs/quran_tab/widgets/most_recent_section.dart';
import 'package:islamic_app/tabs/quran_tab/widgets/suras_list.dart';

class QuranTabPage extends StatefulWidget {
  const QuranTabPage({super.key});

  @override
  State<QuranTabPage> createState() => _QuranTabPageState();
}

class _QuranTabPageState extends State<QuranTabPage> {
  final TextEditingController controller = TextEditingController();
  List<SuraModel> _filteredSura = QuranData.suras;

  void _onSearchChanged(String searchText) {
    setState(() {
      if (searchText.isEmpty) {
        _filteredSura = QuranData.suras;
      } else {
        _filteredSura = QuranData.suras.where(
          (sura) {
            final query = searchText.toLowerCase();
            final enName = sura.enName.toLowerCase();
            return sura.enName.toLowerCase().contains(searchText) ||
                sura.arName.toLowerCase().contains(searchText) ||
                sura.number.toString() == searchText;
          },
        ).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BdLayoutWidget(imagePAth: Assets.tajMahalAgraIndia1.path),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(child: HeaderWidget()),
                SliverToBoxAdapter(child: SizedBox(height: 20)),
                SliverToBoxAdapter(
                    child: CustomTextField(
                  onChanged: (_) => _onSearchChanged,
                  // onSubmitted: _onSearchChanged,
                  controller: controller,
                  hintText: 'sura Named',
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      Assets.quran,
                      colorFilter: ColorFilter.mode(
                          AppColors.goldColor, BlendMode.srcIn),
                    ),
                  ),
                )),
                SliverToBoxAdapter(child: MostRecentSection()),
                SurasList(
                  suras: _filteredSura,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

//22
