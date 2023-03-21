import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Actual_Pages/Home_Page/home.dart';
import '../Home_Screen_Set_up/bottom_bar_setup.dart';
import '../Home_Screen_Set_up/home_screen_set_up.dart';

class ChipsScreen extends StatefulWidget {
  @override
  State<ChipsScreen> createState() => _ChipsScreenState();
}

class _ChipsScreenState extends State<ChipsScreen> {
  bool isButtonActive = true;

  _storeOnboardInfo() async {
    print("Shared pref called");
    int isViewed = 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('onBoard', isViewed);
    print(prefs.getInt('onBoard'));
  }

  List<String> reportList = [
    "Automobile",
    "Beauty Spa",
    "Caterers",
    "Daily Needs",
    "Food",
    "Banquets",
    "Bills & Recharge",
    "Contractors",
    "Education",
    "Consultants",
    "Medical",
    "Dance & Music",
    "Repair & Services",
    "Baby & Kids ",
    "Broadband",
    "Home Seervices",
    "Doctor",
    "Travel",
    "Real Estate",
    "Packers",
    "Security",
    "Training",
    "Decorators",
    "Others",
  ];
  List<String> selectedReportList = [];
  List<String> sortedReportList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.blue),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: FittedBox(
              fit: BoxFit.cover,
              child: Text(
                "Choose Your Primary Services",
                style: TextStyle(color: Colors.black),
              )),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: 20, right: 20, bottom: 10),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: 'You need to select of',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        )),
                    TextSpan(
                      text: ' minimum of 3 services',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                        text: ' for better results based on your intrest.',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
              child: Container(
                child: MultiSelectChip(
                  reportList,
                  onSelectionChanged: (selectedList) {
                    setState(
                          () {
                        selectedReportList = selectedList;
                      },
                    );
                  },
                  //     maxSelection: 3,
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          child: Padding(
            padding:
            const EdgeInsets.only(left: 20, right: 20, bottom: 5, top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => ChipsScreen(),
                      ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Text(
                        "Clear All",
                        style:
                        TextStyle(color: Color(0xFF0672CB), fontSize: 19),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      border: Border.all(
                        color: Color(0xFF0672CB),
                      )),
                ),
                Container(
                  height: 50,
                  child: OutlinedButton(
                    // onPressed: () {
                    //   for (int i = 0; i < selectedReportList.length; i++) {
                    //     sortedReportList.add(selectedReportList[i]);
                    //   }
                    //
                    //   for (int i = 0; i < reportList.length; i++) {
                    //     var item = reportList[i];
                    //     if (sortedReportList.contains(item)) {
                    //       print(item);
                    //     } else {
                    //       sortedReportList.add(item);
                    //       reportList.sort(
                    //               (a, b) => a.toString().compareTo(b.toString()));
                    //     }
                    //   }
                    //   sortedReportList.add('Less');
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => bottom_bar_setup(
                    //         sortedReportList: sortedReportList,
                    //       ),
                    //     ),
                    //   ).then((_) {
                    //     setState(() {
                    //       sortedReportList.clear();
                    //     });
                    //   });
                    // },




                    onPressed: () {
                      for (int i = 0; i < selectedReportList.length; i++) {
                        sortedReportList.add(selectedReportList[i]);
                      }

                      for (int i = 0; i < reportList.length; i++) {
                        var item = reportList[i];
                        if (sortedReportList.contains(item)) {
                          print(item);
                        } else {
                          sortedReportList.add(item);
                          reportList.sort(
                                  (a, b) => a.toString().compareTo(b.toString()));
                        }
                      }
                      sortedReportList.add('Less');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomNavBar(
                            sortedReportList: sortedReportList,
                          ),
                        ),
                      ).then((_) {
                        setState(() {
                          sortedReportList.clear();
                        });
                      });
                    },





                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Text(
                        ('Save( ${selectedReportList.length} )'),
                        style: TextStyle(color: Colors.white, fontSize: 19),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Color(0xFF0672CB),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }

  sortedArray() {
    for (int i = 0; i < selectedReportList.length; i++) {
      sortedReportList.add(selectedReportList[i]);
    }

    for (int i = 0; i < reportList.length; i++) {
      var item = reportList;
      if (sortedReportList.contains(item)) {
      } else {
        sortedReportList.add(item as String);
      }
    }
    sortedReportList.add('Less');
    // selectedReportList!.sort((a, b) => a.toString().compareTo(b.toString()));
  }
}

class MultiSelectChip extends StatefulWidget {
  final List<String> reportList;
  final Function(List<String>)? onSelectionChanged;
  final Function(List<String>)? onMaxSelected;
  final int? maxSelection;

  MultiSelectChip(this.reportList,
      {this.onSelectionChanged, this.onMaxSelected, this.maxSelection});

  @override
  _MultiSelectChipState createState() => _MultiSelectChipState();
}

class _MultiSelectChipState extends State<MultiSelectChip> {
  List<String> selectedChoices = [];

  _buildChoiceList() {
    List<Widget> choices = [];

    widget.reportList.forEach(
          (item) {
        choices.add(
          Container(
            padding: const EdgeInsets.all(3.0),
            child: ChoiceChip(
              shape: StadiumBorder(
                side: BorderSide(),
              ),
              selectedColor: Colors.blue,
              backgroundColor: Colors.white,
              label: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  item,
                  style: TextStyle(
                    fontSize: 15,
                    color: selectedChoices.contains(item)
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
              ),
              selected: selectedChoices.contains(item),
              onSelected: (selected) {
                if (selectedChoices.length == (widget.maxSelection ?? -1) &&
                    !selectedChoices.contains(item)) {
                  widget.onMaxSelected?.call(selectedChoices);
                } else {
                  setState(
                        () {
                      selectedChoices.contains(item)
                          ? selectedChoices.remove(item)
                          : selectedChoices.add(item);
                      widget.onSelectionChanged?.call(selectedChoices);
                    },
                  );
                };
              },
            ),
          ),
        );
      },
    );
    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: _buildChoiceList(),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import '../Actual_Pages/Home_Page/home.dart';
//
// class ChipsScreen extends StatefulWidget {
//   @override
//   State<ChipsScreen> createState() => _ChipsScreenState();
// }
//
// class _ChipsScreenState extends State<ChipsScreen> {
//   bool isButtonActive = true;
//
//   _storeOnboardInfo() async {
//     print("Shared pref called");
//     int isViewed = 0;
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     await prefs.setInt('onBoard', isViewed);
//     print(prefs.getInt('onBoard'));
//   }
//
//   List<String> reportList = [
//     "Automobile",
//     "Beauty Spa",
//     "Caterers",
//     "Daily Needs",
//     "Food",
//     "Banquets",
//     "Bills & Recharge",
//     "Contractors",
//     "Education",
//     "Consultants",
//     "Medical",
//     "Dance & Music",
//     "Repair & Services",
//     "Baby & Kids ",
//     "Broadband",
//     "Medical",
//     "Doctor",
//     "Travel",
//     "Real Estate",
//     "Packers",
//     "Security",
//     "Training",
//     "Decorators",
//     "Others",
//   ];
//   List<String> selectedReportList = [];
//   List<String> sortedReportList = [];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back, color: Colors.blue),
//           onPressed: () => Navigator.of(context).pop(),
//         ),
//         title: FittedBox(
//             fit: BoxFit.cover,
//             child: Text(
//               "Choose Your Primary Services",
//               style: TextStyle(color: Colors.black),
//             )),
//       ),
//       bottomNavigationBar: BottomAppBar(
//         elevation: 0,
//         child :  Padding(
//           padding: const EdgeInsets.only(left: 17.0, right:17, bottom: 25),
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Container(
//                 height: 50,
//                 child: OutlinedButton(
//                   onPressed: () {
//                     Navigator.of(context)
//                         .pushReplacement(MaterialPageRoute(
//                       builder: (context) => ChipsScreen(),
//                     ));
//                   },
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 20, right: 20),
//                     child: Text(
//                       "Clear All",
//                       style: TextStyle(
//                           color: Color(0xFF0672CB), fontSize: 19),
//                     ),
//                   ),
//                 ),
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.all(Radius.circular(5)),
//                     border: Border.all(
//                       color: Color(0xFF0672CB),
//                     )),
//               ),
//               Container(
//                 height: 50,
//                 child: OutlinedButton(
//                   onPressed: () {
//                     for (int i = 0;
//                     i < selectedReportList.length;
//                     i++) {
//                       sortedReportList.add(selectedReportList[i]);
//                     }
//
//                     for (int i = 0; i < reportList.length; i++) {
//                       var item = reportList[i];
//                       if (sortedReportList.contains(item)) {
//                         print(item);
//                       } else {
//                         sortedReportList.add(item);
//                         reportList.sort((a, b) => a.toString().compareTo(b.toString()));
//                       }
//                     }
//                     sortedReportList.add('Less');
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => Home(
//                           selectedReportList: sortedReportList,
//                         ),
//                       ),
//                     );
//                   },
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 20, right: 20),
//                     child: Text(
//                       ('Save( ${selectedReportList.length} )'),
//                       style:
//                       TextStyle(color: Colors.white, fontSize: 19),
//                     ),
//                   ),
//                 ),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.all(Radius.circular(5)),
//                   color: Color(0xFF0672CB),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(
//                   top: 10, left: 20, right: 20, bottom: 10),
//               child: RichText(
//                 text: TextSpan(
//                   children: [
//                     TextSpan(
//                         text: 'You need to select of',
//                         style: TextStyle(
//                           fontSize: 15,
//                           color: Colors.black,
//                         )),
//                     TextSpan(
//                       text: ' minimum of three services',
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 15,
//                         color: Colors.black,
//                       ),
//                     ),
//                     TextSpan(
//                         text: ' for better results based on your intrest.',
//                         style: TextStyle(
//                           fontSize: 15,
//                           color: Colors.black,
//                         )),
//                   ],
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
//               child: Container(
//                 child: MultiSelectChip(
//                   reportList,
//                   onSelectionChanged: (selectedList) {
//                     setState(
//                           () {
//                         selectedReportList = selectedList;
//                       },
//                     );
//                   },
//                   //     maxSelection: 3,
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 50,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(
//                   top: 10, left: 20, right: 20, bottom: 20),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   sortedArray() {
//     for (int i = 0; i < selectedReportList.length; i++) {
//       sortedReportList.add(selectedReportList[i]);
//     }
//
//     for (int i = 0; i < reportList.length; i++) {
//       var item = reportList;
//       if (sortedReportList.contains(item)) {
//         print(item);
//       }
//       else {
//
//         sortedReportList.add(item as String);
//       }
//     }
//     sortedReportList.add('Less');
//     selectedReportList!.sort((a, b) => a.toString().compareTo(b.toString()));
//   }
// }
//
// class MultiSelectChip extends StatefulWidget {
//   final List<String> reportList;
//   final Function(List<String>)? onSelectionChanged;
//   final Function(List<String>)? onMaxSelected;
//   final int? maxSelection;
//
//   MultiSelectChip(this.reportList,
//       {this.onSelectionChanged, this.onMaxSelected, this.maxSelection});
//
//   @override
//   _MultiSelectChipState createState() => _MultiSelectChipState();
// }
//
// class _MultiSelectChipState extends State<MultiSelectChip> {
//   List<String> selectedChoices = [];
//
//   _buildChoiceList() {
//     List<Widget> choices = [];
//
//     widget.reportList.forEach(
//           (item) {
//         choices.add(
//           Container(
//             padding: const EdgeInsets.all(3.0),
//             child: ChoiceChip(
//               shape: StadiumBorder(
//                 side: BorderSide(),
//               ),
//               selectedColor: Colors.blue,
//               backgroundColor: Colors.white,
//               label: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(
//                   item,
//                   style: TextStyle(
//                     fontSize: 15,
//                     color: selectedChoices.contains(item)
//                         ? Colors.white
//                         : Colors.black,
//                   ),
//                 ),
//               ),
//               selected: selectedChoices.contains(item),
//               onSelected: (selected) {
//                 if (selectedChoices.length == (widget.maxSelection ?? -1) &&
//                     !selectedChoices.contains(item)) {
//                   widget.onMaxSelected?.call(selectedChoices);
//                 } else {
//                   setState(
//                         () {
//                       selectedChoices.contains(item)
//                           ? selectedChoices.remove(item)
//                           : selectedChoices.add(item);
//                       widget.onSelectionChanged?.call(selectedChoices);
//                     },
//                   );
//                 };
//               },
//             ),
//           ),
//         );
//       },
//     );
//     return choices;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Wrap(
//       children: _buildChoiceList(),
//     );
//   }
// }