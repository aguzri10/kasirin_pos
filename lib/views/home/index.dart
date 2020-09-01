import 'package:flutter/material.dart';
import 'package:kasirin_pos/core/models/dummy.dart';
import 'package:kasirin_pos/core/routes/arguments.dart';
import 'package:kasirin_pos/core/routes/constants.dart';
import 'package:kasirin_pos/views/widgets/container_shadow.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      body: Row(
        children: [
          Expanded(
            child: CustomScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              slivers: [
                SliverAppBar(
                  backgroundColor: Colors.redAccent,
                  title: Text('Kasirin'),
                  pinned: true,
                ),
                SliverGrid.count(
                  crossAxisCount: 4,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  childAspectRatio: 1.50,
                  children: [
                    for (var category in categories) ...[
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, detailRoute,
                              arguments:
                                  DetailArguments(products: category.products));
                        },
                        child: ContainerShadow(
                          paddingHorizontal: 8,
                          paddingVertical: 8,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(category.name),
                              Text(category.count.toString()),
                            ],
                          ),
                        ),
                      )
                    ],
                  ],
                )
              ],
            ),
          ),
          // Container(
          //   color: Colors.redAccent,
          //   height: MediaQuery.of(context).size.height,
          //   width: MediaQuery.of(context).size.width / 3,
          //   child: Container(
          //     margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          //     height: MediaQuery.of(context).size.height,
          //     width: MediaQuery.of(context).size.width / 3,
          //     decoration: BoxDecoration(
          //       color: Colors.white,
          //       boxShadow: [
          //         BoxShadow(
          //           color: Colors.black.withOpacity(0.05),
          //           blurRadius: 5,
          //         )
          //       ],
          //       borderRadius: BorderRadius.all(
          //         Radius.circular(5),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
