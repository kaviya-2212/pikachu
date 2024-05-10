import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  String image =
      'https://images.pexels.com/photos/417173/pexels-photo-417173.jpeg?cs=srgb&dl=pexels-pixabay-417173.jpg&fm=jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 400,
                width: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(image), fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    //ee column loga undethani otti undai koncha padding ichugocaham
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.arrow_circle_left_outlined),
                          Icon(Icons.book_rounded) // etho oiti
                        ],
                      ), // purinjinatya
                      Container(
                        height: 100,
                        width: 280,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        )),
                        color: Colors.green,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Andes Mountain"),
                                Row(
                                  children: [
                                    Icon(Icons.location_on_outlined),
                                    Text("south America"),
                                  ],
                                )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Text("Price"), Text("\$ 230")],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Row(
                children: [Text("Overview"), Text("Details")],
              ),
              SizedBox(
                width: 20,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // ithi eg matte ancharigi vesugo
                  children: [
                    Row(
                      children: [
                        Icon(Icons.lock_clock_rounded),
                        Text("8 hours"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.cloud_done_rounded),
                        Text("16C"),
                      ],
                    ), //managu ah container kuda odhu verum row la theva padethi wrap panthe saaliu

                    Row(
                      children: [
                        Icon(Icons.star_border),
                        Text("4.5"),
                      ],
                    ),
                  ]),
              Text("my mountain  is beautiful its"),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                width: 400,
                color: Colors.orange,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Book Now"),
                    Icon(Icons.telegram),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
