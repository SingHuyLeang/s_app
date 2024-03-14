class AppPricingCaculator {
  /// -- Caculator Price based on tax and shopping
  static double caculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shoppingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shoppingCost;
    return totalPrice;
  }

  /// -- caculate shoppig cost
  static String caculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  /// -- caculate tax
  static String caculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  /// -- get tax rate for location
  static double getTaxRateForLocation(String location) {
    // Looking the tax rate for the given location from a tax rate database or API
    // Return the apporiate tax rate
    return 0.10;
  }

  /// -- get shopping cost
  static double getShippingCost(String location) {
    // Lookup the shipping cost for the given location using a shipping rate API
    // Caculate the shipping cost based on various factors like distance, widget, etc.
    return 5.00;
  }

  /// -- Sum all card value and return total amount
  // static double caculateCardTotal(CardModel card) {
  //   return card.items.map((e) => e.price).fold(0,
  //       (previousPrice, currentPrice) => previousPrice + (currentPrice ?? 0));
  // }
}
