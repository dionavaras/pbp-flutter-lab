class Budget {
  String judul = "";
  int? nominal = 0;
  DateTime date;
  String jenis;
  Budget(this.judul, this.nominal, this.jenis, this.date);
}

class ListBudget {
  static List<Budget> data = [];
}