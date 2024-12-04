import 'package:flutter/material.dart';
import 'package:meat_selling_app/ui/screens/widgets/meat_widget.dart';
import 'package:page_transition/page_transition.dart';

import '../../constants.dart';
import '../../models/meat.dart';
import 'detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    Size size = MediaQuery.of(context).size;

    List<Meat> _meatList = Meat.meatList;

    //Plants category
    List<String> _meatTypes = [
      'Beaf',
      'Chicken',
      'Lamb',
      'Beaf',
      'Mutton',
    ];

    //Toggle Favorite button
    bool toggleIsFavorated(bool isFavorited) {
      return !isFavorited;
    }

    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                  ),
                  width: size.width * .9,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.search,
                        color: Constants.primaryColor,
                      ),
                      const Expanded(
                          child: TextField(
                        showCursor: false,
                        decoration: InputDecoration(
                          hintText: 'Search',
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      )),
                      Icon(
                        Icons.mic,
                        color: Constants.primaryColor,
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Constants.primaryColor.withOpacity(.1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            height: 50.0,
            width: size.width,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _meatTypes.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Text(
                        _meatTypes[index],
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: selectedIndex == index
                              ? FontWeight.bold
                              : FontWeight.w300,
                          color: selectedIndex == index
                              ? Constants.primaryColor
                              : Constants.primaryColor,
                        ),
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: size.height * .3,
            child: ListView.builder(
                itemCount: _meatList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: DetailPage(
                                meatId: _meatList[index].meatId,
                              ),
                              type: PageTransitionType.bottomToTop));
                    },
                    child: Container(
                      width: 200,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 10,
                            right: 20,
                            child: Container(
                              height: 50,
                              width: 50,
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    bool isFavorited = toggleIsFavorated(
                                        _meatList[index].isFavorated);
                                    _meatList[index].isFavorated = isFavorited;
                                  });
                                },
                                icon: Icon(
                                  _meatList[index].isFavorated == true
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color: Constants.primaryColor,
                                ),
                                iconSize: 30,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 50,
                            right: 50,
                            top: 50,
                            bottom: 50,
                            child: Image.asset(_meatList[index].imageURL),
                          ),
                          Positioned(
                            bottom: 15,
                            left: 20,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(_meatList[index].category,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Constants.primaryColor,
                                    )),
                                Text(_meatList[index].name,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Constants.primaryColor,
                                    )),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 15,
                            right: 20,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 2),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                r'$' + _meatList[index].price.toString(),
                                style: TextStyle(
                                    color: Constants.primaryColor,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Constants.homepageColor.withOpacity(.8),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  );
                }),
          ),
          Container(
            padding: const EdgeInsets.only(left: 16, bottom: 20, top: 20),
            child: const Text(
              'New Items',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            height: size.height * .5,
            child: ListView.builder(
                itemCount: _meatList.length,
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                child:
                                    DetailPage(meatId: _meatList[index].meatId),
                                type: PageTransitionType.bottomToTop));
                      },
                      child: MeatWidget(index: index, meatList: _meatList));
                }),
          ),
        ],
      ),
    ));
  }
}

// import 'package:flutter/material.dart';
// import 'package:meat_selling_app/ui/screens/widgets/meat_widget.dart';
// import 'package:page_transition/page_transition.dart';

// import '../../constants.dart';
// import '../../models/meat.dart';
// import 'detail_page.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;

//     List<Meat> _meatList = Meat.meatList;

//     // Meat categories for tabs
//     List<String> _meatTypes = [
//       'Beef',
//       'Chicken',
//       'Lamb',
//       'Mutton',
//     ];

//     return DefaultTabController(
//       length: _meatTypes.length, // Number of tabs
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           elevation: 0,
//           title: Container(
//             padding: const EdgeInsets.symmetric(horizontal: 16.0),
//             width: size.width * .9,
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Icon(Icons.search, color: Constants.primaryColor),
//                 const Expanded(
//                   child: TextField(
//                     showCursor: false,
//                     decoration: InputDecoration(
//                       hintText: 'Search',
//                       border: InputBorder.none,
//                       focusedBorder: InputBorder.none,
//                     ),
//                   ),
//                 ),
//                 Icon(Icons.mic, color: Constants.primaryColor),
//               ],
//             ),
//             decoration: BoxDecoration(
//               color: Constants.primaryColor.withOpacity(.1),
//               borderRadius: BorderRadius.circular(20),
//             ),
//           ),
//           bottom: TabBar(
//             labelColor: Constants.primaryColor,
//             unselectedLabelColor: Colors.grey,
//             indicatorColor: Constants.primaryColor,
//             isScrollable: true,
//             tabs: _meatTypes
//                 .map((type) => Tab(
//                       text: type,
//                     ))
//                 .toList(),
//           ),
//         ),
//         body: TabBarView(
//           children: _meatTypes.map((type) {
//             // Filter the meat list based on the type
//             List<Meat> filteredMeatList = _meatList
//                 .where((meat) => meat.category.toLowerCase() == type.toLowerCase())
//                 .toList();

//             return ListView.builder(
//               itemCount: filteredMeatList.length,
//               itemBuilder: (context, index) {
//                 return GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       PageTransition(
//                         child: DetailPage(
//                           meatId: filteredMeatList[index].meatId,
//                         ),
//                         type: PageTransitionType.bottomToTop,
//                       ),
//                     );
//                   },
//                   child: MeatWidget(
//                     index: index,
//                     meatList: filteredMeatList,
//                   ),
//                 );
//               },
//             );
//           }).toList(),
//         ),
//       ),
//     );
//   }
// }

