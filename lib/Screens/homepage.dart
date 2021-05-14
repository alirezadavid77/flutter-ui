import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/info.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_app/components/carousel.dart';
import 'package:flutter_app/components/custom_painter.dart';
import 'dart:ui' as ui;
enum Selected {
  one, two,three,four

}
class Homepage extends StatefulWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  Selected selected;
  bool btnPressed = false;
  int currentPos = 0;
  List<String> listPaths = [
    "images/1.png",
    "images/2.jpg",
    "images/3.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(


        appBar: AppBar(
          title: Text('ایرانیان پوشش',style: TextStyle(
              color: Colors.indigo[800],
              fontSize: 23
          ),),
          centerTitle: true
          ,
          backgroundColor: Colors.white,
          leading:IconButton(icon: Icon(Icons.search)
            ,disabledColor: Colors.indigo[800],
            iconSize: 30,
          ),
          actions: [
            IconButton(icon: Icon(Icons.menu),
              // disabledColor: Colors.indigo[800],
              color: Colors.indigo[800],
              iconSize: 30,
              onPressed:(){
                Navigator.push(context,MaterialPageRoute(builder: (context){
                  return Info();
                }));
              },
            )
          ],
        ),
        body: Center(

          child: Column(
            children: [
              // Container(
              //   child: CustomPaint(
              //      //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
              //     painter: RPSCustomPainter(),
              //   ),
              // ),
              Container(
                color: Colors.white,
                child: Column(



                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    CarouselSlider.builder(itemCount: listPaths.length,
                        options: CarouselOptions(
                      autoPlay: true,
                      onPageChanged: (index,reason){
                        setState(() {
                         currentPos = index;
                        });
                      }
                    ),
                      itemBuilder: (context,index,realIndex){
                        return Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            child: FittedBox(
                              fit: BoxFit.fill,
                              child: Image.asset(listPaths[index]),
                            )
                        );
                      }
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: listPaths.map((url) {
                        int index = listPaths.indexOf(url);
                        return Container(
                          width: 8.0,
                          height: 8.0,
                          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: currentPos == index
                                ? Color.fromRGBO(239, 237, 234, 0.9333333333333333)
                                : Color.fromRGBO(0, 0, 0, 0.4),
                          ),
                        );
                      }).toList(),
                    ),





                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20,top: 20),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('خدمات ما',style: TextStyle(
                      fontSize: 23,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
                ),
                margin: EdgeInsets.symmetric( horizontal: 10.0),
                child: Card(
                    child: Column(
                      children: [
                        ListTile(
                          trailing: Image.asset("images/1.png"),
                          subtitle: Text('کارشناسی اولیه جهت صدور بیمه نامه',style: TextStyle(
                            color: Colors.indigo[800]
                          ),),

                          title: Text(
                            'درخواست بازدید اولیه',
                            style: TextStyle(
                              color: Colors.indigo[800],
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Source Sans Pro',
                              fontSize: 23.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                          child: Divider(

                          )
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // ignore: deprecated_member_use
                            FlatButton(onPressed: (){

                            },
                              highlightColor: Colors.red,





                              child: Text('غیر اتومبیل',style: TextStyle(
                                  color:  Colors.red
                              ),),
                              shape: RoundedRectangleBorder(side: BorderSide(
                                  color: Colors.red,
                                  width: 1,
                                  style: BorderStyle.solid
                              ), borderRadius: BorderRadius.circular(10)),
                            )
                      ,
                            SizedBox(
                              height: 10,
                              child: Divider(

                              ),
                            ),
                            FlatButton(onPressed: (){

                            },
                              highlightColor: Colors.red,
                              color: Colors.red,




                              child: Text(' اتومبیل',style: TextStyle(
                                  color: Colors.white
                              ),),
                              shape: RoundedRectangleBorder(side: BorderSide(
                                  color: Colors.red,
                                  width: 1,
                                  style: BorderStyle.solid
                              ), borderRadius: BorderRadius.circular(10)),
                            )
                            // ignore: deprecated_member_use

                          ],
                        )
                      ],
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
                ),
                margin: EdgeInsets.symmetric( horizontal: 10.0),
                child: Card(
                    child: Column(

                      children: [
                        Center(
                          child: ListTile(
                            trailing: Image.asset("images/1.png"),
                            subtitle: Text('دریافت خسارت',style: TextStyle(
                                color: Colors.indigo[800]
                            ),),

                            title: Text(
                              'اعلام حادثه',
                              style: TextStyle(
                                color: Colors.indigo[800],
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Source Sans Pro',
                                fontSize: 23.0,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                            height: 10,
                            child: Divider(

                            )
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // ignore: deprecated_member_use
                            FlatButton(onPressed: (){

                            },
                              highlightColor: Colors.red,





                              child: Text('غیر اتومبیل',style: TextStyle(
                                  color:  Colors.red
                              ),),
                              shape: RoundedRectangleBorder(side: BorderSide(
                                  color: Colors.red,
                                  width: 1,
                                  style: BorderStyle.solid
                              ), borderRadius: BorderRadius.circular(10)),
                            )
                            ,
                            SizedBox(
                              height: 10,
                              child: Divider(

                              ),
                            ),
                            FlatButton(onPressed: (){

                            },
                              highlightColor: Colors.red,
                              color: Colors.red,




                              child: Text(' اتومبیل',style: TextStyle(
                                  color: Colors.white
                              ),),
                              shape: RoundedRectangleBorder(side: BorderSide(
                                  color: Colors.red,
                                  width: 1,
                                  style: BorderStyle.solid
                              ), borderRadius: BorderRadius.circular(10)),
                            )
                            // ignore: deprecated_member_use

                          ],
                        )
                      ],
                    )),
              ),



            ],
          ),
        ),
        bottomNavigationBar:  BottomNavigationBar(items:[
          BottomNavigationBarItem(
              icon: new Icon(Icons.upload_file,color: Color.fromRGBO(0, 0, 0, 0.4), ),
              title: new Text('ارسال نواقص',style: TextStyle(
                color: Colors.indigo[800]
              ),),

          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.insert_drive_file,color: Colors.white,),
            title: new Text('خانه',style: TextStyle(
                color: Colors.indigo[800],
                fontSize: 15

            ),),
          ),



          BottomNavigationBarItem(
            icon: new Icon(Icons.insert_drive_file),
            title: new Text('درخواست های من ',style: TextStyle(
                color: Colors.indigo[800],
                fontSize: 15,
            ),),
          ),

        ]



          ,backgroundColor: Colors.white,),

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(onPressed: () {},
          child: Icon(Icons.home_outlined,color:  Color.fromRGBO(
              19, 49, 212, 0.7),),
          backgroundColor: Colors.white,





        ),

      ),
    );
  }
}
