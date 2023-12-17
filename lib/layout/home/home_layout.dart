import 'package:flutter/material.dart';
import 'package:news_app/screens/horizontal_tab/news_screen.dart';
import 'package:news_app/shared/network/remote/api_manager.dart';

class HomeLayout extends StatelessWidget {
  static const String routeName = 'homelayout';

  const HomeLayout({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/pattern.jpg',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          drawer: const Drawer(),
          appBar: AppBar(
            title: const Text('News'),
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 16.0),
                child: Icon(Icons.search),
              ),
            ],
          ),
          body: FutureBuilder(
            future: ApiManager.getSources(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              if (snapshot.hasError) {
                return const Center(child: Text("Something went wrong"));
              }
              var sources = snapshot.data?.sources ?? [];
              return NewsScreen(sources);
            },
          ),
        ),
      ],
    );
  }
}
