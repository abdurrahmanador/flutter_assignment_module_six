import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var listItem2 = [
    {
      "image":
      "https://static.clickbd.com/global/classified/item_img/800988_0_original.jpg",
      "title": "Cow Code: 145a4"
    },
    {
      "image":
      "https://static.clickbd.com/global/classified/item_img/800988_0_original.jpg",
      "title": "Cow Code: 145a4"
    },
    {
      "image":
      "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Bangladeshi_goru_%2815%29.jpg/800px-Bangladeshi_goru_%2815%29.jpg",
      "title": "Cow Code: 545a5"
    },
    {
      "image":
      "https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/Bangladeshi_goru_%2810%29.jpg/736px-Bangladeshi_goru_%2810%29.jpg",
      "title": "Cow Code: 7894a"
    },
    {
      "image":
      "https://img.freepik.com/premium-vector/eid-adha-mubarak-muslim-kurbani-culture-flat-design-illustration_437996-11.jpg",
      "title": "Welcome"
    },
    {
      "image":
      "https://static.clickbd.com/global/classified/item_img/800988_0_original.jpg",
      "title": "Cow Code: 145a4"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Photo Gallery"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
              child: Text(
                "Welcome to My Photo Gallery!",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Search",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: listItem2.map((item) {
                return GestureDetector(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Clicked on photo!")),
                    );
                  },
                  child: Container(
                    width: 100,
                    height: 140,
                    child: Column(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(color: Colors.black),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                item["image"]!,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          item["title"]!,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                ListTile(
                  leading: Icon(Icons.photo),
                  title: Text("Photo 1"),
                  subtitle: Text("Subtitle 1"),
                ),
                ListTile(
                  leading: Icon(Icons.photo),
                  title: Text("Photo 2"),
                  subtitle: Text("Subtitle 2"),
                ),
                ListTile(
                  leading: Icon(Icons.photo),
                  title: Text("Photo 3"),
                  subtitle: Text("Subtitle 3"),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: IconButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Photos Uploaded Successfully!")),
          );
        },
        icon: Icon(Icons.cloud_upload),
      ),
    );
  }
}
