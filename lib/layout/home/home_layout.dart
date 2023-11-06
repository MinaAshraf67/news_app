import 'package:flutter/material.dart';
import 'package:news_app/shared/network/remote/api_manager.dart';

class HomeLayout extends StatelessWidget {
  static const String routeName = 'homelayout';

  const HomeLayout({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News'),
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
          return ListView.builder(
            itemBuilder: (context, index) {
              return Text(sources[index].name ?? "");
            },
            itemCount: sources.length,
          );
        },
      ),
    );
  }
}
