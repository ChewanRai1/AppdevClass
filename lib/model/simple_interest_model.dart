class SimpleInterestModel{
  final double principal;
  final double time;
  final double rate;

  SimpleInterestModel({
    required this.principal,
    required this.time,
    required this.rate,
  });

  double SimpleInterest(){
    return (principal*time*rate)/100;
  }
}