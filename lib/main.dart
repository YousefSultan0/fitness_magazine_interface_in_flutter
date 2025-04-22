import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'models/articles.dart';

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
        length: allSections.length,
        child: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget{
  const HomePage({super.key});

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
                createMainCard(article: beauty.first, context: context),
                createMainCard(article: fitness.first, context: context),
                createMainCard(article: health.first, context: context),
                createMainCard(article: food.first, context: context),                
              ]
            ),
          ),

          TabBar(
            dividerHeight: 0,
            tabs: [
              for (List<Article> section in allSections) 
                Tab(text: section.first.category),
            ]
          ),
          Expanded(
            flex: 9,
            child: TabBarView(children: [
              for (List<Article> section in allSections)
                ListView(
                  padding: EdgeInsets.only(right: 10, left: 20, top: 10),
                  children: [
                    for (Article article in section)
                      createSecondaryCard(article: article, context: context)
                  ]
                )
            ],),
          )
        ]
      )
    );
  }

  Padding createSecondaryCard({required Article article, required BuildContext context}) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20,),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
          context,
          MaterialPageRoute(builder: ((context) => Page2(article:article))));
        },
        child: Container(
          // height: 130,
          clipBehavior: Clip.antiAlias,
          padding: EdgeInsets.only(),
          decoration: BoxDecoration(
            color: article.backgroundColor,
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
                          article.details,
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
        ),
      ),
    );
  }

  GestureDetector createMainCard({required Article article, required BuildContext context}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
        context,
        MaterialPageRoute(builder: ((context) => Page2(article:article))));
      },

      child: Container(
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
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Container(
                          padding: EdgeInsets.only(bottom: 5,),
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: CachedNetworkImage(
                            imageUrl: article.imageUrl,
                            placeholder: (context, url) => CircularProgressIndicator(),
                            errorWidget: (context, url, error) => Icon(Icons.error),
                          ),
                          // child: Image.asset(
                          //   article.imagePath,
                          //   // height: 170,
                          //   width: 250,
                          //   fit: BoxFit.contain,
                          // ),
                        ),
                      ),
                      Positioned(
                        top: 20,
                        left: 12,
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
                  padding: EdgeInsets.only(bottom: 6, top: 8),
                  child: Container(
                    padding: EdgeInsets.only(
                      left: 24,
                      right: 24,
                      top: 4, 
                      bottom: 4,
                    ),
                    decoration: BoxDecoration(
                      color: article.backgroundColor,
                    ),
                    child: Text(
                      article.category,
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
                    article.title,
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
                  width: 250,
                  child: Text(
                    article.details,
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
      ),
    );
  }
}

class Page2 extends StatelessWidget {

  Article article;
  Page2 ({super.key, required this.article});

  
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              child: Column(
                children: [
                  Image.asset(
                    'assets/icons/png/placeholder.png',
                  ),
                ]
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
                    child: Column(
                      children: [
                        Text(
                          article.title,
                          style: TextStyle(
                            fontSize: 26,
                          )
                        ),
                        Text(article.details),
                      ]
                    )
                  ),]
              ),
            )
          ]
        )
      );
  }  
}