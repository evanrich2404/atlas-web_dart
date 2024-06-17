List<double> convertToF(List<double> temperatureInC) {
  var temperatureInF = temperatureInC.map((tempC) {
    double tempF = (tempC * 1.8) + 32;

    tempF = double.parse(tempF.toStringAsFixed(2));

    return tempF;
  }).toList();
  return temperatureInF;
}
