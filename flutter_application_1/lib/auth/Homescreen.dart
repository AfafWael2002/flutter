import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/custom_scaffold.dart';




class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<CardItem> cardItems = [];

  @override
  void initState() {
    super.initState();
    cardItems = [
      CardItem(title: "JJJ", pricing: "\$10", images: 'G:\\AFAF\\flutter_application_1\\capture.jpg'),
    ];
  }

  @override
  
  Widget build(BuildContext context) {
   
    return MaterialApp(
      home: CustomScaffold(
        
        body: SafeArea(
          child: Column(
            children: [
              Container(
                height: 80,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 171, 231, 210),
                ),
                child: Container(
                  margin: const EdgeInsets.all(15),
                  padding: const EdgeInsets.all(1),
                  color: const Color.fromARGB(255, 229, 225, 231),
                  child: Row(
                    children: [
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'search',
                            hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
                            border: InputBorder.none,
                            icon: Icon(Icons.search),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.filter_list),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: cardItems.map((cardItem) => buildCard(cardItem)).toList(),
                ),
              ),
            ],
          ),
        ),

        showBottomNavBar: true,

initialIndex: 0,
      ),

    );

   
  }

  Widget buildCard(CardItem cardItem) {
    return Card(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 10,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 1,
              itemBuilder: (context, index) {
                return Image.asset(
                  cardItem.images,
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
          ListTile(
            title: Text(
              cardItem.title,
              style: const TextStyle(color: Colors.black),
            ),
            subtitle: Text(cardItem.pricing),
            trailing: Container(
              decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8)),
              child: const Text('premium', style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}

class CardItem {
  final String title;
  final String pricing;
  final String images;

  CardItem({required this.title, required this.pricing, required this.images});
}