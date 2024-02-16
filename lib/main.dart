import 'package:flutter/material.dart';

void main() {
  runApp(const Selecter());
}

class Selecter extends StatefulWidget {
  const Selecter({Key? key}) : super(key: key);

  @override
  _SelecterState createState() => _SelecterState();
}

class _SelecterState extends State<Selecter> {
  List<Color> colors = [
    Colors.green,
    Colors.yellow,
    Colors.black,
    Colors.red,
    Colors.orange,
    Colors.blue,
    Colors.cyan,
    Colors.purple,
    Colors.deepOrange,
    Colors.brown,
    Colors.amber,
  ];

  List<IconData> icons = [
    Icons.add,
    Icons.access_alarm,
    Icons.search,
    Icons.android,
    Icons.add_call,
    Icons.add_circle,
    Icons.arrow_back_ios_new,
    Icons.arrow_forward_ios_outlined,
    Icons.security,
    Icons.accessibility_new,
    Icons.icecream,
    Icons.image,
  ];

  int selectedColorIndex = 0;
  int selectedIconIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFEFF1F3),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('IconsEditor'),
          shadowColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                height: 280,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color:colors[selectedColorIndex],
                        blurRadius: 10,
                      ),
                    ]
                ),
                child: Container(
                  child: Center(
                    child: Icon(
                      icons[selectedIconIndex],
                      size: 100,
                      color: colors[selectedColorIndex],
                    ),
                  ),
                ),
              ),
              Container(
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: colors[selectedColorIndex],
                        blurRadius: 10,
                      ),
                    ]
                ),
                child: Center(
                  child: Text('Select Color',style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),),
                ),
              ),
          
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                height: 120,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: colors[selectedColorIndex],
                        blurRadius: 10,
                      ),
                    ]
                ),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: colors.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedColorIndex = index;
                          });
                        },
                        child: Container(
                          width: 90,
                          height: 80,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: colors[index],
                            borderRadius: BorderRadius.circular(50),
                            border: selectedColorIndex == index ? Border.all(color: Colors.black87, width: 3) : null,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Container(
                height: 60,
                width: 290,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: colors[selectedColorIndex],
                        blurRadius: 10,
                      ),
                    ]
                ),
                child: Center(
                  child: Text('Select Icon',style: TextStyle(
                    color: Colors.black,
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                  ),),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: icons.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIconIndex = index;
                        });
                      },
                      child: Container(
                        width: 80,
                        height: 80,
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: colors[selectedColorIndex],
                              blurRadius: 10,
                            )
                          ],
                          borderRadius: BorderRadius.circular(16),
                          border: selectedIconIndex == index
                              ? Border.all(color: Colors.black12, width: 2)
                              : null,
                        ),
                        child: Icon(
                          icons[index],
                          size: 40,
                          color: colors[selectedColorIndex],
                        ),
                      ),
                    );
                  },
                ),
              ),
          
          
              // Display the selected icon at the center
          
            ],
          ),
        ),
      ),
    );
  }
}