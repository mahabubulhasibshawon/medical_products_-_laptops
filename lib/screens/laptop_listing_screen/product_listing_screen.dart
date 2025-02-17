// product_listing_screen.dart
import 'package:flutter/material.dart';
import '../../models/product_price_variant.dart';
import 'widgets/ad_banner.dart';
import 'widgets/product_item.dart';

class ProductListingScreen extends StatelessWidget {
  const ProductListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            spacing: 16,
            children: [
              Text('Total 11,048',
                  style: Theme.of(context).textTheme.titleMedium
              ),
              Container(
                padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all()
                  ),
                  child: Row(
                children: [
                  PopupMenuButton(
                    child: Row(
                      children: [
                        Text('Sort by popularity', style: Theme.of(context).textTheme.titleMedium),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                    itemBuilder: (context) => [],
                  ),
                ],
              )),
              Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all()
                  ),
                  child: Text('Shipping included',  style: Theme.of(context).textTheme.titleMedium)),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: const Row(children: [Text('Coupang Wow Discount'), Switch(value: false, onChanged: null)],),
          ),
          Divider(),
          const AdBanner(),
          ...productItems,
        ],
      ),
    );
  }
}

// Example usage:
final productItems = [
  ProductItem(
    distributor: 'LG Notebook Online Distributor',
    title: 'MSI GF Series Sword GF76 A AI B8VF-R7',
    image: 'assets/images/laptop1.png',
    specs: 'Notebook / 43.9cm (17.3 inches) / Weight: 2.6kg / Usage: Gaming / Notebook / 43.9cm (17.3 inches) / Weight: 2.6kg / Usage: Gaming / Notebook / 43.9cm (17.3 inches) / Weight: 2.6kg / Usage: Gaming',
    priceVariants: [
      ProductPriceVariant(
        capacity: 'SSD 512GB',
        price: '1,159,000원',
        isSelected: true,
        tag: 'bit price',
      ),
      ProductPriceVariant(
        capacity: 'SSD 1TB',
        price: '1,260,000원',
      ),
      ProductPriceVariant(
        capacity: 'SSD 2T',
        price: '1,335,000원',
      ),
    ],
    badges: [
      CircleAvatar(child: Icon(Icons.verified)),
    ],
    tags: ['1,099,170 won [Duplicate copy upon download required] Big Fest lowest price'], price: '1,599,000', priceTxt: 'one Free Shipping',
  ),
  ProductItem(
    title: 'MSI GF Series Sword GF76 A AI B8VF-R7',
    image: 'assets/images/laptop1.png',
    specs: 'Notebook / 43.9cm (17.3 inches) / Weight: 2.6kg / Usage: Gaming / Notebook / 43.9cm (17.3 inches) / Weight: 2.6kg / Usage: Gaming / Notebook / 43.9cm (17.3 inches) / Weight: 2.6kg / Usage: Gaming',

    badges: [
      CircleAvatar(child: Icon(Icons.verified)),
    ],
    tags: ['1,099,170 won [Duplicate copy upon download required] Big Fest lowest price'], distributor: '', price: '1,342,850', priceTxt: 'one Free Shipping',
  ),
  ProductItem(
    title: 'Standard Product',
    image: 'assets/images/laptop2.png',
    specs: 'Basic specs / Notebook / 43.9cm (17.3 inches) / Weight: 2.6kg / Usage: Gaming / Notebook / 43.9cm (17.3 inches) / Notebook / 43.9cm (17.3 inches) / Weight: 2.6kg / Usage: Gaming / Notebook / 43.9cm (17.3 inches) ',
    singlePrice: '999,000원', distributor: '', price: '1,342,850', priceTxt: 'one (266 moles)',
    priceVariants: [
      ProductPriceVariant(
        capacity: 'SSD 512GB',
        price: '1,159,000원',
        isSelected: true,
        tag: 'bit price',
      ),
      ProductPriceVariant(
        capacity: 'SSD 1TB',
        price: '1,260,000원',
      ),
      ProductPriceVariant(
        capacity: 'SSD 2T',
        price: '1,335,000원',
      ),
    ],
  ),
];