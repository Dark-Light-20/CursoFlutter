class Quadrilateral {
  int? base;
  int? height;
  int? area;
  String? type;

  // Factories never crete an instance of this class, its functionality
  // is to return a new instance already created or an instance of same class
  factory Quadrilateral(int base, int height) {
    if (base == height)
      return Quadrilateral.square(base);
    else
      return Quadrilateral.rectangle(base, height);
  }

  Quadrilateral.square(int base) {
    this.base = base;
    this.height = base;
    this.area = base * base;
    this.type = "Square";
  }

  Quadrilateral.rectangle(int base, int height) {
    this.base = base;
    this.height = height;
    this.area = base * height;
    this.type = "Rectangle";
  }

  @override
  String toString() {
    return {"base": base, "height": height, "area": area, "type": type}
        .toString();
  }
}

void main(List<String> args) {
  final figure = Quadrilateral(5, 5);
  print(figure);
}
