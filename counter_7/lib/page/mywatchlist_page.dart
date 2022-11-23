import 'package:counter_7/page/mywatchlist_detail.dart';
import 'package:counter_7/drawer.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/fetch_watchlist.dart';

class WatchListPage extends StatefulWidget {
  const WatchListPage({Key? key}) : super(key: key);

  @override
  _WatchListPageState createState() => _WatchListPageState();
}

class _WatchListPageState extends State<WatchListPage> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'My Watch List',
          ),
        ),
        drawer: buildDrawer(context),
        body: FutureBuilder(
            future: fetchMyWatchList(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                if (!snapshot.hasData) {
                  return Column(
                    children: const [
                      Text(
                        "Tidak ada watch list :(",
                        style:
                            TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                      ),
                      SizedBox(height: 8),
                    ],
                  );
                } else {
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (_, index) => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      padding: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: snapshot.data![index].fields.watched
                          ?Colors.green
                          :Colors.red
                        )
                      ),
                      child: GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WatchListDetailPage(
                                      title: futureWatchList[index].fields.title,
                                      watched: futureWatchList[index].fields.watched,
                                      rating: futureWatchList[index].fields.rating,
                                      releasedDate: futureWatchList[index].fields.releaseDate.toString(),
                                      review: futureWatchList[index].fields.review,
                                    ))),
                        child: Row(
                          children: [
                            Checkbox(
                                value: futureWatchList[index].fields.watched,
                                onChanged: (bool? value) {
                                  setState(() {
                                    futureWatchList[index].fields.watched = value!;
                                  });
                                }),
                                
                            Text(
                              "${snapshot.data![index].fields.title}",
                              style: const TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            
                          ],
                        ),
                      ),
                    ),
                  );
                }
              }
            }));
  }
}