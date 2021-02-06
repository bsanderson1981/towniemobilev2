class CartTotal {
  int bageltotals = 0;
  int totalsingles = 0;
  int inputtotal = 0;

  CartTotal(inputtotal) {
    bageltotals = ((inputtotal) ~/ 13);
    totalsingles = ((inputtotal) % 13);

 print("inputtotal: " + inputtotal.toStringAsFixed(2));
    print("total: " + bageltotals.toStringAsFixed(2));
    print("single: " + totalsingles.toStringAsFixed(2));
  }
}
