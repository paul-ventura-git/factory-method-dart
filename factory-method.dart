abstract class Car {
  String getBrand();
  String getYear();
  String getModel();
}

class Sedan implements Car {
  String _brand = "", _year = "", _model = "";
  Sedan(String input_brand, String input_year, String input_model) {
    this._brand = input_brand;
    this._year = input_year;
    this._model = input_model;
    print("A new instance of a sedan was created: ${input_brand} - ${input_model} - ${input_year} .");
  }
  @override
  String getBrand() {
    return _brand;
  }

  @override
  String getYear() {
    return _year;
  }

  @override
  String getModel() {
    return _model;
  }
}

class CarFactory {
  Car constructCar(String input_brand, String input_year, String input_model) {
    return new Sedan(input_brand, input_year, input_model);
  }
}

void main() {
  Car my_car = new CarFactory().constructCar("Audi", "2010", "R8");
  print("Brand :${my_car.getBrand()}");
  print("Model :${my_car.getModel()}");
  print("Year :${my_car.getYear()}");
}
