import 'package:flutter/material.dart';
import 'package:skill_share/constants/decoration.dart';
import 'package:skill_share/presentation/tabs/community_list_tab.dart';
import 'package:skill_share/presentation/tabs/dms_tab.dart';
import 'package:skill_share/presentation/tabs/home_tab.dart';
import 'package:skill_share/presentation/tabs/user_profile_tab.dart';

class HomeScreen extends StatefulWidget {
  static const routename = '/scaffold_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back),
          ),
          title: Text(
            'Skill Share',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: const Color.fromARGB(255, 224, 215, 214),
                  fontSize: 19,
                ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.refresh),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30)),
            boxShadow: [
              BoxShadow(color: Colors.black26, spreadRadius: 0, blurRadius: 8),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            child: BottomNavigationBar(
              elevation: 100,
              type: BottomNavigationBarType.fixed,
              currentIndex: selectedIndex,
              selectedFontSize: 16,
              unselectedFontSize: 14,
              selectedLabelStyle:
                  bodyStyle.copyWith(fontWeight: FontWeight.bold, fontSize: 13),
              unselectedLabelStyle: bodyStyle.copyWith(
                  fontSize: 11, fontWeight: FontWeight.normal),
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.people_rounded),
                  label: 'Community',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.bar_chart_rounded),
                  label: 'Insights',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.money_rounded),
                  label: 'Dms',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_rounded),
                  label: 'Profile',
                ),
              ],
              onTap: (value) {
                setState(() {
                  selectedIndex = value;
                });
              },
            ),
          ),
        ),
        body: IndexedStack(
          index: selectedIndex,
          children: [
            const HomeTab(),
            Container(),
            const CommunityListTab(),
            const DmsTab(),
            const UserProfileTab(),
          ],
        ),
      ),
    );
  }
}
