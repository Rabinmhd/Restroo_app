import 'package:flutter/material.dart';
import 'package:restroo_app/pages/restaurent_detail.dart';
import '../CustomWidget.dart/widget_restaurent.dart';

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  String url =
      "https://mykeralafood.com/wp-content/uploads/2021/02/rahmath-hotel-calicut-rahmath-restaurant.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Restroo App"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue[200],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [Text("Rabin  "), Text("Calicut")],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(prefixIcon: Icon(Icons.search),
                      labelText: "Search Restaurent",
                      fillColor: Colors.blue[50],
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              const Text("Recent Restaurent"),
              SizedBox(
                width: double.infinity,
                height: 150,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RestaurentDetailPage(
                                url: url,
                                hotelName: "rahmath",
                                workingTime: "10:30",
                                location: "Calicut"),
                          )),
                      child: WidgetRestaurent(
                        url:
                            "https://mykeralafood.com/wp-content/uploads/2021/02/rahmath-hotel-calicut-rahmath-restaurant.jpg",
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: 10,
                ),
              ),
              const Text("Favourite Restaurent"),
              SizedBox(
                height: 150,
                width: double.infinity,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RestaurentDetailPage(
                                    url: url,
                                    hotelName: "rahmath",
                                    location: "kozhikkode",
                                    workingTime: "10:00-12:00"),
                              ));
                        },
                        child: WidgetRestaurent(
                          url: url,
                        ));
                  },
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: 10,
                ),
              ),
              const Text("All Restaurent"),
              SizedBox(
                height: 150,
                width: double.infinity,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RestaurentDetailPage(
                                    url: url,
                                    hotelName: "rahmath",
                                    location: "kozhikkode",
                                    workingTime: "10:00-12:00"),
                              ));
                        },
                        child: WidgetRestaurent(
                          url: url,
                        ));
                  },
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
