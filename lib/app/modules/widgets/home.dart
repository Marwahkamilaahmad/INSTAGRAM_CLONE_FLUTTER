import 'dart:html';

import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          // appbar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "yoonjung_go",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add_box_outlined),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu),
                    ),
                  ],
                )
              ],
            ),
          ),
          // profile info
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(children: [
              Container(
                width: 95,
                height: 95,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.red, Colors.amber],
                        ),
                        borderRadius: BorderRadius.circular(60),
                      ),
                    ),
                    Container(
                      width: 89,
                      height: 89,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://pbs.twimg.com/media/FAN3xhQVQAI5yrv.png"),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(60),
                          border: Border.all(
                            color: Colors.white,
                            width: 4,
                          ),),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InfoProfile(
                      title: "Posts",
                      total: 89.toString(),
                    ),
                    InfoProfile(
                      title: "Followers",
                      total: "750",
                    ),
                    InfoProfile(
                      title: "Following",
                      total: 645.toString(),
                    ),
                  ],
                ),
              ),
            ]),
          ),
          SizedBox(height: 15),
          //Username
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "go yoon jung actress",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: RichText(
              text: TextSpan(
                text: "cewe aesthetic sepanjang masa available here",
                style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                children: [
                  TextSpan(
                    text: " #goyoonjung\n",
                    style: TextStyle(color: Colors.blue.shade900),
                  ),
                  TextSpan(
                    text: "www.github.com/goyoonjung",
                    style: TextStyle(color: Colors.blue.shade900),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          // button edit
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                    },
                    child: Text("Edit Profile", style: TextStyle(color: Colors.black)),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                    },
                    child: Text("Bagikan Profile", style: TextStyle(color: Colors.black)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          // story bwang
          Container(
            height: 90,
            child: ListView.builder(
              // padding: EdgeInsets,
              padding: EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (context, index) => Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 8),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 64,
                          height: 64,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.grey[700],
                              borderRadius: BorderRadius.circular(50),
                              image: DecorationImage(
                                image:
                                    AssetImage('Goyoonjung${index + 1}.jpeg'),
                              ),
                              border: Border.all(
                                color: Colors.white,
                                width: 2,
                              )),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Story ${index + 1}",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
          // icon post
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 5, left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.grid_on),
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.person_pin_outlined),
                ),
              ],
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 2,
              crossAxisSpacing: 2,
            ),
            itemCount: 10,
            itemBuilder: (context, index) =>
                Image.asset('Goyoonjung${index + 1}.jpeg'),
          ),
        ],
      ),
    );
  }
}

class InfoProfile extends StatelessWidget {
  const InfoProfile({Key? key, required this.title, required this.total})
      : super(key: key);

  final String title;
  final String total;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          total,
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(title),
      ],
    );
  }
}
