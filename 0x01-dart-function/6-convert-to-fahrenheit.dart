List<double> convertToF(List<double> temperaturesInC) {
  return temperaturesInC.map((e) {
    double fareRes = (e * 9 / 5) + 32;
    return double.parse(fareRes.toStringAsFixed(2));
  }).toList();
}
