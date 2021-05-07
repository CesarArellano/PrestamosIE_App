import 'package:flutter/material.dart';
import 'package:prestamos_ibero/src/pages/tabsContent/biomedic_tab.dart';
import 'package:prestamos_ibero/src/pages/tabsContent/electronics_tab.dart';
import 'package:prestamos_ibero/src/pages/tabsContent/mechanics_tab.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  TabController _tabController;
  
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Préstamo de equipo'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () => Navigator.pushNamed(context, 'myCar')),
          IconButton(icon: Icon(Icons.person), onPressed: () => Navigator.pushNamed(context, 'myProfile')),
          IconButton(icon: Icon(Icons.logout), onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil('login', (Route<dynamic> route) => false))
        ],
        bottom: getTabBar(),
      ),
      body: getTabBarView(),
    );
  }

  TabBar getTabBar() {
    return TabBar(
      controller: _tabController,
      tabs: <Tab>[
        Tab(icon: Icon(Icons.memory), text: 'Electrónica'),
        Tab(icon: Icon(Icons.favorite), text: 'Biomédica'),
        Tab(icon: Icon(Icons.build), text: 'Mecánica'),
      ] 
    );
  }

  TabBarView getTabBarView() {
    return TabBarView(
      controller: _tabController,
      children: <Widget>[
        ElectronicsTabView('catálogo', true),
        BiomedicTabView('catálogo', true),
        MechanicsTabView('catálogo', true),
      ],
    );
  }

}