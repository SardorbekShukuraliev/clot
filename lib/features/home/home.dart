import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:justtrainingmygryobanniyskill/core/consts/color.dart';
import 'package:justtrainingmygryobanniyskill/features/home/categories.dart';
import 'package:justtrainingmygryobanniyskill/features/home/category_v_kvadrate.dart';
import 'package:justtrainingmygryobanniyskill/features/home/circle_avatar.dart';
import 'package:justtrainingmygryobanniyskill/features/home/clip_rect.dart';
import 'package:justtrainingmygryobanniyskill/features/home/search/frts_search_page.dart';
import 'package:justtrainingmygryobanniyskill/features/home/top_sell.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedGender = "Men";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.auth_bg_color,
        appBar: AppBar(
          backgroundColor: AppColors.auth_bg_color,
          leading: GestureDetector(
            onTap: () {},
            child: Image.asset("assets/images/top_left.png"),
          ),
          title: Center(
            child: _buildGenderDropdown(),
          ),
          actions: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
                backgroundColor: Colors.purple[300],
                minimumSize: const Size(40, 40),
              ),
              onPressed: () {},
              child: Image.asset("assets/icons/buket_shopping.png", height: 40, width: 40),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              SizedBox(
                height: 50,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color:AppColors.textareas_bg,
                    borderRadius: BorderRadius.circular(45),
                  ),
                  child: TextField(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FRSTSearchPage()),
                      );
                    },
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(IconsaxPlusBroken.search_normal, color: Colors.white),
                      contentPadding: EdgeInsets.symmetric(vertical: 13.0, horizontal: 16.0),
                    ),
                  ),

                ),
              ),
              const SizedBox(height: 20),
              _buildCategories(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    circleAvatar(
                      "assets/images/hoodie.png",
                      "Hoodies",
                          () {
                        Navigator.pushNamed(
                          context,
                          SecondShopCategories(category: 'Hoodies',) as String
                        );
                      },
                    ),
                    circleAvatar(
                      "assets/images/shorts.png",
                      "Shorts",
                          () {
                        Navigator.pushNamed(
                          context,
                          SecondShopCategories(category: 'Shorts',) as String
                        );
                      },
                    ),
                    circleAvatar(
                      "assets/images/shoes.png",
                      "Shoes",
                          () {
                        Navigator.pushNamed(
                          context,
                          SecondShopCategories(category: 'Shoes',) as String
                        );
                      },
                    ),
                    circleAvatar(
                      "assets/images/bag.png",
                      "Bag",
                          () {
                        Navigator.pushNamed(
                          context,
                          SecondShopCategories(category: 'Bag',) as String
                        );
                      },
                    ),
                    circleAvatar(
                      "assets/images/accss.png",
                      "Accessories",
                          () {
                        Navigator.pushNamed(
                          context,
                          SecondShopCategories(category: 'Accessories',) as String
                        );
                      },
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),
              _buildTopSelling(),
              SizedBox(
                height: 350,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CustomClipRRect(
                      imgURL: "assets/images/1.png",
                      text: "Men's Harrington Jacket",
                      price: 1755,
                    ),
                    CustomClipRRect(
                      imgURL: "assets/images/1.png",
                      text: "Men's Harrington Jacket",
                      price: 1755,
                    ),
                    CustomClipRRect(
                      imgURL: "assets/images/1.png",
                      text: "Men's Harrington Jacket",
                      price: 1755,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              _buildNewIn(),
              SizedBox(
                height: 350,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CustomClipRRect(
                      imgURL: "assets/images/1.png",
                      text: "Men's Harrington Jacket",
                      price: 1755,
                    ),
                    CustomClipRRect(
                      imgURL: "assets/images/1.png",
                      text: "Men's Harrington Jacket",
                      price: 1755,
                    ),
                    CustomClipRRect(
                      imgURL: "assets/images/1.png",
                      text: "Men's Harrington Jacket",
                      price: 1755,
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

  Widget _buildGenderDropdown() {
    return Container(
      padding: const EdgeInsets.only(left: 12),
      width: 100,
      decoration: BoxDecoration(
        color: AppColors.textareas_bg,
        borderRadius: BorderRadius.circular(100),
      ),
      child: DropdownButton<String>(
        value: selectedGender,
        dropdownColor: AppColors.textareas_bg,
        underline: const SizedBox(),
        onChanged: (String? newValue) {
          setState(() {
            selectedGender = newValue!;
          });
        },
        items: const [
          DropdownMenuItem(value: "Men", child: Text("Men", style: TextStyle(color: Colors.white))),
          DropdownMenuItem(value: "Women", child: Text("Women", style: TextStyle(color: Colors.white))),
        ],
        icon: Image.asset("assets/icons/down.png"),
      ),
    );
  }

  Widget _buildCategories() {
    return Padding(
      padding: const EdgeInsets.only(left: 7.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text("Categories", style: TextStyle(color: Colors.white, fontSize: 20)),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ShopCategories(),
                ),
              );
            },
            child: const Text("See All", style: TextStyle(color: Colors.white, fontSize: 20)),
          ),
        ],
      ),
    );
  }

  Widget _buildTopSelling() {
    return Padding(
      padding: const EdgeInsets.only(left: 7.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text("Top Selling", style: TextStyle(color: Colors.white, fontSize: 20)),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductsCategories(category: 'Top Selling',),
                ),
              );
            },
            child: const Text("See All", style: TextStyle(color: Colors.white, fontSize: 20)),
          ),
        ],
      ),
    );
  }

  Widget _buildNewIn() {
    return Padding(
      padding: const EdgeInsets.only(left: 7.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text("New in", style: TextStyle(color: Colors.white, fontSize: 20)),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductsCategories(category: 'New in',),
                ),
              );
            },
            child: const Text("See All", style: TextStyle(color: Colors.white, fontSize: 20)),
          ),
        ],
      ),
    );
  }
}
