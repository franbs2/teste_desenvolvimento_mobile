import 'dart:math';

import 'faturamento.dart';

void main() {
  List<double> faturamento = Faturamento.faturamento;
  double menor = faturamento.reduce((a, b) => a == 0 ? b : min(a, b));
  double maior = faturamento.reduce(max);

  double total = faturamento.reduce((a, b) => a + b);

  int diasSemFaturamento = faturamento.where((element) => element == 0).length;
  int diasComFaturamento = faturamento.length - diasSemFaturamento;

  double media = total / diasComFaturamento;

  print('Menor faturamento: $menor');
  print('Maior faturamento: $maior');
  print('Total faturamento: ${total.toStringAsFixed(2)}');
  print('Média faturamento: ${media.toStringAsFixed(2)}');
}
