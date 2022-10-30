import 'dart:convert';

import 'package:dart_json_coverter_test/models/user/user.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('Crea User con los datos JSON entregados', () {
    const userJson = {
      "is_admin": false,
      "rut": "410340194",
      "rut_formatted": "41.034.019-4",
      "first_name": "Minnie",
      "middle_name": "Prof. Haskell Steuber Sr.",
      "last_name": "Davis",
      "mother_last_name": "Mayer",
      "full_name": "Minnie Prof. Haskell Steuber Sr. Davis Mayer",
      "email": "omer96@example.net",
      "phone": null,
      "confirmed_citizen": false
    };

    final user = User.fromJson(userJson);

    expect(user.isAdmin, equals(false));
    expect(user.rut, equals('410340194'));
    expect(user.rutFormatted, equals('41.034.019-4'));
    expect(user.firstName, equals('Minnie'));
    expect(user.middleName, equals('Prof. Haskell Steuber Sr.'));
    expect(user.lastName, equals('Davis'));
    expect(user.motherLastName, equals('Mayer'));
    expect(
        user.fullName, equals('Minnie Prof. Haskell Steuber Sr. Davis Mayer'));
    expect(user.email, equals('omer96@example.net'));
    expect(user.phone, equals(null));
    expect(user.confirmedCitizen, equals(false));
  });

  test('Convierte User a JSON', ()
  {
    final user = User(
      isAdmin: false,
      rut: '410340194',
      rutFormatted: '41.034.019-4',
      firstName: 'Minnie',
      middleName: 'Prof. Haskell Steuber Sr.',
      lastName: 'Davis',
      motherLastName: 'Mayer',
      fullName: 'Minnie Prof. Haskell Steuber Sr. Davis Mayer',
      email: 'omer96@example.net',
      phone: null,
      confirmedCitizen: false,
    );

    const userJson = {
      "is_admin": false,
      "rut": "410340194",
      "rut_formatted": "41.034.019-4",
      "first_name": "Minnie",
      "middle_name": "Prof. Haskell Steuber Sr.",
      "last_name": "Davis",
      "mother_last_name": "Mayer",
      "full_name": "Minnie Prof. Haskell Steuber Sr. Davis Mayer",
      "email": "omer96@example.net",
      "phone": null,
      "confirmed_citizen": false
    };

    expect(user.toJson(), equals(userJson));
  });
}
