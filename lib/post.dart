//import 'package:http/http.dart';
class Posts {
  final String name;
  // ignore: non_constant_identifier_names
  final String bill_amount;
  final String branch;
  // ignore: non_constant_identifier_names
  final String charge_group;
  // ignore: non_constant_identifier_names
  final String cus_key;
  // ignore: non_constant_identifier_names
  final String contract_no;
  final String debit_30;
  final String debit_60;
  final String debit_90;
  final String total;

  Posts(
      {
        required this.name,
      // ignore: non_constant_identifier_names
      required this.bill_amount,
      required this.branch,
      // ignore: non_constant_identifier_names
      required this.charge_group,
      // ignore: non_constant_identifier_names
      required this.contract_no,
      // ignore: non_constant_identifier_names
      required this.cus_key,
      required this.debit_30,
      required this.debit_60,
      required this.debit_90,
      required this.total});

  factory Posts.fromJson(Map<String, dynamic> json) {
    return Posts(
        name: json['name'],
        bill_amount: json['bill_amount'],
        branch: json['branch'],
        charge_group: json['charge_group'],
        cus_key: json['cus_key'],
        contract_no: json['contract_no'],
        debit_30: json['debit_30'],
        debit_60: json['debit_60'],
        debit_90: json['debit_90'],
        total: json['total']);
  }
}
