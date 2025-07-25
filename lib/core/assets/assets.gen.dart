// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// Directory path: assets/images/carousel
  $AssetsImagesCarouselGen get carousel => const $AssetsImagesCarouselGen();

  /// Directory path: assets/images/on_boarding_images
  $AssetsImagesOnBoardingImagesGen get onBoardingImages =>
      const $AssetsImagesOnBoardingImagesGen();
}

class $AssetsLogosGen {
  const $AssetsLogosGen();

  /// File path: assets/logos/facebook.png
  AssetGenImage get facebook =>
      const AssetGenImage('assets/logos/facebook.png');

  /// File path: assets/logos/google.png
  AssetGenImage get google => const AssetGenImage('assets/logos/google.png');

  /// File path: assets/logos/w-logo-black.png
  AssetGenImage get wLogoBlack =>
      const AssetGenImage('assets/logos/w-logo-black.png');

  /// File path: assets/logos/w-logo-white.png
  AssetGenImage get wLogoWhite =>
      const AssetGenImage('assets/logos/w-logo-white.png');

  /// List of all assets
  List<AssetGenImage> get values => [facebook, google, wLogoBlack, wLogoWhite];
}

class $AssetsImagesCarouselGen {
  const $AssetsImagesCarouselGen();

  /// File path: assets/images/carousel/go-yoonjung-1.jpeg
  AssetGenImage get goYoonjung1 =>
      const AssetGenImage('assets/images/carousel/go-yoonjung-1.jpeg');

  /// File path: assets/images/carousel/go-yoonjung-2.jpeg
  AssetGenImage get goYoonjung2 =>
      const AssetGenImage('assets/images/carousel/go-yoonjung-2.jpeg');

  /// File path: assets/images/carousel/go-yoonjung-3.jpeg
  AssetGenImage get goYoonjung3 =>
      const AssetGenImage('assets/images/carousel/go-yoonjung-3.jpeg');

  /// List of all assets
  List<AssetGenImage> get values => [goYoonjung1, goYoonjung2, goYoonjung3];
}

class $AssetsImagesOnBoardingImagesGen {
  const $AssetsImagesOnBoardingImagesGen();

  /// File path: assets/images/on_boarding_images/pudgy-penguins-calm.gif
  AssetGenImage get pudgyPenguinsCalm => const AssetGenImage(
    'assets/images/on_boarding_images/pudgy-penguins-calm.gif',
  );

  /// File path: assets/images/on_boarding_images/pudgy-penguins-cart.gif
  AssetGenImage get pudgyPenguinsCart => const AssetGenImage(
    'assets/images/on_boarding_images/pudgy-penguins-cart.gif',
  );

  /// File path: assets/images/on_boarding_images/pudgy-penguins-coin.gif
  AssetGenImage get pudgyPenguinsCoin => const AssetGenImage(
    'assets/images/on_boarding_images/pudgy-penguins-coin.gif',
  );

  /// File path: assets/images/on_boarding_images/pudgy-penguins-delivery.gif
  AssetGenImage get pudgyPenguinsDelivery => const AssetGenImage(
    'assets/images/on_boarding_images/pudgy-penguins-delivery.gif',
  );

  /// File path: assets/images/on_boarding_images/pudgy-penguins-yuppy.gif
  AssetGenImage get pudgyPenguinsYuppy => const AssetGenImage(
    'assets/images/on_boarding_images/pudgy-penguins-yuppy.gif',
  );

  /// List of all assets
  List<AssetGenImage> get values => [
    pudgyPenguinsCalm,
    pudgyPenguinsCart,
    pudgyPenguinsCoin,
    pudgyPenguinsDelivery,
    pudgyPenguinsYuppy,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLogosGen logos = $AssetsLogosGen();
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

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
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
