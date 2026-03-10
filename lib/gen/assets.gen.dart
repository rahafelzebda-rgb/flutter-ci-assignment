// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class Assets {
  const Assets._();

  static const String islami = 'assets/Islami.svg';
  static const String mosque011 = 'assets/Mosque-01 1.svg';
  static const String quran = 'assets/Quran.svg';
  static const AssetGenImage appLogo = AssetGenImage('assets/app_logo.png');
  static const AssetGenImage hadeeth = AssetGenImage('assets/hadeeth.jpg');
  static const String headeImage = 'assets/heade_image.svg';
  static const String icHadeth = 'assets/ic_hadeth.svg';
  static const String icRadio = 'assets/ic_radio.svg';
  static const String icSebha = 'assets/ic_sebha.svg';
  static const String icTime = 'assets/ic_time.svg';
  static const AssetGenImage imgHeader = AssetGenImage('assets/img_header.png');
  static const AssetGenImage imgMostRecent =
      AssetGenImage('assets/img_most_recent.png');
  static const String quranTabBg = 'assets/quranTabBg.svg';
  static const AssetGenImage tajMahalAgraIndia1 =
      AssetGenImage('assets/taj-mahal-agra-india (1).jpg');
  static const String verseIcon = 'assets/verse_icon.svg';
  static const AssetGenImage verticalShotHassanIiMosqueCasablancaMorocco1 =
      AssetGenImage(
          'assets/vertical-shot-hassan-ii-mosque-casablanca-morocco (1).jpg');

  /// List of all assets
  static List<dynamic> get values => [
        islami,
        mosque011,
        quran,
        appLogo,
        hadeeth,
        headeImage,
        icHadeth,
        icRadio,
        icSebha,
        icTime,
        imgHeader,
        imgMostRecent,
        quranTabBg,
        tajMahalAgraIndia1,
        verseIcon,
        verticalShotHassanIiMosqueCasablancaMorocco1
      ];
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
