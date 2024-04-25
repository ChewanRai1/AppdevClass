class AreaCircleModel{
  final double pi = 3.14;
  final double radius;

  AreaCircleModel({
    required this.radius,
  });

  double Area(){
    return pi*radius*radius;
  }
}