import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/custom_scaffold.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _MyAppState();
}

class _MyAppState extends State<HomeScreen> {
  List<CardItem> cardItems = [];

  @override
  void initState() {
    super.initState();
    cardItems = [
      CardItem(title: "t_shirt", pricing: "\$10", images: [
        'lib/images/00.jpg',
        'lib/images/4.jpg',
        'lib/images/6.jpg',
        'lib/images/8.jpg'
      ]),
      CardItem(title: "over_size", pricing: "\$20", images: [
        'lib/images/5.jpg',
        'lib/images/2.jpg',
        'lib/images/3.jpg',
        'lib/images/9.jpg'
      ]),
      CardItem(title: "gh", pricing: "\$30", images: [
        'lib/images/6.jpg',
        'lib/images/00.jpg',
        'lib/images/4.jpg',
        'lib/images/8.jpg'
      ]),
      CardItem(title: "mark", pricing: "\$40", images: [
        'lib/images/7.jpg',
        'lib/images/8.jpg',
        'lib/images/9.jpg',
        'lib/images/10.jpg'
      ]),
      CardItem(title: "T_shirt1", pricing: "\$50", images: [
        'lib/images/3.jpg',
        'lib/images/8.jpg',
        'lib/images/6.jpg',
        'lib/images/9.jpg'
      ]),
      CardItem(title: "T_shirt2", pricing: "\$50", images: [
        'lib/images/8.jpg',
        'lib/images/4.jpg',
        'lib/images/3.jpg',
        'lib/images/10.jpg'
      ]),
      CardItem(title: "T_shirt3", pricing: "\$70", images: [
        'lib/images/9.jpg',
        'lib/images/3.jpg',
        'lib/images/9.jpg',
        'lib/images/3.jpg'
      ]),
      CardItem(title: "T_shirt4", pricing: "\$90", images: [
        'lib/images/10.jpg',
        'lib/images/7.jpg',
        'lib/images/10.jpg',
        'lib/images/00.jpg'
      ]),
      CardItem(title: "T_shirt5", pricing: "\$30", images: [
        'lib/images/4.jpg',
        'lib/images/8.jpg',
        'lib/images/00.jpg',
        'lib/images/4.jpg'
      ]),
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
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 198, 246, 230),//لون الي بره 
                  borderRadius: BorderRadius.circular(8), // إضافة حواف للحاوية
                ),
                child: Container(
                  margin: const EdgeInsets.all(15),
                  padding: const EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 195, 227, 154),//لون الي جوه عند كلمه بحث
                    borderRadius: BorderRadius.circular(8), // إضافة حواف للحاوية الداخلية
                    border: Border.all(color: Colors.black), // إضافة حواف للحاوية الداخلية
                  ),
                  child: Row(
                    children: [
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search Your Item ',
                            hintStyle:
                                TextStyle(color: Colors.black, fontSize: 17),
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
            height: MediaQuery.of(context).size.height / 4,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 1,
              itemBuilder: (context, index) {
                return Image.asset(
                  cardItem.images[index],
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List<Widget>.generate(
              cardItem.images.length,
              (int circleIndex) {
                return Padding(
                  padding: const EdgeInsets.all(4),
                  child: CircleAvatar(
                    radius: 4,
                    backgroundColor: circleIndex == cardItem.currentIndex
                        ? Colors.blue
                        : Colors.grey,
                  ),
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
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(1),
              ),
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
  final List<String> images;
  int currentIndex;

  CardItem({
    required this.title,
    required this.pricing,
    required this.images,
    this.currentIndex = 0,
  });
}