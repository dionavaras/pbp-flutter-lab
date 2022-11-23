import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/page/mywatchlist_page.dart';
import 'package:counter_7/drawer.dart';

class WatchListDetailPage extends StatelessWidget {
  final String title;
  final bool watched;
  final int rating;
  final String releasedDate;
  final String review;

  const WatchListDetailPage(
      {Key? key,
      required this.title,
      required this.watched,
      required this.rating,
      required this.releasedDate,
      required this.review})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Detail',
          ),
        ),
        drawer: buildDrawer(context),
        body: Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
                child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            )),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Text(
                      "Release Date: ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    const SizedBox(
                      width: 0,
                    ),
                    Text(
                      releasedDate,
                      style: const TextStyle(fontSize: 18),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Text(
                      "Rating: ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    const SizedBox(
                      width: 0,
                    ),
                    Text(
                      "${rating.toString()} / 5",
                      style: const TextStyle(fontSize: 18),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Text(
                      "Status: ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    const SizedBox(
                      width: 0,
                    ),
                    Text(
                      watched ? "watched" : "not watched yet",
                      style: const TextStyle(fontSize: 18),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Review: ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    textAlign: TextAlign.left,
                  ),
                ),
                Row(
                  children: [
                    Flexible(
                        child: Text(
                      review,
                      style: const TextStyle(fontSize: 18),
                    ))
                  ],
                )
              ],
            ),
          const Spacer(),

          Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50), 
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const WatchListPage()),
              );
                },
                child: const Text(
                  "Back",
                  style: TextStyle(color: Colors.white),
                ),
              ),
          )
        ],
      ),
      
    ));
  }
}