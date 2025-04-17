import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


const String desc = 'لياقة لياقة   لياقة  لياقة لياقة لياقة لياقة لياقة لياقة   لياقة  لياقة لياقة لياقة لياقة لياقة لياقة   لياقة  لياقة لياقة لياقة لياقة لياقة لياقة   لياقة  لياقة لياقة لياقة لياقة';

void main() async {
  runApp(const MyApp());
}


/*
Color(0xFfB4cf66) // Green
Color(0xFF79bde8) // Blue
Color(0xFFf05e8e) // Pink
Color(0xFFfccd0a) // Yellow
*/




class MyApp extends StatelessWidget {
  const MyApp({super.key});
  final List<Locale> appSupportedLocales = const [Locale('ar')];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness Magazines',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      
      supportedLocales: appSupportedLocales,
      theme: ThemeData(
        fontFamily: 'Somar-Regular',
        appBarTheme: const AppBarTheme(
          elevation: 0, // This removes the shadow from all App Bars.
          scrolledUnderElevation: 0,
          backgroundColor: Color(0xFF364046),
        ),
      ),
      home: DefaultTabController(
        length: 4,
        child: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget{
  const HomePage({super.key});


  static const String category = 'لياقة';
  static const String title = 'لياقة لياقة   لياقة  لياقة لياقة لياقة لياقة';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "مجلة صحية",
            style: TextStyle(
              color: Colors.white,
              
              ),
            ),
        ),
      ),
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex:10,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: ((context) => Page2())));
                  },
                  child: mainCard(color: Color(0xFFf05e8e))
                  
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: ((context) => Page2())));
                  },
                  child: mainCard(color: Color(0xFFfccd0a)),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: ((context) => Page2())));
                  },
                  child: mainCard(color: Color(0xFF79bde8)),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: ((context) => Page2())));
                  },
                  child: mainCard(color: Color(0xFfB4cf66)),
                ),                
              ]
            ),
          ),

          TabBar(
            dividerHeight: 0,
            tabs: [
              Tab(text: 'تغذية'),
              Tab(text: 'صحة'),
              Tab(text: 'جمال'),
              Tab(text: 'لياقة'),
            ]
          ),
          Expanded(
            flex: 9,
            child: TabBarView(children: [
              ListView(
                padding: EdgeInsets.only(right: 10, left: 20, top: 10),
                children: [
                  Padding(padding: EdgeInsets.only(bottom: 20),child: 
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: ((context) => Page2())));
                      },
                      child: secondaryCard(color: Color(0xFfB4cf66)),
                    )
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 20),child: 
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: ((context) => Page2())));
                      },
                      child: secondaryCard(color: Color(0xFfB4cf66)),
                    )
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 20),child: 
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: ((context) => Page2())));
                      },
                      child: secondaryCard(color: Color(0xFfB4cf66)),
                    )
                  ),
                ]
              ),
              ListView(
                padding: EdgeInsets.only(right: 10, left: 20, top: 10),
                children: [
                  Padding(padding: EdgeInsets.only(bottom: 20),child: 
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: ((context) => Page2())));
                      },
                      child: secondaryCard(color: Color(0xFF79bde8)),
                    )
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 20),child: 
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: ((context) => Page2())));
                      },
                      child: secondaryCard(color: Color(0xFF79bde8)),
                    )
                  ),
                ]
              ),
              ListView(
                padding: EdgeInsets.only(right: 10, left: 20, top: 10),
                children: [
                  Padding(padding: EdgeInsets.only(bottom: 20),child: 
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: ((context) => Page2())));
                      },
                      child: secondaryCard(color: Color(0xFFf05e8e)),
                    )
                  ),
                ]
              ),
              ListView(
                padding: EdgeInsets.only(right: 10, left: 20, top: 10),
                children: [
                  Padding(padding: EdgeInsets.only(bottom: 20),child: 
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: ((context) => Page2())));
                      },
                      child: secondaryCard(color: Color(0xFFfccd0a)),
                    )
                  ),
                ]
              ),
            ],),
          )
        ]
      )
    );
  }

  Container secondaryCard({required Color color}) {
    return Container(
      // height: 130,
      clipBehavior: Clip.antiAlias,
      padding: EdgeInsets.only(),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 1,
            blurRadius: 6,
            offset: Offset(-4, 4),
          )
        ]
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Image.asset(
              'assets/icons/png/placeholder.png', 
              height: 122,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            flex: 5,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 9, right: 9, bottom: 20, left: 4),
                  child: Text(
                      desc,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Somar',
                    )
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Icon(
                        Icons.share,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8, right: 8,),
                      child: Icon(
                        Icons.favorite_border,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8, right: 8),
                      child: Icon(
                        Icons.visibility,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ]
                )
              ]
            ),
          ),
      
        ]
      ),
    );
  }

  Container mainCard({required Color color}) {
    return Container(
      padding: EdgeInsets.only(
         
        right: 8,
        left: 12,
      ),
      
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 0),
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/icons/png/placeholder.png',
                      height: 200,
                      width: 230,
                    ),
                    Positioned(
                      top: 30,
                      left: 15,
                      child: Icon(
                        Icons.favorite_border,
                        size: 30,
                        color: Colors.white,
                      ),
                    )
                  ]
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 0,),
                child: Container(
                  padding: EdgeInsets.only(
                    left: 24,
                    right: 24,
                    top: 4, 
                    bottom: 4,
                  ),
                  decoration: BoxDecoration(
                    color: color,
                  ),
                  child: Text(
                    category,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Somar',
                    )
                  )
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 0,),
                width: 230,
                child: Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Somar',
                  )
                )
              ),
              Container(
                padding: EdgeInsets.only(right: 0,),
                width: 230,
                child: Text(
                  desc,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontFamily: 'Somar',
                  )
                )
              ),
            ]
          ),
        ]
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2 ({super.key});

  
  @override
Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            child: Column(
              children: [Image.asset(
                'assets/icons/png/placeholder.png',
              ),]
            )
          ),
          Positioned(
             
            right: 15,
            top: 45,
            child: GestureDetector(
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            

          ),
          Positioned(
            top: 160,
            bottom: 0,
            right: 2,
            left: 2,
            child: ListView(
              children: [
                Container(
                  padding: EdgeInsets.only(right: 12, left: 4, top: 30),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    desc * 20,
                  )
                            ),]
            ),
          )
        ]
      )
    );
  }  
}