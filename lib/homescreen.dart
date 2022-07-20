import 'package:flutter/material.dart';
import 'package:initial_task/api.dart';
import 'package:initial_task/helpscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    // Pop-up Help Screen
    Future.delayed(Duration.zero, () => helpScreen(context));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Home Screen'),
      ),
      body: FutureBuilder<dynamic>(
        future: fetchAllUserAds(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            List articles = snapshot.data["articles"];
            var length = articles.length;

            return snapshot.data.isNotEmpty
                ? ListView.builder(
                    itemCount: length,
                    itemBuilder: (BuildContext context, int index) {
                      return getNews(articles, index, context);
                    },
                  )
                : const Center(
                    child: Text(
                      "There is no news available",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

Widget getNews(List articles, int index, BuildContext context) {
  // print(articles[index]['title']);
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 10, top: 10),
        child: Container(
          width: 390,
          height: 120,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              width: 1,
              color: Colors.grey,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // News Image = urlToImage
              ClipRRect(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: SizedBox(
                    width: 150,
                    child: Center(
                        child: Image.network(articles[index]['urlToImage'])),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // News Headline = title
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 15, bottom: 4),
                      child: Text(
                        articles[index]['title'],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.black,
                          fontFamily: 'RobotoCondensed',
                        ),
                      ),
                    ),

                    // News Summary = description
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Text(
                        articles[index]['description']
                            .toString()
                            .substring(0, 30),
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontFamily: 'RobotoCondensed',
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ],
  );
}
