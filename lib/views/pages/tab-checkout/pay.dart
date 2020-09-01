import 'package:flutter/material.dart';
import 'package:kasirin_pos/views/styles/color.dart';

class PayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
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
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16),
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
                  // SizedBox(height: 16),
                  // ClipRRect(
                  //   borderRadius: BorderRadius.circular(8),
                  //   child: RaisedButton(
                  //     onPressed: () {},
                  //     color: Colors.redAccent,
                  //     padding:
                  //         EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  //     child: Row(
                  //       crossAxisAlignment: CrossAxisAlignment.center,
                  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //       mainAxisSize: MainAxisSize.max,
                  //       children: [
                  //         Text(
                  //           'Checkout',
                  //           style: TextStyle(fontSize: 14, color: Colors.white),
                  //         ),
                  //         Text(
                  //           'Rp 17.000',
                  //           style: TextStyle(fontSize: 14, color: Colors.white),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // )
                ],
              ),
            ),
          ),
          Expanded(
            child: CustomScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              slivers: [
                SliverAppBar(
                  title: Text('Pay'),
                  pinned: true,
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 64, vertical: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Masukan uang bayar',
                            style: TextStyle(
                                fontSize: 14, color: Color(0xFF828282))),
                        SizedBox(height: 8),
                        Text('Rp 20.000', style: TextStyle(fontSize: 18)),
                        Container(
                          height: 1,
                          margin: EdgeInsets.symmetric(
                              horizontal: 32, vertical: 16),
                          width: double.infinity,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Kembalian',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF828282),
                              ),
                            ),
                            Text(
                              'Rp 3.000',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF828282),
                              ),
                            )
                          ],
                        ),
                        // SizedBox(height: 16),
                        GridView.count(
                          crossAxisCount: 3,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,
                          childAspectRatio: 3,
                          children: [
                            ItemCalculator(num: '1'),
                            ItemCalculator(num: '2'),
                            ItemCalculator(num: '3'),
                            ItemCalculator(num: '4'),
                            ItemCalculator(num: '5'),
                            ItemCalculator(num: '6'),
                            ItemCalculator(num: '7'),
                            ItemCalculator(num: '8'),
                            ItemCalculator(num: '9'),
                            ItemCalculator(num: '0'),
                            ItemCalculator(num: '00'),
                            ItemCalculator(num: '000'),
                          ],
                        ),
                        SizedBox(height: 8),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: RaisedButton(
                            onPressed: () {},
                            color: Colors.redAccent,
                            padding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 12,
                            ),
                            child: Center(
                              child: Text(
                                'Pay',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ItemCalculator extends StatelessWidget {
  final String num;
  final Function onTap;

  const ItemCalculator({Key key, this.num, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Center(
          child: Text(
            num,
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF828282),
            ),
          ),
        ),
      ),
    );
  }
}
