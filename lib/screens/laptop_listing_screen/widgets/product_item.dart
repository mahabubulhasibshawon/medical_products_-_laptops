import 'package:flutter/material.dart';

import '../../../models/product_price_variant.dart';


class ProductItem extends StatefulWidget {
  final String distributor;
  final String title;
  final String image;
  final String specs;
  final String price;
  final String priceTxt;
  final List<ProductPriceVariant> priceVariants;
  final List<String> tags;
  final List<Widget> badges;
  final String? singlePrice;

  const ProductItem({
    super.key,
    required this.title,
    required this.image,
    required this.specs,
    this.priceVariants = const [],
    this.singlePrice,
    this.tags = const [],
    this.badges = const [],
    required this.distributor, required this.price, required this.priceTxt,
  });

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          spacing: 10,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Product Image
                Image.asset(
                  widget.image,
                  width: 120,
                  height: 80,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 16),
                // Product Details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (widget.distributor.isNotEmpty) Text(widget.distributor),
                      const SizedBox(height: 8),
                      Text(
                        widget.title,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      if (widget.badges.isNotEmpty) Row(children: widget.badges),
                      Text(
                        widget.title,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Row(
                        children: [
                          Text(
                            widget.price,
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          Text(
                            ' '+widget.priceTxt,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      if (widget.tags.isNotEmpty)
                        Wrap(
                          spacing: 8,
                          children: widget.tags.map((tag) => Chip(label: Text(tag))).toList(),
                        ),
                    ],
                  ),
                ),
              ],
            ),
            Text(
              widget.specs,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            // Price Section
            if (widget.priceVariants.isEmpty && widget.singlePrice != null)
              Text(
                widget.singlePrice!,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              )
            else
              _buildPriceVariants(context),
          ],
        ),
      ),
    );
  }
bool isHovering = false;
  Widget _buildPriceVariants(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: widget.priceVariants.map((variant) {
            return Expanded(
              child: MouseRegion(
                onEnter: (_) {
                  setState(() {
                    isHovering = true;
                  });
                },
                onExit: (_) {
                  setState(() {
                    isHovering = false;
                  });
                },
                child: Container(
                  height: isHovering ? 100 :  80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: variant.isSelected ? Colors.blue : Colors.grey,
                      width: variant.isSelected ? 2 : 1,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.only(right: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        variant.capacity,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        variant.price,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: variant.isSelected ? Colors.blue : Colors.black,
                        ),
                      ),
                      if (variant.tag != null)
                        Text(
                          variant.tag!,
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Colors.grey,
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
        ),
        const SizedBox(height: 8),
        TextButton(
          onPressed: () {},
          child: const Text('see more'),
        ),
      ],
    );
  }
}