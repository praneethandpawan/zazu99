import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {

  final String selectedItem;
  final List<String> combinedList;
  List<String> items1 = [
    "Apple",
    "Banana",
    "Cherry",
    "Durian",
    "Elderberry",
  ];

  List<String> items2 = [
    "pk",
    "ak",
    "bk",
    "ck",
    "kk",
  ];
  List<String> items3 = [
    "pp",
    "rrr",
    "cc",
    "dd",
    "hh",
  ];

  List<String> Beauty = [
    "Hair salons"
        "Aesthetic clinics"
        "Massage centres"
        "Skin care centers"
        "Makeup studios"
        "Body care centres"
        "Beauty supply stores"
        "Day Spas"
  ];
  String _searchQuery = '';
  SecondScreen({required this.selectedItem, required this.combinedList});
  @override
  Widget build(BuildContext context) {
    List<String> selectedArray = [];

    if (items1.contains(selectedItem)) {
      selectedArray = items1;
    } else if (items2.contains(selectedItem)) {
      selectedArray = items2;
    } else if (items3.contains(selectedItem)) {
      selectedArray = items3;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(_getAppBarTitle()),
      ),
      body: ListView.builder(
        itemCount: selectedArray.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.point_of_sale),
                    SizedBox(width: 20,),
                    Text(selectedArray[index]),
                  ],
                ),
                const Divider(
                  color: Colors.red,
                ),
              ],
            ),

          );
        },
      ),
    );
  }
  String _getAppBarTitle() {
    if (selectedItem.isEmpty) {
      return 'pspk';
    }

    // else if (selectedItem==Beauty) {
    //   return 'Beauty';

    else if (selectedItem == "Hair salons" ||
        selectedItem == "Aesthetic clinics" ||
        selectedItem == 'rrr') {
      return 'Automobile';


    } else if (selectedItem.toLowerCase() == 'apple' ||
        selectedItem.toLowerCase() == 'grapes' ||
        selectedItem.toLowerCase() == 'orange') {
      return 'Fruits';
    } else {
      return 'Search Results for $selectedItem';
    }
  }
}
