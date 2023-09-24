import 'package:drift/drift.dart';

class ProductTable extends Table {
  IntColumn get id => integer()();
  TextColumn get name => text()();
  TextColumn get description => text()();
  RealColumn get price => real()();
  TextColumn get image => text()();
  IntColumn get quantity => integer()();
  TextColumn get category => text()();
  TextColumn get barcode => text()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
}
