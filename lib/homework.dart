import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Scaffold(
            appBar:AppBar(
              backgroundColor:Colors.white,
              elevation: 0,
              title: Text('예술체육계열',style:TextStyle(
                  fontSize:16,
                  fontWeight: FontWeight.w700,
                  color:Colors.black
              )),
              leading: Image.asset("back.png"),
              actions:<Widget>[
                IconButton(
                  icon: const Icon(Icons.add_alert),
                  tooltip: 'Show Snackbar',
                  color: Colors.black,
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('This is a snackbar')));
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.navigate_next),
                  tooltip: 'Go to the next page',
                  color: Colors.black,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute<void>(
                      builder: (BuildContext context) {
                        return Scaffold(
                          appBar: AppBar(
                            title: const Text('Next page'),
                          ),
                          body: const Center(
                            child: Text(
                              'This is the next page',
                              style: TextStyle(fontSize: 24),
                            ),
                          ),
                        );
                      },
                    ));
                  },
                ),
                new IconButton(icon: Icon(Icons.notifications), onPressed: null),
              ],


            ),
            body:Container(
              height:150,
              padding:EdgeInsets.all(10),
              child: Row(
                children: [
                  Image.asset('woman.jpg',width: 150,),
                  Container(
                      width:300,

                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('카메라 팝니다.'),
                          Text('카메라 팝니다.ㄸㄷ'),
                          Text('카메라 팝니다.'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.favorite),
                              Text('4')
                            ],
                          )
                        ],
                      )
                  )
                ],
              ),
            ),
            bottomNavigationBar:BottomAppBar(
                child: SizedBox(
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.phone),
                      Icon(Icons.message),
                      Icon(Icons.contact_page),
                    ],
                  ),
                )
            )
        )
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        /*1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*2*/
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                'Oeschinen Lake Campground',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Kandersteg, Switzerland',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
      /*3*/
      Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      Text('41'),
    ],
  ),
);

