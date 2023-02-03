import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/animate.dart';
import 'package:flutter_animate/effects/effects.dart';
import 'package:sized_context/sized_context.dart';
// import 'package:wonders/common_libs.dart';
// import 'package:wonders/common_libs2.dart';
import 'package:bottom_navigation_bar/photo_gallery/string_utils.dart';
//
//
//
//
//
import 'package:bottom_navigation_bar/photo_gallery/wonder_type.dart';
import 'package:bottom_navigation_bar/photo_gallery/main.dart';
import 'package:bottom_navigation_bar/photo_gallery/styles.dart';
//
//
//
//
//

// import 'package:wonders/logic/data/unsplash_photo_data.dart';
import 'package:bottom_navigation_bar/photo_gallery/app_loading_indicator.dart';
import 'package:bottom_navigation_bar/photo_gallery/buttons.dart';
import 'package:bottom_navigation_bar/photo_gallery/eight_way_swipe_detector.dart';
// import 'package:wonders/ui/common/hidden_collectible.dart';
import 'package:bottom_navigation_bar/photo_gallery/fullscreen_url_img_viewer.dart';
// import 'package:wonders/ui/common/unsplash_photo.dart';
import 'package:bottom_navigation_bar/photo_gallery/app_haptics.dart';

part 'photo_gallery/_animated_cutout_overlay.dart';

class PhotoGallery extends StatefulWidget {
  // const PhotoGallery({
  //   Key? key,
  //   this.imageSize,
  //   required this.collectionId,
  //   required this.wonderType,
  // }) : super(key: key);
  // final Size? imageSize;
  // final String collectionId;
  // final WonderType wonderType;

  @override
  State<PhotoGallery> createState() => _PhotoGalleryState();
}

class _PhotoGalleryState extends State<PhotoGallery> {
  static const int _gridSize = 5;
  // Index starts in the middle of the grid (eg, 25 items, index will start at 13)
  int _index = (((_gridSize * _gridSize) / 2).round()) - 1;
  Offset _lastSwipeDir = Offset.zero;
  final double _scale = 1;
  bool _skipNextOffsetTween = false;
  late Duration swipeDuration = $styles.times.med * .4;
  final _photoIds = ValueNotifier<List<String>>([]);
  int get _imgCount => pow(_gridSize, 2).round();

  //
  final urls = [
    // 'images/p1.webp',
    // 'images/p2.webp',
    // 'images/p3.webp',
    // 'images/p4.webp',
    // 'images/p5.webp',
    // 'images/p6.webp',
    // 'images/p7.webp',
    // 'images/p8.webp',
    // 'images/p9.webp',
    // 'images/p10.webp',
    // 'images/p11.webp',
    // 'images/p12.webp',
    // 'images/p13.webp',
    // 'images/p14.webp',
    // 'images/p15.webp',
    // 'images/p16.webp',
    // 'images/p17.webp',
    // 'images/p19.webp',
    // 'images/p20.webp',
    // 'images/p21.webp',
    // 'images/p22.webp',
    // 'images/p23.webp',
    // 'images/p24.webp',

    // 'images/p26.webp',
    // 'images/p25.webp',
    // 'images/p27.webp',
    // 'images/p28.webp',
    // 'images/p29.webp',
    // 'images/p30.webp',
    // 'images/p31.webp',
    // 'images/p32.webp',
    // 'images/p33.webp',
    // 'images/p34.webp',
    // 'images/p35.webp',
    // 'images/p36.webp',
    // 'images/p37.webp',
    // 'images/p38.webp',
    // 'images/p39.webp',
    // 'images/p40.webp',
    // 'images/p41.webp',
    // 'images/p42.webp',
    // 'images/p43.webp',
    // 'images/p44.webp',
    // 'images/p45.webp',
    // 'images/p46.webp',
    // 'images/p47.webp',
    // 'images/p48.webp',
    // 'images/p49.webp',
    // 'images/p50.webp',

    /////////////////////////////////////
    'images/o1.webp',
    'images/o2.webp',
    'images/o3.webp',
    'images/o4.webp',
    'images/o5.webp',
    // 'images/o6.webp',
    'images/p40.webp',
    'images/o7.webp',
    // 'images/o8.webp',
    'images/p39.webp',
    'images/o9.webp',
    'images/o10.webp',
    'images/o11.webp',
    'images/o12.webp',
    // 'images/o13.webp',
    'images/p49.webp',
    // 'images/Untitled7.webp',
    'images/o14.webp',
    'images/o15.webp',
    'images/o16.webp',
    'images/o17.webp',
    'images/o18.webp',
    'images/o19.webp',
    'images/o20.webp',
    // 'images/o21.webp',
    'images/o8.webp',
    'images/o22.webp',
    'images/o23.webp',
    'images/o24.webp',
    // 'images/o25.webp',
    'images/o13.webp',
    ///////////////////////////////////////////////
    // 'images/o26.webp',
    // 'images/o27.webp',
    // 'images/o28.webp',
    // 'images/o29.webp',
    // 'images/o30.webp',
    // 'images/o31.webp',
    // 'images/o32.webp',
    // 'images/o33.webp',
    // 'images/o34.webp',
    // 'images/o35.webp',
    // 'images/o36.webp',
    // 'images/o37.webp',
    // 'images/o38.webp',
    // 'images/o39.webp',
    // 'images/o40.webp',
    // 'images/o41.webp',
    // 'images/o42.webp',
    // 'images/o43.webp',
    // 'images/o44.webp',
    // 'images/o45.webp',
    // 'images/o46.webp',
    // 'images/o47.webp',
    // 'images/o48.webp',
    // 'images/o49.webp',

    // 'images/i1.webp',
//     'images/o1.webp',
//     'images/image2.webp',
//     'images/image3.webp',
//     // 'images/o7.webp',
//     'images/image4.webp',
//     'images/image5.webp',
//     'images/image6.webp',
//     'images/download (1).webp',
// //
// //
//     // 'images/o8.webp',
//     'images/o7.webp',

//     'images/o181.webp',

//     // 'images/image1.webp',
//     'images/o9.webp',
//     'images/image1.webp',
//     'images/image1.webp',
//     'images/o12.webp',
//     // 'images/image1.webp',
//     // 'images/Untitled.webp',
//     // 'images/Untitled2.webp',
//     'images/Untitled7.webp',
//     'images/o14.webp',

//     // 'images/Untitled3.webp',
//     // 'images/image1.webp',
//     'images/image1.webp',
//     'images/image1.webp',
//     'images/image1.webp',
//     // 'images/image1.webp',
//     'images/o8.webp',
//     'images/o19.webp'
//     // 'images/o181.webp',

//     'images/image1.webp',
//     'images/image1.webp',
//     'images/image1.webp',
//     'images/image1.webp',
//     'images/image1.webp',
//     'images/image1.webp',
//     'images/image1.webp',

    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    // 'images/i1.webp',
    //
    //

    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
  ];

  @override
  void initState() {
    super.initState();
    _initPhotoIds();
  }

  Future<void> _initPhotoIds() async {
    // var ids = unsplashLogic.getCollectionPhotos(widget.collectionId);
    // var ids = unsplashLogic.getCollectionPhotos(widget.collectionId);
    var ids = [
      // 'images/p1.webp',
      // 'images/p2.webp',
      // 'images/p3.webp',
      // 'images/p4.webp',
      // 'images/p5.webp',
      // 'images/p6.webp',
      // 'images/p7.webp',
      // 'images/p8.webp',
      // 'images/p9.webp',
      // 'images/p10.webp',
      // 'images/p11.webp',
      // 'images/p12.webp',
      // 'images/p13.webp',
      // 'images/p14.webp',
      // 'images/p15.webp',
      // 'images/p16.webp',
      // 'images/p17.webp',
      // 'images/p19.webp',
      // 'images/p20.webp',
      // 'images/p21.webp',
      // 'images/p22.webp',
      // 'images/p23.webp',
      // 'images/p24.webp',

      // 'images/p26.webp',
      // 'images/p25.webp',
      // 'images/p27.webp',
      // 'images/p28.webp',
      // 'images/p29.webp',
      // 'images/p30.webp',
      // 'images/p31.webp',
      // 'images/p32.webp',
      // 'images/p33.webp',
      // 'images/p34.webp',
      // 'images/p35.webp',
      // 'images/p36.webp',
      // 'images/p37.webp',
      // 'images/p38.webp',
      // 'images/p39.webp',
      // 'images/p40.webp',
      // 'images/p41.webp',
      // 'images/p42.webp',
      // 'images/p43.webp',
      // 'images/p44.webp',
      // 'images/p45.webp',
      // 'images/p46.webp',
      // 'images/p47.webp',
      // 'images/p48.webp',
      // 'images/p49.webp',
      // 'images/p50.webp',
      ////////////////////////////
      // 'images/o1.webp',
      // 'images/o2.webp',
      // 'images/o3.webp',
      // 'images/o4.webp',
      // 'images/o5.webp',
      // // 'images/o6.webp',
      // 'images/p40.webp',
      // 'images/o7.webp',
      // 'images/o8.webp',
      // 'images/o9.webp',
      // 'images/o10.webp',
      // 'images/o11.webp',
      // 'images/o12.webp',
      // // 'images/o13.webp',
      // // 'images/image6.webp'
      // 'images/p49.webp',
      // // ,
      // 'images/o14.webp',
      // 'images/o15.webp',
      // 'images/o16.webp',
      // 'images/o17.webp',
      // 'images/o18.webp',
      // 'images/o19.webp',
      // 'images/o20.webp',
      // // 'images/o21.webp',
      // 'images/o8.webp',
      // 'images/o22.webp',
      // 'images/o23.webp',
      // 'images/o24.webp',
      // 'images/o25.webp',
      // 'images/o1.webp',
      // 'images/o2.webp',
      // 'images/o3.webp',
      // 'images/o4.webp',
      // 'images/o5.webp',
      // // 'images/o6.webp',
      // 'images/p40.webp',
      // 'images/o7.webp',
      // // 'images/o8.webp',
      // 'images/p39.webp',
      // 'images/o9.webp',
      // 'images/o10.webp',
      // 'images/o11.webp',
      // 'images/o12.webp',
      // // 'images/o13.webp',
      // 'images/p49.webp',
      // // 'images/Untitled7.webp',
      // 'images/o14.webp',
      // 'images/o15.webp',
      // 'images/o16.webp',
      // 'images/o17.webp',
      // 'images/o18.webp',
      // 'images/o19.webp',
      // 'images/o20.webp',
      // // 'images/o21.webp',
      // 'images/o8.webp',
      // 'images/o22.webp',
      // 'images/o23.webp',
      // 'images/o24.webp',
      // // 'images/o25.webp',
      // 'images/o13.webp',
      'images/o1.webp',
      'images/o2.webp',
      'images/o3.webp',
      'images/o4.webp',
      'images/o5.webp',
      // 'images/o6.webp',
      'images/p40.webp',
      'images/o7.webp',
      // 'images/o8.webp',
      'images/p39.webp',
      'images/o9.webp',
      'images/o10.webp',
      'images/o11.webp',
      'images/o12.webp',
      // 'images/o13.webp',
      'images/p49.webp',
      // 'images/Untitled7.webp',
      'images/o14.webp',
      'images/o15.webp',
      'images/o16.webp',
      'images/o17.webp',
      'images/o18.webp',
      'images/o19.webp',
      'images/o20.webp',
      // 'images/o21.webp',
      'images/o8.webp',
      'images/o22.webp',
      'images/o23.webp',
      'images/o24.webp',
      // 'images/o25.webp',
      'images/o13.webp',
      ///////////////////////////////////////
//       'images/image1.webp',
//       'images/image2.webp',
//       'images/image3.webp',
//       'images/image4.webp',
//       'images/image5.webp',
//       'images/image6.webp',
//       'images/download (1).webp',
// //
// //
//       'images/image1.webp',
//       'images/image1.webp',
//       'images/image1.webp',
//       'images/image1.webp',
//       'images/image1.webp',
//       // 'images/Untitled.webp',

//       // 'images/image1.webp',
//       // 'images/Untitled.webp',
//       'images/image6.webp',

//       // 'images/Untitled2.webp',
//       // 'images/image6.webp',

//       'images/Untitled3.webp',

//       // 'images/image1.webp',
//       'images/image1.webp',
//       'images/image1.webp',
//       'images/image1.webp',
//       'images/image1.webp',
//       'images/image1.webp',
//       'images/image1.webp',
//       'images/image1.webp',
//       'images/image1.webp',
//       'images/image1.webp',
//       'images/image1.webp',
//       'images/image1.webp',
    ];
    if (ids != null && ids.isNotEmpty) {
      // Ensure we have enough images to fill the grid, repeat if necessary
      while (ids.length < _imgCount) {
        ids.addAll(List.from(ids));
        if (ids.length > _imgCount) ids.length = _imgCount;
      }
    }
    setState(() => _photoIds.value = ids);
  }

  void _setIndex(int value, {bool skipAnimation = false}) {
    if (value < 0 || value >= _imgCount) return;
    _skipNextOffsetTween = skipAnimation;
    setState(() => _index = value);
  }

  /// Determine the required offset to show the current selected index.
  /// index=0 is top-left, and the index=max is bottom-right.
  Offset _calculateCurrentOffset(double padding, Size size) {
    double halfCount = (_gridSize / 2).floorToDouble();
    Size paddedImageSize = Size(size.width + padding, size.height + padding);
    // Get the starting offset that would show the top-left image (index 0)
    final originOffset = Offset(
        halfCount * paddedImageSize.width, halfCount * paddedImageSize.height);
    // Add the offset for the row/col
    int col = _index % _gridSize;
    int row = (_index / _gridSize).floor();
    final indexedOffset =
        Offset(-paddedImageSize.width * col, -paddedImageSize.height * row);
    return originOffset + indexedOffset;
  }

  /// Used for hiding collectibles around the photo grid.
  // int _getCollectibleIndex() {
  //   switch (widget.wonderType) {
  //     case WonderType.chichenItza:
  //     case WonderType.petra:
  //       return 0;
  //     case WonderType.colosseum:
  //     case WonderType.pyramidsGiza:
  //       return _gridSize - 1;
  //     case WonderType.christRedeemer:
  //     case WonderType.machuPicchu:
  //       return _imgCount - 1;
  //     case WonderType.greatWall:
  //     case WonderType.tajMahal:
  //       return _imgCount - _gridSize;
  //   }
  // }

  /// Converts a swipe direction into a new index
  void _handleSwipe(Offset dir) {
    // Calculate new index, y swipes move by an entire row, x swipes move one index at a time
    int newIndex = _index;
    if (dir.dy != 0) newIndex += _gridSize * (dir.dy > 0 ? -1 : 1);
    if (dir.dx != 0) newIndex += (dir.dx > 0 ? -1 : 1);
    // After calculating new index, exit early if we don't like it...
    if (newIndex < 0 || newIndex > _imgCount - 1)
      return; // keep the index in range
    if (dir.dx < 0 && newIndex % _gridSize == 0)
      return; // prevent right-swipe when at right side
    if (dir.dx > 0 && newIndex % _gridSize == _gridSize - 1)
      return; // prevent left-swipe when at left side
    _lastSwipeDir = dir;
    AppHaptics.lightImpact();
    _setIndex(newIndex);
  }

  Future<void> _handleImageTapped(int index) async {
    if (_index == index) {
      int? newIndex = await Navigator.push(
        context,
        CupertinoPageRoute(builder: (_) {
          // final urls = _photoIds.value.map((e) {
          //   return UnsplashPhotoData.getSelfHostedUrl(e, UnsplashPhotoSize.med);
          // }).toList();
          final urls = [
            // 'images/p1.webp',
            // 'images/p2.webp',
            // 'images/p3.webp',
            // 'images/p4.webp',
            // 'images/p5.webp',
            // 'images/p6.webp',
            // 'images/p7.webp',
            // 'images/p8.webp',
            // 'images/p9.webp',
            // 'images/p10.webp',
            // 'images/p11.webp',
            // 'images/p12.webp',
            // 'images/p13.webp',
            // 'images/p14.webp',
            // 'images/p15.webp',
            // 'images/p16.webp',
            // 'images/p17.webp',
            // 'images/p19.webp',
            // 'images/p20.webp',
            // 'images/p21.webp',
            // 'images/p22.webp',
            // 'images/p23.webp',
            // 'images/p24.webp',

            // 'images/p26.webp',
            // 'images/p25.webp',
            // 'images/p27.webp',
            // 'images/p28.webp',
            // 'images/p29.webp',
            // 'images/p30.webp',
            // 'images/p31.webp',
            // 'images/p32.webp',
            // 'images/p33.webp',
            // 'images/p34.webp',
            // 'images/p35.webp',
            // 'images/p36.webp',
            // 'images/p37.webp',
            // 'images/p38.webp',
            // 'images/p39.webp',
            // 'images/p40.webp',
            // 'images/p41.webp',
            // 'images/p42.webp',
            // 'images/p43.webp',
            // 'images/p44.webp',
            // 'images/p45.webp',
            // 'images/p46.webp',
            // 'images/p47.webp',
            // 'images/p48.webp',
            // 'images/p49.webp',
            // 'images/p50.webp',
            ////////////////////////////////////
            // 'images/o1.webp',
            // 'images/o2.webp',
            // 'images/o3.webp',
            // 'images/o4.webp',
            // 'images/o5.webp',
            // // 'images/o6.webp',
            // 'images/p40.webp',
            // 'images/o7.webp',
            // 'images/o8.webp',
            // 'images/o9.webp',
            // 'images/o10.webp',
            // 'images/o11.webp',
            // 'images/o12.webp',
            // // 'images/o13.webp',
            // // 'images/image6.webp',
            // 'images/p49.webp',

            // 'images/o14.webp',
            // 'images/o15.webp',
            // 'images/o16.webp',
            // 'images/o17.webp',
            // 'images/o18.webp',
            // 'images/o19.webp',
            // 'images/o20.webp',
            // // 'images/o21.webp',
            // 'images/o8.webp',
            // 'images/o22.webp',
            // 'images/o23.webp',
            // 'images/o24.webp',
            // 'images/o25.webp',
            // 'images/o1.webp',
            // 'images/o2.webp',
            // 'images/o3.webp',
            // 'images/o4.webp',
            // 'images/o5.webp',
            // // 'images/o6.webp',
            // 'images/p40.webp',
            // 'images/o7.webp',
            // // 'images/o8.webp',
            // 'images/p39.webp',
            // 'images/o9.webp',
            // 'images/o10.webp',
            // 'images/o11.webp',
            // 'images/o12.webp',
            // // 'images/o13.webp',
            // 'images/p49.webp',
            // // 'images/Untitled7.webp',
            // 'images/o14.webp',
            // 'images/o15.webp',
            // 'images/o16.webp',
            // 'images/o17.webp',
            // 'images/o18.webp',
            // 'images/o19.webp',
            // 'images/o20.webp',
            // // 'images/o21.webp',
            // 'images/o8.webp',
            // 'images/o22.webp',
            // 'images/o23.webp',
            // 'images/o24.webp',
            // // 'images/o25.webp',
            // 'images/o13.webp',
            'images/o1.webp',
            'images/o2.webp',
            'images/o3.webp',
            'images/o4.webp',
            'images/o5.webp',
            // 'images/o6.webp',
            'images/p40.webp',
            'images/o7.webp',
            // 'images/o8.webp',
            'images/p39.webp',
            'images/o9.webp',
            'images/o10.webp',
            'images/o11.webp',
            'images/o12.webp',
            // 'images/o13.webp',
            'images/p49.webp',
            // 'images/Untitled7.webp',
            'images/o14.webp',
            'images/o15.webp',
            'images/o16.webp',
            'images/o17.webp',
            'images/o18.webp',
            'images/o19.webp',
            'images/o20.webp',
            // 'images/o21.webp',
            'images/o8.webp',
            'images/o22.webp',
            'images/o23.webp',
            'images/o24.webp',
            // 'images/o25.webp',
            'images/o13.webp',
            //////////////////////////////////////////////////
            // 'images/i1.webp',
            // 'images/image1.webp',
            // 'images/image2.webp',
            // 'images/image3.webp',
            // 'images/image4.webp',
            // 'images/image5.webp',
            // 'images/image6.webp',
            // 'images/download (1).webp',
            // //
            // //
            // 'images/image1.webp',
            // 'images/image1.webp',
            // 'images/image1.webp',
            // 'images/image1.webp',
            // 'images/image1.webp',
            // // 'images/image1.webp',
            // // 'images/Untitled.webp',
            // 'images/image6.webp',

            // // 'images/Untitled2.webp',
            // // 'images/Untitled7.webp',
            // 'images/Untitled3.webp',

            // // 'images/image1.webp',
            // 'images/image1.webp',
            // 'images/image1.webp',
            // 'images/image1.webp',
            // 'images/image1.webp',
            // 'images/image1.webp',
            // 'images/image1.webp',
            // 'images/image1.webp',
            // 'images/image1.webp',
            // 'images/image1.webp',
            // 'images/image1.webp',
            // 'images/image1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',
            // 'images/i1.webp',

            //
            //

            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.webp',

            // 'images/i1.webp',
            // "images/i2.webp",
            // "images/i3.webp",
            // "images/i4.webp",
            // "images/i5.webp",
            // "images/i6.webp",
            // "images/i7.webp",
            // "images/i8.webp",
            // "images/i9.webp",
            // "images/i10.webp",
            // "images/i11.webp",
            // "images/i12.webp",
            // "images/i13.webp",
            // "images/i14.webp",
            // "images/i15.webp",
            // "images/i16.webp",
            // "images/i17.webp",
            // "images/i18.webp",
            // "images/i19.webp",
            // "images/i20.webp",
            // "images/i21.webp",
            // "images/i22.webp",
            // "images/i23.webp",
            // "images/i24.webp",
          ];
          return FullscreenUrlImgViewer(urls: urls, index: _index);
        }),
      );
      if (newIndex != null) {
        _setIndex(newIndex, skipAnimation: true);
      }
    } else {
      _setIndex(index);
    }
  }

  // bool _checkCollectibleIndex(int index) {
  //   return index == _getCollectibleIndex() &&
  //       collectiblesLogic.isLost(widget.wonderType, 1);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // backgroundColor: Color.fromARGB(255, 115, 166, 255),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'Blith in Pictures',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: ValueListenableBuilder<List<String>>(
          valueListenable: _photoIds,
          builder: (_, value, __) {
            if (value.isEmpty) {
              return Center(child: AppLoadingIndicator());
            }

            // Size imgSize = (widget.imageSize ?? Size(context.widthPx * .66, context.heightPx * .5)) * _scale;
            Size imgSize = Size(300, 250);

            // Get transform offset for the current _index
            final padding = $styles.insets.md;
            // final padding = 20.0;
            // final padding2 = 24.0;

            var gridOffset = _calculateCurrentOffset(padding, imgSize);
            gridOffset += Offset(0, -context.mq.padding.top / 2);
            final offsetTweenDuration =
                _skipNextOffsetTween ? Duration.zero : swipeDuration;
            final cutoutTweenDuration =
                _skipNextOffsetTween ? Duration.zero : swipeDuration * .5;
            return _AnimatedCutoutOverlay(
              animationKey: ValueKey(_index),
              cutoutSize: imgSize,
              // cutoutSize: Size(100,200),
              swipeDir: _lastSwipeDir,
              duration: cutoutTweenDuration,
              opacity: _scale == 1 ? .7 : .5,
              child: SafeArea(
                bottom: false,
                // Place content in overflow box, to allow it to flow outside the parent
                child: OverflowBox(
                  maxWidth:
                      _gridSize * imgSize.width + padding * (_gridSize - 1),
                  // maxWidth: 300,
                  // maxWidth: 800,
                  maxHeight:
                      _gridSize * imgSize.height + padding * (_gridSize - 1),
                  // maxHeight: 300,
                  // alignment: Alignment.center,
                  // Detect swipes in order to change index
                  child: EightWaySwipeDetector(
                    onSwipe: _handleSwipe,
                    threshold: 30,
                    // A tween animation builder moves from image to image based on current offset
                    child: TweenAnimationBuilder<Offset>(
                      tween: Tween(begin: gridOffset, end: gridOffset),
                      duration: offsetTweenDuration,
                      curve: Curves.easeOut,
                      builder: (_, value, child) =>
                          Transform.translate(offset: value, child: child),
                      child: GridView.count(
                        physics: NeverScrollableScrollPhysics(),
                        crossAxisCount: _gridSize,
                        childAspectRatio: imgSize.aspectRatio,
                        // childAspectRatio: 0.5,
                        mainAxisSpacing: padding,
                        // mainAxisSpacing: 10,
                        crossAxisSpacing: padding,
                        // crossAxisSpacing: 10,
                        children: List.generate(_imgCount,
                            (i) => _buildImage(i, swipeDuration, imgSize)),
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }

  Widget _buildImage(int index, Duration swipeDuration, Size imgSize) {
    // bool selected = index == _index;
    //       // final imgUrl = _photoIds.value[index];
    //       // final imgUrl = 'images/i${index + 1}.webp';
    //       final imgUrl = urls[index];
    /// Bind to collectibles.statesById because we might need to rebuild if a collectible is found.
    ///
    ///
    return Builder(builder: (BuildContext) {
      bool selected = index == _index;
      // final imgUrl = _photoIds.value[index];
      // final imgUrl = 'images/i${index + 1}.webp';
      final imgUrl = urls[index];
      late String semanticLbl;
      // if (_checkCollectibleIndex(index)) {
      //   semanticLbl = 'collectible item';
      // } else {
      semanticLbl = !selected
          ? StringUtils.supplant(
              'Photo {photoIndex} of {photoTotal}. Tap to focus.', {
              '{photoIndex}': (index + 1).toString(),
              '{photoTotal}': _imgCount.toString(),
            })
          : StringUtils.supplant(
              'Photo {photoIndex} of {photoTotal}. Tap to open fullscreen view.',
              {
                  '{photoIndex}': (index + 1).toString(),
                  '{photoTotal}': _imgCount.toString(),
                });
      return MergeSemantics(
        child: Semantics(
          focused: selected,
          liveRegion: selected,
          onIncrease: () => _handleImageTapped(_index + 1),
          onDecrease: () => _handleImageTapped(_index - 1),
          child: AppBtn.basic(
            semanticLabel: semanticLbl,
            //   // onPressed: () {
            //   //   if (_checkCollectibleIndex(index) && selected) return;
            //   //   _handleImageTapped(index);
            //   // },
            onPressed: () {
              _handleImageTapped(index);
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: SizedBox(
                width: imgSize.width,
                // width: 300,
                // width: 100,
                height: imgSize.height,
                // height: 400,
                // height: 350,
                // height: 200,
                // height: 250,
                child: TweenAnimationBuilder<double>(
                  duration: $styles.times.med,
                  curve: Curves.easeOut,
                  tween: Tween(begin: 1, end: selected ? 1.15 : 1),
                  builder: (_, value, child) =>
                      Transform.scale(scale: value, child: child),
                  // child: UnsplashPhoto(
                  //   imgUrl,
                  //   fit: BoxFit.cover,
                  //   size: UnsplashPhotoSize.med,
                  // ).animate().fade(),
                  // child: Image.network(
                  //   imgUrl,
                  //   fit: BoxFit.cover,
                  //   // size: UnsplashPhotoSize.med,
                  // ).animate().fade(),
                  child: Image.asset(
                    imgUrl,
                    fit: BoxFit.cover,
                    // fit: BoxFit.scaleDown,
                    // fit: BoxFit.fitWidth,
                    // fit: BoxFit.fitHeight,
                  ).animate().fade(),
                  // child: AssetImage(imgUrl).animate().fade(),
                ),
              ),
            ),
          ),
        ),
      );
      //   ),
      // ),
    });
    //return ValueListenableBuilder(
    // // valueListenable: ,
    //   valueListenable: collectiblesLogic.statesById,
    //   builder: (_, __, ___) {
    //     bool selected = index == _index;
    //     // final imgUrl = _photoIds.value[index];
    //     // final imgUrl = 'images/i${index + 1}.webp';
    //     final imgUrl = urls[index];

    //     late String semanticLbl;
    //     // if (_checkCollectibleIndex(index)) {
    //     //   semanticLbl = 'collectible item';
    //     // } else {
    //       semanticLbl = !selected
    //           ? StringUtils.supplant(
    //               'Photo {photoIndex} of {photoTotal}. Tap to focus.', {
    //               '{photoIndex}': (index + 1).toString(),
    //               '{photoTotal}': _imgCount.toString(),
    //             })
    //           : StringUtils.supplant(
    //               'Photo {photoIndex} of {photoTotal}. Tap to open fullscreen view.',
    //               {
    //                   '{photoIndex}': (index + 1).toString(),
    //                   '{photoTotal}': _imgCount.toString(),
    //                 });
    //     // }
    //     return MergeSemantics(
    //       child: Semantics(
    //         focused: selected,
    //         // image: !_checkCollectibleIndex(index),
    //         liveRegion: selected,
    //         onIncrease: () => _handleImageTapped(_index + 1),
    //         onDecrease: () => _handleImageTapped(_index - 1),
    //         child: AppBtn.basic(
    //           semanticLabel: semanticLbl,
    //           // onPressed: () {
    //           //   if (_checkCollectibleIndex(index) && selected) return;
    //           //   _handleImageTapped(index);
    //           // },
    //           onPressed: (){},
    //           child: ClipRRect(
    //             borderRadius: BorderRadius.circular(8),
    //             child: SizedBox(
    //               width: imgSize.width,
    //               // width: 300,
    //               // width: 100,
    //               height: imgSize.height - 100,
    //               // height: 400,
    //               // height: 350,
    //               // height: 200,
    //               // height: 250,
    //               child: TweenAnimationBuilder<double>(
    //                 duration: $styles.times.med,
    //                 curve: Curves.easeOut,
    //                 tween: Tween(begin: 1, end: selected ? 1.15 : 1),
    //                 builder: (_, value, child) =>
    //                     Transform.scale(scale: value, child: child),
    //                 // child: UnsplashPhoto(
    //                 //   imgUrl,
    //                 //   fit: BoxFit.cover,
    //                 //   size: UnsplashPhotoSize.med,
    //                 // ).animate().fade(),
    //                 // child: Image.network(
    //                 //   imgUrl,
    //                 //   fit: BoxFit.cover,
    //                 //   // size: UnsplashPhotoSize.med,
    //                 // ).animate().fade(),
    //                 child: Image.asset(
    //                   imgUrl,
    //                   fit: BoxFit.cover,
    //                   // fit: BoxFit.scaleDown,
    //                   // fit: BoxFit.fitWidth,
    //                   // fit: BoxFit.fitHeight,
    //                 ).animate().fade(),
    //                 // child: AssetImage(imgUrl).animate().fade(),
    //               ),
    //             ),
    //           ),
    //         ),
    //       ),
    //     );
    //   });
    // return ValueListenableBuilder(
    //   // valueListenable: ,
    //     valueListenable: collectiblesLogic.statesById,
    //     builder: (_, __, ___) {
    //       bool selected = index == _index;
    //       // final imgUrl = _photoIds.value[index];
    //       // final imgUrl = 'images/i${index + 1}.webp';
    //       final imgUrl = urls[index];

    //       late String semanticLbl;
    //       // if (_checkCollectibleIndex(index)) {
    //       //   semanticLbl = 'collectible item';
    //       // } else {
    //         semanticLbl = !selected
    //             ? StringUtils.supplant(
    //                 'Photo {photoIndex} of {photoTotal}. Tap to focus.', {
    //                 '{photoIndex}': (index + 1).toString(),
    //                 '{photoTotal}': _imgCount.toString(),
    //               })
    //             : StringUtils.supplant(
    //                 'Photo {photoIndex} of {photoTotal}. Tap to open fullscreen view.',
    //                 {
    //                     '{photoIndex}': (index + 1).toString(),
    //                     '{photoTotal}': _imgCount.toString(),
    //                   });
    //       // }
    //       return MergeSemantics(
    //         child: Semantics(
    //           focused: selected,
    //           // image: !_checkCollectibleIndex(index),
    //           liveRegion: selected,
    //           onIncrease: () => _handleImageTapped(_index + 1),
    //           onDecrease: () => _handleImageTapped(_index - 1),
    //           child: AppBtn.basic(
    //             semanticLabel: semanticLbl,
    //             // onPressed: () {
    //             //   if (_checkCollectibleIndex(index) && selected) return;
    //             //   _handleImageTapped(index);
    //             // },
    //             onPressed: (){},
    //             child: ClipRRect(
    //               borderRadius: BorderRadius.circular(8),
    //               child: SizedBox(
    //                 width: imgSize.width,
    //                 // width: 300,
    //                 // width: 100,
    //                 height: imgSize.height - 100,
    //                 // height: 400,
    //                 // height: 350,
    //                 // height: 200,
    //                 // height: 250,
    //                 child: TweenAnimationBuilder<double>(
    //                   duration: $styles.times.med,
    //                   curve: Curves.easeOut,
    //                   tween: Tween(begin: 1, end: selected ? 1.15 : 1),
    //                   builder: (_, value, child) =>
    //                       Transform.scale(scale: value, child: child),
    //                   // child: UnsplashPhoto(
    //                   //   imgUrl,
    //                   //   fit: BoxFit.cover,
    //                   //   size: UnsplashPhotoSize.med,
    //                   // ).animate().fade(),
    //                   // child: Image.network(
    //                   //   imgUrl,
    //                   //   fit: BoxFit.cover,
    //                   //   // size: UnsplashPhotoSize.med,
    //                   // ).animate().fade(),
    //                   child: Image.asset(
    //                     imgUrl,
    //                     fit: BoxFit.cover,
    //                     // fit: BoxFit.scaleDown,
    //                     // fit: BoxFit.fitWidth,
    //                     // fit: BoxFit.fitHeight,
    //                   ).animate().fade(),
    //                   // child: AssetImage(imgUrl).animate().fade(),
    //                 ),
    //               ),
    //             ),
    //           ),
    //         ),
    //       );
    //     });
  }
}
