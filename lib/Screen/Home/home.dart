import 'package:flutter/material.dart';
import 'package:zrhonline/Screen/Home/components/body.dart';
import 'package:zrhonline/Screen/Home/components/home_campaigns.dart';

import '../../Component/bottombar.dart';

final home_campaigns = Home_Campaigns();

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    //var watch = home_campaigns;
    //var read = home_campaigns;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text(
          'Zırhloğlu Online',
          style: TextStyle(color: Color.fromARGB(234, 6, 0, 183), fontSize: 25),
        ),

        // actions: [IconButton(icon: const Icon(Icons.search), onPressed: _onSearch,),],
      ),
      body: const Body(),
      bottomNavigationBar: const BottomBar(selectedMenu: MenuState.home),
      /*ListView(
        children: [
          SizedBox(height: 10,),
          Body(),
          const SizedBox(
            height: 20,
          ),
          campaigns(read, watch),
          const SizedBox(
            height: 10,
          ), ),*/
    );
  }

  /*SizedBox space() => const SizedBox(
        height: 20,
      );

  SizedBox campaigns(Home_Campaigns read, Home_Campaigns watch) {
    return SizedBox(
      height: 210,
      child: Stack(
        children: [
          campaignsPageView(read, watch),
          campaignsDot(read, watch),
        ],
      ),
    );
  }

  Align campaignsDot(Home_Campaigns read, Home_Campaigns watch) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            for (int i = 0; i < read.campaigns.length; i++)
              Container(
                width: 8,
                height: 8,
                margin: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  color: watch.campaignsCurrentIndex == i
                      ? Colors.white
                      : Colors.grey,
                  shape: BoxShape.circle,
                ),
              ),
          ],
        ),
      ),
    );
  }

  PageView campaignsPageView(Home_Campaigns read, Home_Campaigns watch) {
    return PageView.builder(
      controller: read.pageController,
      itemCount: read.campaigns.length,
      itemBuilder: (context, index) => Image.asset(
        watch.campaigns[index],
      ),
      onPageChanged: (newPageValue) => read.setCampaignsIndex(newPageValue),
    );
  }

  */
}
