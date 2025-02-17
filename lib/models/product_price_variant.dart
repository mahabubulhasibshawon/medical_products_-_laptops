class ProductPriceVariant {
  final String capacity;
  final String price;
  final bool isSelected;
  final String? tag;

  const ProductPriceVariant({
    required this.capacity,
    required this.price,
    this.isSelected = false,
    this.tag,
  });
}