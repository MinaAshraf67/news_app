import 'package:flutter/material.dart';
import 'package:news_app/models/sourceResponse.dart';
import 'package:news_app/screens/horizontal_tab/source_item.dart';
import 'package:news_app/shared/network/remote/api_manager.dart';
import 'package:news_app/shared/styles/colors.dart';

// ignore: must_be_immutable
class NewsScreen extends StatefulWidget {
  List<Sources> sources;

  NewsScreen(this.sources, {super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 15.0,
          ),
          child: DefaultTabController(
              length: widget.sources.length,
              child: TabBar(
                onTap: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                isScrollable: true,
                indicatorColor: AppColors.transparentColor,
                dividerColor: AppColors.transparentColor,
                tabAlignment: TabAlignment.start,
                tabs: widget.sources
                    .map(
                      (source) => Tab(
                        child: SourceItem(
                          source,
                          widget.sources.indexOf(source) == selectedIndex,
                        ),
                      ),
                    )
                    .toList(),
              )),
        ),
        FutureBuilder(
            future:
                ApiManager.getNewsData(widget.sources[selectedIndex].id ?? ""),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              if (snapshot.hasError) {
                return const Center(child: Text("Something went wrong"));
              }
              var newsList = snapshot.data?.articles ?? [];
              return Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Text(
                      newsList[index].title ?? "",
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    );
                  },
                  itemCount: newsList.length,
                ),
              );
            })
      ],
    );
  }
}
