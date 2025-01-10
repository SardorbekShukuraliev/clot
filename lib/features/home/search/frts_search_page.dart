import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:justtrainingmygryobanniyskill/core/consts/color.dart';
import 'package:justtrainingmygryobanniyskill/features/home/clip_rect.dart';
import 'package:justtrainingmygryobanniyskill/features/home/search/sort.dart';
import 'not_found_page.dart';

class FRSTSearchPage extends StatefulWidget {
  const FRSTSearchPage({super.key});

  @override
  State<FRSTSearchPage> createState() => _FRSTSearchPageState();
}

class _FRSTSearchPageState extends State<FRSTSearchPage> {
  final TextEditingController _searchController = TextEditingController();

  final List<String> categories = ['Hoodies', 'Accessories', 'Shorts', 'Shoes', 'Bags'];

  List<String> searchResults = [];
  bool hasResults = true;

  void _performSearch(String query) {
    setState(() {
      if (query.isEmpty) {
        _navigateToNotFoundPage();
        return;
      }

      searchResults = categories
          .where((category) => category.toLowerCase().contains(query.toLowerCase()))
          .toList();

      hasResults = searchResults.isNotEmpty;

      if (!hasResults) {
        _navigateToNotFoundPage();
      }
    });
  }

  void _navigateToNotFoundPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const NotFoundPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.auth_bg_color,
      appBar: AppBar(
        backgroundColor: AppColors.auth_bg_color,
        leading: IconButton(
          icon: const Icon(IconsaxPlusBold.arrow_left, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: SizedBox(
          height: 45,
          child: TextField(
            controller: _searchController,
            style: const TextStyle(color: Colors.white, fontSize: 16),
            onSubmitted: _performSearch,
            decoration: InputDecoration(
              hintText: 'Search',
              hintStyle: const TextStyle(color: Colors.white54, fontSize: 16),
              prefixIcon: const Icon(IconsaxPlusBroken.search_normal, color: Colors.white, size: 24),
              suffixIcon: IconButton(
                icon: const Icon(IconsaxPlusBroken.close_circle, color: Colors.white),
                onPressed: () {
                  _searchController.clear();
                  setState(() {
                    searchResults.clear();
                    hasResults = false;
                  });
                },
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: AppColors.textareas_bg,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const FilterScreen(),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.6,
                crossAxisCount: 2,
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
    );
  }
}
