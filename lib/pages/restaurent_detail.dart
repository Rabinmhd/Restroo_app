import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RestaurentDetailPage extends StatelessWidget {
  RestaurentDetailPage(
      {super.key,
      required this.url,
      required this.hotelName,
      required this.workingTime,
      required this.location});
  String url;
  String hotelName;
  String workingTime;
  String location;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
            SizedBox(
              height: 200,
              width: double.infinity,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(url),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: 5),
            ),
            Text(style: const TextStyle(fontSize: 40), hotelName),
            Text("Working Time :$workingTime"),
            Text("Location:$location"),
            SizedBox(height: 15,),
            const Text(style: TextStyle(fontSize: 18),"About Restaurent"),
            SizedBox(height: 15,),
            Text(style: TextStyle(fontSize: 20),"Foods"),
            SizedBox(height: 15,),
            SizedBox(
              height: 180,
              width: double.infinity,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(url),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: 5),
            ),

          ]),
        ),
      ),
    );
  }
}
