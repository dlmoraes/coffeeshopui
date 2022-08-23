import 'package:coffeeshopui/components/category_iem.dart';
import 'package:coffeeshopui/components/my_list_item.dart';
import 'package:coffeeshopui/page/details_page.dart';
import 'package:coffeeshopui/utils/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final searchController = TextEditingController();

    return SafeArea(
      child: Scaffold(
        backgroundColor: COLOR_BACKGROUND,
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 25),
          child: Stack(
            children: [
              // TopBar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      'assets/images/menus.png',
                      height: 36,
                    ),
                  ),
                  const CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/images/avatar1.png'),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    const Text(
                      'Nice Food',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'Fast Delivery',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: HEIGHT_SIZEDBOX),

                    // Search Input
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      child: TextField(
                        controller: searchController,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Main, soups, drinks, salads...',
                        ),
                      ),
                    ),

                    const SizedBox(height: HEIGHT_SIZEDBOX),

                    // Categories
                    SizedBox(
                      height: 40,
                      child: ListView(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: const [
                          CategoryItem(
                            iconImagePath: 'assets/images/coffee-cup.png',
                            title: 'Coffee',
                            isActive: true,
                          ),
                          CategoryItem(
                            iconImagePath: 'assets/images/hamburger.png',
                            title: 'Burger',
                          ),
                          CategoryItem(
                            iconImagePath: 'assets/images/taco.png',
                            title: 'Taco',
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: HEIGHT_SIZEDBOX),

                    // List Itens
                    SizedBox(
                      height: size.height * 0.55,
                      child: ListView(
                        physics: const BouncingScrollPhysics(),
                        children: [
                          // Section List Itens
                          const Text(
                            'Best Match',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),

                          const SizedBox(height: HEIGHT_SIZEDBOX),

                          GestureDetector(
                            onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const DetailsPage(),
                              ),
                            ),
                            child: const Hero(
                              tag: 'assets/images/latte1.png',
                              child: MyListItem(
                                title: 'Latte Classic',
                                subtitle: 'Rating this drink 4.5',
                                calories: 190,
                                iconImagePath: 'assets/images/latte1.png',
                              ),
                            ),
                          ),
                          const MyListItem(
                            title: 'Caramel Spice',
                            subtitle: 'Rating this food 4.9',
                            calories: 380,
                            iconImagePath: 'assets/images/latte2.png',
                          ),

                          const SizedBox(height: HEIGHT_SIZEDBOX),

                          const Text(
                            'Popular Food',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),

                          const SizedBox(height: HEIGHT_SIZEDBOX),

                          const MyListItem(
                            title: 'Caramel Spice',
                            subtitle: 'Rating this food 4.9',
                            calories: 380,
                            iconImagePath: 'assets/images/pizza.png',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
