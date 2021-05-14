// import 'package:flutter/material.dart';
//
//
// class Reusable extends StatelessWidget {
//   Reusable(this.onPress);
//
//   final Function onPress;
//   bool
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onPress,
//       child: Container(
//         margin: EdgeInsets.only(right: 30),
//         padding: EdgeInsets.all(10),
//
//         decoration: BoxDecoration(
//           color: containerColor ? Colors.indigo[800] : Colors.white,
//           borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),
//
//
//         ) ,
//
//         child: Row(
//           children: [
//             Text('در خواست های من' ,style: pressedText ? TextStyle(
//                 color: Colors.indigo[800],fontSize: 15): TextStyle(color: Colors.white,fontSize: 15)
//             ),
//             SizedBox(
//               width: 30,
//             )
//             ,
//             Icon(Icons.file_present,color: pressedIcon ? Colors.indigo[800] : Colors.white,)
//
//           ],
//         ),
//       ),
//     );
//   }
// }
//
