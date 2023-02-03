// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:wonders/common_libs.dart';
// import 'package:wonders/logic/common/platform_info.dart';

/// Loads bitmap assets into memory that may be required later
// class AppBitmaps {
//   static late final BitmapDescriptor mapMarker;

//   static Future<void> init() async {
//     mapMarker = await BitmapDescriptor.fromAssetImage(
//       ImageConfiguration(devicePixelRatio: PlatformInfo.pixelRatio),
//       '${ImagePaths.common}/location-pin.webp',
//     );
//   }
// }

/// Consolidates raster image paths used across the app
class ImagePaths {
  static String root = 'images';
  static String common = 'images';
  static String cloud = 'images/i1.webp';

  static String collectibles = 'images';
  static String particle = 'images/i1.webp';
  static String ribbonEnd = 'images/i1.webp';

  static String textures = 'images';
  static String icons = 'images';
  static String speckles = 'images/i1.webp';
  static String roller1 = 'images/i1.webp';
  static String roller2 = 'images/i1.webp';

  static String appLogo = 'images/i1.webp';
  static String appLogoPlain = 'images/i1.webp';
}

/// Consolidates SCG image paths in their own class, hints to the UI to use an SvgPicture to render
class SvgPaths {
  static String compassFull = 'images/Mt. B 1.svg';
  static String compassSimple = 'images/Mt. B 1.svg';
}

/// For wonder specific assets, add an extension to [WonderType] for easy lookup
// extension WonderAssetExtensions on WonderType {
//   String get assetPath {
//     switch (this) {
//       case WonderType.pyramidsGiza:
//         return '${ImagePaths.root}/pyramids';
//       case WonderType.greatWall:
//         return '${ImagePaths.root}/great_wall_of_china';
//       case WonderType.petra:
//         return '${ImagePaths.root}/petra';
//       case WonderType.colosseum:
//         return '${ImagePaths.root}/colosseum';
//       case WonderType.chichenItza:
//         return '${ImagePaths.root}/chichen_itza';
//       case WonderType.machuPicchu:
//         return '${ImagePaths.root}/machu_picchu';
//       case WonderType.tajMahal:
//         return '${ImagePaths.root}/taj_mahal';
//       case WonderType.christRedeemer:
//         return '${ImagePaths.root}/christ_the_redeemer';
//     }
//   }

//   String get homeBtn => '$assetPath/wonder-button.webp';
//   String get photo1 => '$assetPath/photo-1.webp';
//   String get photo2 => '$assetPath/photo-2.webp';
//   String get photo3 => '$assetPath/photo-3.webp';
//   String get photo4 => '$assetPath/photo-4.webp';
//   String get flattened => '$assetPath/flattened.webp';
// }
