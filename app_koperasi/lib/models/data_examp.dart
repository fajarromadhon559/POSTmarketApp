class Transaction {
  final int id;
  final String to;
  final String ammount;
  final String date;
  final String descriotion;

  Transaction(this.id, this.to, this.ammount, this.date, this.descriotion);
}

final List<Transaction> transactions = [
  Transaction(1, 'Snake', '2.500', '17 Agustus 2022 12:33', 'Beng-beng'),
  Transaction(2, 'Minuman', '5.000', '17 January 2023 12:33', 'Kopi Cappucino'),
  Transaction(3, 'Snake', '5.000', '17 September 2023 12:33', 'Siomay'),
  Transaction(4, 'Minuman', '1.000', '17 Maret 2023 12:33', 'Kopi Cup'),
  Transaction(4, 'Minuman', '8.000', '17 Maret 2023 12:33', 'Susu UHT'),
  Transaction(4, 'Rokok', '15.000', '17 Maret 2023 12:33', 'Moza'),
  Transaction(1, 'Snake', '2.500', '17 Agustus 2022 12:33', 'Beng-beng'),
  Transaction(2, 'Minuman', '5.000', '17 January 2023 12:33', 'Kopi Cappucino'),
  Transaction(3, 'Snake', '5.000', '17 September 2023 12:33', 'Siomay'),
  Transaction(4, 'Minuman', '1.000', '17 Maret 2023 12:33', 'Kopi Cup'),
  Transaction(4, 'Minuman', '8.000', '17 Maret 2023 12:33', 'Susu UHT'),
  Transaction(4, 'Rokok', '15.000', '17 Maret 2023 12:33', 'Moza'),
];
