import 'package:flutter/material.dart';
import 'package:kasirin_pos/core/routes/arguments.dart';
import 'package:kasirin_pos/core/routes/constants.dart';
import 'package:kasirin_pos/views/styles/color.dart';
import 'package:kasirin_pos/views/widgets/container_shadow.dart';

class Detail extends StatelessWidget {
  final DetailArguments arguments;

  const Detail({Key key, this.arguments}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: CustomScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              slivers: [
                SliverAppBar(
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
                                Icon(Icons.arrow_back_ios, color: Colors.redAccent),
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
                              SizedBox(height: 16),
                              Text('Rp' + product.price.toString()),
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
              color: primaryColor,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16)),
            ),
            child: Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width / 3,
              padding: EdgeInsets.all(16),
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
                ),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: ListView(
                      children: [
                        Text(
                          'Detail Order',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                          ),
                        ),
                        SizedBox(height: 16),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 32,
                              height: 32,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: primaryColor),
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: primaryColor,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                'Ayam Geprek Sambal Ijo',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                            Text(
                              'Rp 13.000',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black87,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 16),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 32,
                              height: 32,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: primaryColor),
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: primaryColor,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                'Nasi Putih',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                            Text(
                              'Rp 4.000',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black87,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Diskon',
                        style: TextStyle(fontSize: 14, color: Colors.green),
                      ),
                      Icon(Icons.add, color: Colors.green),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: TextStyle(fontSize: 14),
                      ),
                      Text(
                        'Rp. 17.000',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, payRoute);
                      },
                      color: Colors.redAccent,
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Checkout',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          Text(
                            'Rp 17.000',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
