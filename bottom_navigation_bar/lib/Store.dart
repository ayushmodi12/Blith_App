import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'User_Profile_Page/merch.dart';
import 'User_Profile_Page/eatery.dart';



/*class Store extends StatelessWidget {
  const Store({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: store(),
    );
  }
}*/
class store extends StatefulWidget {
  const store({super.key});

  @override
  State<store> createState() => _storestate();
}


class _storestate extends State<store> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context){
    return ScreenUtilInit(
        designSize: const Size(360, 690),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (context , child) {

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.sp),
        children: [
          SizedBox(height: 40.0.h),

          TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: const Color(0xFFC88D67),
              isScrollable: true,
              labelPadding: const EdgeInsets.only(right: 50),
              unselectedLabelColor: const Color(0xFFCDCDCD),
              tabs: [
                Tab(
                  child: Text('Merchandise',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 20.0.sp,
                      )),
                ),
                Tab(
                  child: Text('Eatery',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 20.0.sp,
                      )),
                ),

              ]),
          SizedBox(
            height: MediaQuery.of(context).size.height - 70.0.h,
            width: double.infinity,
            child: TabBarView(
              controller: _tabController,
              children: const [
                Merch(),
                eaterylist(),
              ],
            ),
          )
        ],
      ),

    );
  }
    );}
}
