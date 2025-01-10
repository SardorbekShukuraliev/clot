import 'package:flutter/material.dart';
import 'package:justtrainingmygryobanniyskill/core/consts/color.dart';
import 'package:justtrainingmygryobanniyskill/features/home/order/order_widget.dart';


class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: AppColors.auth_bg_color,
        appBar: AppBar(
          backgroundColor: AppColors.auth_bg_color,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(0),
            child: Container(
              height: 50,
              padding: const EdgeInsets.all(5),
              color: AppColors.auth_bg_color,
              child: TabBar(
                tabAlignment: TabAlignment.start,
                dividerColor: Colors.transparent,
                isScrollable: true,
                indicator: BoxDecoration(
                  color: AppColors.splashBgColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white,
                labelStyle:
                const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                tabs: const [
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text("Processing"),
                    ),
                  ),
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text("Shipped"),
                    ),
                  ),
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text("Delivered"),
                    ),
                  ),
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text("Returned"),
                    ),
                  ),
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text("Canceled"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children: const [
                    OrderWidget(),
                    OrderWidget(),
                    OrderWidget(),
                    OrderWidget(),
                    OrderWidget(),
                    OrderWidget(),
                    OrderWidget(),
                    OrderWidget(),
                    OrderWidget(),
                    OrderWidget(),
                    OrderWidget(),
                    OrderWidget(),
                    OrderWidget(),
                    OrderWidget(),
                  ],
                )
            ),

            // Second Tab: Delivered Content
            const Center(
              child: Text(
                "Delivered",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),

            // Third Tab: Returned Content
            const Center(
              child: Text(
                "Returned",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),

            // Fourth Tab: Canceled Content
            const Center(
              child: Text(
                "Canceled",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


