import 'package:flutter/material.dart';

class ad_popup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.black26,
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: GestureDetector(
              child: Center(
                child: Hero(
                    tag: 'imageHero',
                    child:Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.9,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                  border: Border.all(
                                    color: Colors.white
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(5000))
                              ),
                              child: IconButton(
                                icon: Icon(Icons.clear_rounded, color: Colors.black),
                                onPressed: () => Navigator.of(context).pop(),
                              ),
                            ),
                          ),
                        ],
                      ),
                      color: Colors.green,)
                ),
              ), 
              // onTap: () {
              //   Navigator.pop(context);
              // },
            ),
          ),
        ),
      ),
    );
  }
}