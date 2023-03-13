import 'package:flutter/material.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({super.key, required this.title});
  final String title;

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage>
    with SingleTickerProviderStateMixin {
  final List<Widget> _tabs = const [
    Tab(text: 'Tab 1', icon: Icon(Icons.star_rate)),
    Tab(text: 'Tab 2', icon: Icon(Icons.star_half)),
    Tab(text: 'Tab 3', icon: Icon(Icons.star_outline)),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Builder(builder: (BuildContext context) {
        final TabController? tabController = DefaultTabController.of(context);
        tabController?.addListener(() {
          if (tabController.indexIsChanging) {
            setState(() {});
          }
        });

        @override
        void dispose() {
          tabController?.dispose();
          super.dispose();
        }

        return Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.heart_broken),
            title: Text(widget.title),
            flexibleSpace: Padding(
              padding: const EdgeInsets.only(top: 48),
              child: Container(color: Colors.red),
            ),
            bottom: TabBar(tabs: _tabs),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.download),
                alignment: Alignment.center,
                color: Colors.amber,
                iconSize: 24.0,
                tooltip: 'Iniciar download',
                padding: EdgeInsets.only(right: 50),
              ),
            ],
          ),
          body: TabBarView(
            controller: tabController,
            children: _tabs,
          ),
        );
      }),
    );
  }
}
