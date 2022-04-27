import 'package:flutter/material.dart';


class Person {
  int age;
  String name;
  bool isLeftHand;
  Person(this.age, this.name, this.isLeftHand);
}

void main() {
  runApp(const HeroApp());
}

class HeroApp extends StatelessWidget {
  const HeroApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Transition Demo',
      home: MyApp(),
    );
  }
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
         appBar: PostAppbar(),
         body:PostItems(),
         bottomNavigationBar:AppBottom()
    );
  }
}


// 게시판 게시물 PostItem
class PostItems extends StatelessWidget {
  const PostItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child:ListView(
          padding: const EdgeInsets.only(top:20,bottom:8),
          children:const <Widget> [
            PostTitle(),
            PopularityItem(),
            PostItem(),
            PostItem(),
            PostItem(),
            PostItem(),
            PostItem(),
            PostItem(),
            PostItem(),
          ],
        )
    ) ;
  }
}

// 포스트 헤더
class PostAppbar extends StatelessWidget implements PreferredSizeWidget{
  @override
  Size get preferredSize => const Size.fromHeight(50);
  const PostAppbar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
          backgroundColor:Colors.white,
          elevation: 0,
          centerTitle: false,
          leading: Image.asset("back.png"),
          title: const Text('예술체육계열', style:TextStyle(
              fontSize:16,
              fontWeight: FontWeight.w700,
              color:Colors.black
          )),
          actions:<Widget> [
            Container(
              width:170,
              height:80,
              padding: const EdgeInsets.all(7.0),
              child:DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:const BorderRadius.all(
                        Radius.circular(40.0) // POINT
                    ),
                    border: Border.all(
                        width: 2.0,
                        color:const Color(0xFFE8E8E8)
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 주 축 기준 중앙
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const <Widget>[
                        SizedBox(
                          width: 40,
                          height: 40,
                          child:DecoratedBox(
                            decoration: BoxDecoration(
                                border: Border(
                                  right: BorderSide( // POINT
                                    color: Color(0xFFE8E8E8),
                                    width: 2.0,
                                  ),
                                ),
                                image: DecorationImage(
                                    image: AssetImage('add.png'),
                                    fit: BoxFit.contain
                                )
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 40,
                          height: 40,
                          child:DecoratedBox(
                            decoration: BoxDecoration(
                                border: Border(
                                  right: BorderSide( // POINT
                                    color: Color(0xFFE8E8E8),
                                    width: 2.0,
                                  ),
                                ),
                                image: DecorationImage(
                                    image: AssetImage('search.png'),
                                    fit: BoxFit.contain
                                )

                            ),
                          ),
                        ),
                        SizedBox(
                          width: 40,
                          height: 40,
                          child:DecoratedBox(
                            decoration: BoxDecoration(
                                border: Border(
                                  right: BorderSide( // POINT
                                    color: Colors.white,
                                    width: 2.0,
                                  ),
                                ),
                                image: DecorationImage(
                                    image: AssetImage('notifications.png'),
                                    fit: BoxFit.contain
                                )
                            ),

                          ),
                        ),
                      ],
                    ),
                  )
              ),
            )
          ],
        );
  }
}

// 포스트 아이템
class PostItem extends StatelessWidget {
  const PostItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      padding: EdgeInsets.only(left: 34 ,right: 34,top: 14,bottom: 14),
      decoration: const BoxDecoration(
            border: Border(
              top: BorderSide( // POINT
                color:Color(0xFFF5F5F5),
                width: 2.0,
              ),
        ),
      ),
      child:const PostContents()
    );
  }
}

// 포스트 타이틀
class PostTitle extends StatelessWidget {
  const PostTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding:const EdgeInsets.only(bottom: 10),
      child: Row(
        children: <Widget> [
          Container(
              margin: const EdgeInsets.only(right: 7 , left: 27),
              child: const Text('인기글',style: TextStyle(fontFamily: 'NotoSans',fontSize: 16 , fontWeight: FontWeight.w900))
          ),
          Image.asset('popularity.png')
        ],
      ),
    );
  }
}

// 인기 게시물
class PopularityItem extends StatelessWidget {
  const PopularityItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        padding:const EdgeInsets.only(left: 17 ,right: 17,top: 14,bottom: 14),
        margin:const EdgeInsets.only(left: 17 ,right: 17,bottom: 14),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color:const Color(0xFFDAAFFE),
          ),
          borderRadius:const BorderRadius.all(
              Radius.circular(20.0)
          ),
        ),
        child:const PostContents()
    );
  }
}

// 포스트 컨텐츠
class PostContents extends StatelessWidget {
  const PostContents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget> [
        Container(
          margin: EdgeInsets.only(bottom: 14),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('누가 교수님 좀 기절시켜줘',style: TextStyle(
                  fontFamily: 'NotoSans',
                  fontSize: 15 ,
                  fontWeight: FontWeight.w900
              )),
              Text('02/18 19:50',style: TextStyle(
                  fontFamily: 'NotoSans',
                  fontSize: 12 ,
                  fontWeight: FontWeight.w400 ,
                  color: Color(0xFF959595))),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 7),
          child:  const Text('얘들아 오늘 날씨가 너무 좋은데 난 과제를 하고 있어 교수님이 3일만 기절했다 일어나시면 좋겠어 ',
                  style: TextStyle(
                  fontFamily: 'NotoSans',
                  fontSize: 14 ,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF404040)
                  )
          ),
        ),

        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:<Widget> [
            const Text('시각디자인과',style: TextStyle(
                fontFamily: 'NotoSans',
                fontSize: 12 ,
                fontWeight: FontWeight.w500,
                color: Color(0xFF959595)
            )),
            SizedBox(
                width: 100,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget> [
                    Container(
                      width: 12,
                      height: 12,
                      decoration:const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('photo.png'),
                              fit: BoxFit.contain
                          )
                      ),
                    ),
                    const Text('1',style: TextStyle(
                        fontFamily: 'NotoSans',
                        fontSize: 12 ,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF8949BA)
                    )),
                    Container(
                      width: 12,
                      height: 12,
                      margin: const EdgeInsets.only(left:4),
                      decoration:const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('smile.png'),
                              fit: BoxFit.contain
                          )
                      ),
                    ),
                    const Text('80',style: TextStyle(
                        fontFamily: 'NotoSans',
                        fontSize: 12 ,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF8949BA)
                    )),
                    Container(
                      width: 12,
                      height: 12,
                      margin: const EdgeInsets.only(left:4),
                      decoration:const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('comment.png'),
                              fit: BoxFit.contain
                          )
                      ),
                    ),
                    const Text('5',style: TextStyle(
                        fontFamily: 'NotoSans',
                        fontSize: 12 ,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF8949BA)
                    )),
                  ],
                )
            )
          ],
        ),
      ],
    );
  }
}

// stless




class AppBottom extends StatelessWidget {
  const AppBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        elevation: 0,
        child: Container(
          height: 70,
          width: 100,
          margin: const EdgeInsets.only(right: 25,left: 25,bottom: 20,top:10),
          decoration: BoxDecoration(
              border: Border.all(
                color:const Color(0xFFE8E8E8),
                width: 2.0,
              ),
              borderRadius: const BorderRadius.all(
                  Radius.circular(30.0)
              ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              SizedBox(
                width: 24,
                height: 24,
                child:DecoratedBox(
                  decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide( // POINT
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                      image: DecorationImage(
                          image: AssetImage('bottom/home.png'),
                          fit: BoxFit.contain
                      )
                  ),
                ),
              ),
              SizedBox(
                width: 24,
                height: 24,
                child:DecoratedBox(
                  decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide( // POINT
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                      image: DecorationImage(
                          image: AssetImage('bottom/chat_add.png'),
                          fit: BoxFit.contain
                      )
                  ),
                ),
              ), SizedBox(
                width: 24,
                height: 24,
                child:DecoratedBox(
                  decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide( // POINT
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                      image: DecorationImage(
                          image: AssetImage('bottom/chat_alert.png'),
                          fit: BoxFit.contain
                      )
                  ),
                ),
              ), SizedBox(
                width: 24,
                height: 24,
                child:DecoratedBox(
                  decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide( // POINT
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                      image: DecorationImage(
                          image: AssetImage('bottom/view_list.png'),
                          fit: BoxFit.contain
                      )
                  ),
                ),
              ),SizedBox(
                width: 24,
                height: 24,
                child:DecoratedBox(
                  decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide( // POINT
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                      image: DecorationImage(
                          image: AssetImage('bottom/person.png'),
                          fit: BoxFit.contain
                      )
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}



