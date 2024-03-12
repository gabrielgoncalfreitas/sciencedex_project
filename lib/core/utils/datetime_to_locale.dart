import 'package:intl/intl.dart';

String dateTimeToDetailed(DateTime date) {
  return DateFormat('dd \'de\' MMM. \'de\' yyyy', 'pt_BR').format(date);
}

String dateTimeToLocale(DateTime date) {
  return DateFormat('dd/MM/yyyy').format(date);
}
