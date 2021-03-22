import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/pages/home/chats_page.dart';
import 'package:flutter_whatsapp/pages/home/pic_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _initTabs();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  void _initTabs() {
    _tabController = new TabController(length: 4, vsync: this);
    _tabController.addListener(_handleTabSelection);
    _handleTabSelection();
  }

  Future<void> _handleTabSelection() async {
    _tabController.index = 1;
    setState(() {});
  }

  List<Tab> fourTabs() {
    return [
      Tab(
        icon: Icon(Icons.camera_alt_rounded),
      ),
      Tab(
        text: "Conversas",
      ),
      Tab(
        text: "Status",
      ),
      Tab(
        text: "Chamadas",
      ),
    ];
  }

  Widget _body() {
    return _tabController == null
        ? null
        : TabBarView(controller: _tabController, children: [
            _tabOne(),
            _tabTwo(),
            _tabThree(),
            _tabFour(),
          ]);
  }

  Widget _tabOne() {
    return PicPage();
  }

  Widget _tabTwo() {
    return ChatsPage();
  }

  Widget _tabThree() {
    return Container(
      child: Center(
        child: Icon(Icons.camera_alt_rounded),
      ),
    );
  }

  Widget _tabFour() {
    return Container(
      child: Center(
        child: Icon(Icons.camera_alt_rounded),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 90,
        leading: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text("WhatsApp",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
          ),
        ),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.chat_rounded), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
        ],
        bottom: _tabController == null
            ? null
            : TabBar(
                controller: _tabController,
                indicatorColor: Colors.white,
                indicatorWeight: 3,
                isScrollable: true,
                tabs: fourTabs()),
      ),
      body: _body(),
    );
  }
}
