import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Home_Screen_Set_up/home_screen_set_up.dart';



class chips_screen extends StatefulWidget {
  @override
  State<chips_screen> createState() => _chips_screenState();
}

class _chips_screenState extends State<chips_screen> {

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
    "chips_screen Services",
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("chips_screen"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child:  MultiSelectChip(
                reportList,
                onSelectionChanged: (selectedList) {
                  setState(() {
                    selectedReportList = selectedList;
                  });
                },
              ),
            ),
            SizedBox(height: 200),

            Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.94,
              child: OutlinedButton(
                onPressed:
                    () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => appbar_bottombar()),
                  );
                },
                child: Text('Save', style: TextStyle(color: Colors.white, fontSize: 19 ),),
              ),
              decoration:BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Color(0xFF0672CB),
              ),
            ),


          ],
        ),
      ),
    );
  }
}

class MultiSelectChip extends StatefulWidget {
  final List<String> reportList;
  final Function(List<String>) onSelectionChanged;

  MultiSelectChip(this.reportList, {required this.onSelectionChanged});

  @override
  _MultiSelectChipState createState() => _MultiSelectChipState();
}

class _MultiSelectChipState extends State<MultiSelectChip> {
  // String selectedChoice = "";
  List<String> selectedChoices = [];

  _buildChoiceList() {
    List<Widget> choices = [];

    widget.reportList.forEach((item) {
      choices.add(Container(
        padding: const EdgeInsets.all(4.0),
        child: ChoiceChip(

            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            // shadowColor: Colors.black45,
          selectedColor: Color(0xFF0672CB),
          backgroundColor: Colors.white,
          shape: StadiumBorder( side: BorderSide()),
          label: Text(item,
            style: TextStyle(fontSize: 15),),
          selected: selectedChoices.contains(item),
          onSelected: (selected) {
            setState(() {
              selectedChoices.contains(item)
                  ? selectedChoices.remove(item)
                  : selectedChoices.add(item);
              widget.onSelectionChanged(selectedChoices);
            },
            );
          },
        ),
      ));
    });
    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: _buildChoiceList(),
    );
  }
}






