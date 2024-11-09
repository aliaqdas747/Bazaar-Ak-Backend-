

class  RPricingCalculator {

//Calculate The price  based on tax and the shiping
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

//Calculate The Shiping Cost
static String calculateShippingCost (double productPrice, String location){
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);

}
//Calculate  tax
static String calculateTax(double productPrice, String location){
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
}
static double getTaxRateForLocation(String location){
    //look up the tax rate  for the given location from  a tax rate database or Api ,
  //Return the appropriate tax rate .
  return 0.10;
}
static double getShippingCost(String location){
    //Lookup the shipping cost for the given location using a shipping rate Api
  //Calculate the shipping  cost based on varies factors  like distance, weight, etc
  return 5.0;

}


}