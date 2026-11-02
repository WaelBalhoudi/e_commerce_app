class PricingCalculator {
  /// Calculate total price based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    double shippingCost = getShippingCost(location);
    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  /// Calculate shipping cost based on location
  static double calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost;
  }

  /// Calculate tax amount based on location
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  /// Get tax rate based on location
  static double getTaxRateForLocation(String location) {
    // Placeholder logic - replace with actual tax rates based on location
    switch (location.toLowerCase()) {
      case 'us':
        return 0.08; // 8% tax
      case 'uk':
        return 0.20; // 20% tax
      case 'eu':
        return 0.19; // 19% tax
      default:
        return 0.00; // No tax by default
    }
  }

  /// Get shipping cost based on location
  static double getShippingCost(String location) {
    // Placeholder logic - replace with actual shipping costs based on location
    switch (location.toLowerCase()) {
      case 'us':
        return 5.00; // $5 shipping
      case 'uk':
        return 10.00; // $10 shipping
      case 'eu':
        return 7.50; // $7.50 shipping
      default:
        return 0.00; // No shipping cost by default
    }
  }
}