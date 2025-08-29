import 'package:flutter/material.dart';
import 'package:riverpod_flutter_app/models/product.dart';
import 'package:riverpod_flutter_app/widgets/title_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Product> dummyProducts = [
      Product(
        id: '1',
        title: 'SmartWatch',
        description: 'Nice smart watch',
        imgUrl:
            'https://m.media-amazon.com/images/I/41QsWxy0K1L._AC_UL320_.jpg',
        price: 40,
      ),
      Product(
        id: '2',
        title: 'headphones',
        description: 'description',
        imgUrl:
            'https://m.media-amazon.com/images/I/819GfPP8LHL._AC_UL320_.jpg',
        price: 40,
      ),
      Product(
        id: '3',
        title: 'laptop',
        description: 'description',
        imgUrl:
            'https://m.media-amazon.com/images/I/61B3kcv1ULL._AC_UL320_.jpg',
        price: 40,
      ),
      Product(
        id: '4',
        title: 'printer',
        description: 'description',
        imgUrl:
            'https://m.media-amazon.com/images/I/31uc3agTVdL._AC_UL320_.jpg',
        price: 40,
      ),
      Product(
        id: '5',
        title: 'scanner',
        description: 'scanner',
        imgUrl:
            'https://m.media-amazon.com/images/I/51klC6hVp6L._AC_UL320_.jpg',
        price: 40,
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop app'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: GestureDetector(
              onTap: () {},
              child: Badge(label: Text('3'), child: Icon(Icons.shopping_cart)),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TitleText(titleTxt: "Latest Products"),
                GestureDetector(
                  onTap: () {},
                  child: TitleText(titleTxt: "See all"),
                ),
              ],
            ),
            SizedBox(height: 15),
            SizedBox(
              height: 260,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: dummyProducts.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          dummyProducts[index].imgUrl,
                          height: 150,
                          width: 150,
                        ),
                        SizedBox(height: 7),
                        TitleText(titleTxt: dummyProducts[index].title),
                        SizedBox(height: 7),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              dummyProducts[index].price.toStringAsFixed(2),
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                padding: EdgeInsets.all(7),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Icon(Icons.shopping_cart),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
