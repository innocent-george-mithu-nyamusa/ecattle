import 'package:ecattle/constants/ColorScheme.dart';
import 'package:ecattle/screens/home.dart';
import 'package:ecattle/screens/scan.dart';
import 'package:ecattle/screens/search.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: const [Home(), Scan(), Search()],
        controller: _tabController,
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16.0),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(50.0),
          ),
          child: Container(
            color: Colors.white,
            child: TabBar(
              labelColor: mainIconDarkColor,
              unselectedLabelColor: mainIconGreyColor,
              labelStyle: const TextStyle(fontSize: 12.0),
              indicator: const UnderlineTabIndicator(
                borderSide: BorderSide(color: Colors.transparent),
                insets: EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 0.0),
              ),
              indicatorColor: Colors.transparent,
              tabs: const [
                Tab(
                  icon: Icon(
                    Icons.home,
                    size: 24.0,
                  ),
                  text: "home",
                ),
                Tab(
                  icon: Icon(
                    Icons.document_scanner,
                    size: 29.0,
                  ),
                  text: "scan",
                ),
                Tab(
                  icon: Icon(
                    Icons.search,
                    size: 24.0,
                  ),
                  text: "find",
                ),
              ],
              controller: _tabController,
            ),
          ),
        ),
      ),
    );
  }
}
