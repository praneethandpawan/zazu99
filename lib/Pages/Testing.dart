// import 'package:flutter/material.dart';
//
// class ad_popup extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: Colors.black26,
//         child: Padding(
//           padding: const EdgeInsets.all(25.0),
//           child: GestureDetector(
//             child: Center(
//               child: Hero(
//                   tag: 'imageHero',
//                   child:Container(
//                     width: MediaQuery.of(context).size.width * 0.9,
//                     height: MediaQuery.of(context).size.height * 0.9,
//
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         IconButton(
//                           icon: Icon(Icons.clear_rounded, color: Colors.blue),
//                           onPressed: () => Navigator.of(context).pop(),
//                         ),
//                       ],
//                     ),
//                     color: Colors.green,)
//               ),
//             ),
//             onTap: () {
//               Navigator.pop(context);
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }