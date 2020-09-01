import 'package:flutter/material.dart';
import 'package:kasirin_pos/core/routes/arguments.dart';
import 'package:kasirin_pos/views/widgets/container_shadow.dart';

class Detail extends StatelessWidget {
  final DetailArguments arguments;

  const Detail({Key key, this.arguments}) : super(key: key);
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
                  title: Text(arguments.category.name),
                  pinned: true,
                  automaticallyImplyLeading: false,
                ),
                SliverPadding(
                  padding: EdgeInsets.all(8),
                  sliver: SliverGrid.count(
                    crossAxisCount: 4,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    childAspectRatio: 1.50,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: ContainerShadow(
                          child: Center(
                            child:
                                Icon(Icons.arrow_back, color: Colors.redAccent),
                          ),
                        ),
                      ),
                      for (var product in arguments.products) ...[
                        ContainerShadow(
                          paddingHorizontal: 8,
                          paddingVertical: 8,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(product.name, textAlign: TextAlign.center),
                              Text(product.price.toString()),
                            ],
                          ),
                        )
                      ],
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width / 3,
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16)),
            ),
            child: Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width / 3,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.10),
                      blurRadius: 5,
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
