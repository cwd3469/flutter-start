import 'package:flutter/material.dart';
import '../post/post_screen.dart';
import '../chat/chat_screen.dart';
import '../my/my_screen.dart';
import '../home/home_screen.dart';
import '../voice/voice_screen.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int screenIndex = 0;
  List<Widget> screenList=<Widget>[
    const HomeScreen(),
    const ChatScreen(),
    const VoiceScreen(),
    const PostScreen(),
    const MyScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screenList[screenIndex],
        bottomNavigationBar: Container(
            padding:
            const EdgeInsets.only(right: 25, left: 25, bottom: 20, top: 5),
            decoration:const BoxDecoration(
              color:Colors.white,
            ),
            child:Container(
              padding: const EdgeInsets.all(0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color:Colors.white,
                border: Border.all(
                  color: const Color(0xFFE8E8E8),
                  width: 1.0,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25.0),
                child: NavigationBarTheme(
                    data: const NavigationBarThemeData(
                      backgroundColor: Colors.white,
                      indicatorColor: Color(0xFFB863FB),
                    ),
                    child: NavigationBar(
                      height: 55,
                      selectedIndex: screenIndex,
                      labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
                      onDestinationSelected: (index)=>setState(() => {
                        screenIndex = index
                      }),
                      destinations:const [
                         NavigationDestination(
                            icon: Icon(Icons.home,size: 20,),
                            selectedIcon: Icon(Icons.home, color: Colors.white,size: 20,),
                            label: ''
                        ),
                        NavigationDestination(
                            icon: Icon(Icons.add_comment_rounded,size: 20,),
                            selectedIcon: Icon(Icons.add_comment_rounded, color: Colors.white,size: 20),
                            label: '',
                        ),
                        NavigationDestination(
                            icon: Icon(Icons.mode_comment,size: 20),
                            selectedIcon: Icon(Icons.mode_comment, color: Colors.white,size: 20),
                            label: ''
                        ),
                        NavigationDestination(icon: Icon(
                            Icons.format_list_bulleted,size: 20),
                            selectedIcon: Icon(Icons.format_list_bulleted, color: Colors.white,size: 20),
                            label: '',
                        ),
                        NavigationDestination(
                            icon: Icon(Icons.supervisor_account,size: 20),
                            selectedIcon: Icon(Icons.supervisor_account, color: Colors.white,size: 20),
                            label: ''
                        ),
                      ],
                    ),
                ),
              ),
            )
        )
    );
  }
}
