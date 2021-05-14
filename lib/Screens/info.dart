

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/components/reusable_card.dart';
enum Selected {
one, two,three,four,five,six,seven,eight

}

class Info extends StatefulWidget {




  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  bool pressedText = false;
  bool pressedIcon =false;
  bool containerColor = false;
  bool isPressed =false;
  Selected selected;


  @override
  Widget build(BuildContext context) {
    return Material(

      color: Colors.white,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,

          children: [
            Row(
              children: [
                IconButton(icon: Icon(Icons.close),
                  disabledColor:Colors.indigo[800],
                  iconSize: 30,
                  onPressed: (){
                  Navigator.pop(context);
                  },

                ),
              ],
            ),
            ListTile(

              title:Container(
                margin: EdgeInsets.only(right: 30,left: 10),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [


                      Text('ناصر براتی',style:TextStyle(

    fontWeight: FontWeight.bold,
    color: Colors.indigo[800],
    fontSize: 20

    ) ,),
    CircleAvatar(
    backgroundColor: Colors.red,
    radius: 35,

    child: CircleAvatar(
    radius: 30,
    backgroundImage: AssetImage('images/walter.jpg') ,

    ),
    ) ,



                  ],
                ),
              ),

    ),
            Container(
              margin: EdgeInsets.only(right: 30,left: 10,top: 20),

              child: SizedBox(

                   height: 30.0,
                   width: 150.0,
               child: Divider(
    color:Colors.indigo[800],
                 thickness: 1.75,
                 endIndent: 5,


    ),
    ),
            ),
            // ignore: deprecated_member_use
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                        selected =Selected.one;
                      }


                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 30),
                    padding: EdgeInsets.all(10),

                    decoration: BoxDecoration(
                      color: selected == Selected.one ? Colors.indigo[800] : Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),


                    ) ,

                    child: Row(
                      children: [
                        Text('در خواست های من' ,style: selected == Selected.one ? TextStyle(
                      color: Colors.white,fontSize: 15): TextStyle(color: Colors.indigo[800],fontSize: 15)
                    ),
                        SizedBox(
                          width: 30,
                        )
                        ,
                        Icon(Icons.file_present,color: selected == Selected.one ? Colors.white : Colors.indigo[800],)

                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 7,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      selected = Selected.two;

                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 30),
                    padding: EdgeInsets.all(10),

                    decoration: BoxDecoration(
                      color: selected == Selected.two ? Colors.indigo[800] : Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),


                    ) ,

                    child: Row(
                      children: [
                        Text('گردش مالی' ,style: selected == Selected.two ? TextStyle(
                            color: Colors.white,fontSize: 15): TextStyle(color: Colors.indigo[800],fontSize: 15)
                        ),
                        SizedBox(
                          width: 30,
                        )
                        ,
                        Icon(Icons.money,color: selected == Selected.two ? Colors.white : Colors.indigo[800],)

                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 7,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                     selected = Selected.three;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 30),
                    padding: EdgeInsets.all(10),

                    decoration: BoxDecoration(
                      color: selected == Selected.three ? Colors.indigo[800] : Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),


                    ) ,

                    child: Row(
                      children: [
                        Text('گزارش گیری' ,style: selected == Selected.three ? TextStyle(
                            color: Colors.white,fontSize: 15): TextStyle(color: Colors.indigo[800],fontSize: 15)
                        ),
                        SizedBox(
                          width: 30,
                        )
                        ,
                        Icon(Icons.text_snippet_outlined,color: selected == Selected.three ? Colors.white : Colors.indigo[800],)

                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(right: 30,left: 10,top: 20),

              child: SizedBox(

                height: 30.0,
                width: 150.0,
                child: Divider(
                  color:Colors.indigo[800],
                  thickness: 1.75,
                  endIndent: 5,


                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                     selected = Selected.four;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 30),
                    padding: EdgeInsets.all(10),

                    decoration: BoxDecoration(
                      color: selected == Selected.four ? Colors.indigo[800] : Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),


                    ) ,

                    child: Row(
                      children: [
                        Text('تنظیمات' ,style: selected == Selected.four ? TextStyle(
                            color: Colors.white,fontSize: 15): TextStyle(color: Colors.indigo[800],fontSize: 15)
                        ),
                        SizedBox(
                          width: 30,
                        )
                        ,
                        Icon(Icons.settings,color: selected == Selected.four ? Colors.white : Colors.indigo[800],)

                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 7,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                     selected =Selected.five;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 30),
                    padding: EdgeInsets.all(10),

                    decoration: BoxDecoration(
                      color:  selected ==Selected.five ? Colors.indigo[800] : Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),


                    ) ,

                    child: Row(
                      children: [
                        Text('پشتیبانی' ,style: selected ==Selected.five ? TextStyle(
                            color: Colors.white,fontSize: 15): TextStyle(color: Colors.indigo[800],fontSize: 15)
                        ),
                        SizedBox(
                          width: 30,
                        )
                        ,
                        Icon(Icons.headset,color: selected ==Selected.five ? Colors.white : Colors.indigo,)

                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 7,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      selected = Selected.six
                      ;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 30),
                    padding: EdgeInsets.all(10),

                    decoration: BoxDecoration(
                      color: selected == Selected.six ? Colors.indigo[800] : Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),


                    ) ,

                    child: Row(
                      children: [
                        Text('درباره ما' ,style: selected == Selected.six ? TextStyle(
                            color: Colors.white,fontSize: 15): TextStyle(color: Colors.indigo[800],fontSize: 15)
                        ),
                        SizedBox(
                          width: 30,
                        )
                        ,
                        Icon(Icons.info_outline,color: selected == Selected.six ? Colors.white : Colors.indigo[800],)

                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 7,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      selected = Selected.seven;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 30),
                    padding: EdgeInsets.all(10),

                    decoration: BoxDecoration(
                      color: selected == Selected.seven ? Colors.indigo[800] : Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),


                    ) ,

                    child: Row(
                      children: [
                        Text('نظرات' ,style: selected == Selected.seven ? TextStyle(
                            color: Colors.white,fontSize: 15): TextStyle(color: Colors.indigo[800],fontSize: 15)
                        ),
                        SizedBox(
                          width: 30,
                        )
                        ,
                        Icon(Icons.comment,color: selected == Selected.seven ? Colors.white: Colors.indigo[800],)

                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              margin: EdgeInsets.only(right: 30,left: 10,top: 20),

              child: SizedBox(

                height: 30.0,
                width: 150.0,
                child: Divider(
                  color:Colors.indigo[800],
                  thickness: 1.75,
                  endIndent: 5,


                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      selected =Selected.eight;
                      Navigator.pop(context);
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 30),
                    padding: EdgeInsets.all(10),

                    decoration: BoxDecoration(
                      color: selected == Selected.eight ? Colors.indigo[800] : Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),


                    ) ,

                    child: Row(
                      children: [
                        Text('خروج' ,style: selected == Selected.eight ? TextStyle(
                            color: Colors.white,fontSize: 15): TextStyle(color: Colors.indigo[800],fontSize: 15)
                        ),
                        SizedBox(
                          width: 30,
                        )
                        ,
                        Icon(Icons.exit_to_app,color: selected == Selected.eight ? Colors.white : Colors.indigo[800],)

                      ],
                    ),
                  ),
                ),
              ],
            ),


          ],
        ),
      ),
    );
  }
}
