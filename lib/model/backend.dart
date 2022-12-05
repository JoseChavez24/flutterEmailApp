import 'email.dart';

class Backend {
  /// Singleton pattern used here.
  static final Backend _backend = Backend._internal();

  factory Backend() {
    return _backend;
  }

  Backend._internal();

  /// Private list of emails. Hardcoded here for testing purposes.
  final _emails = [
    Email(
      id: 1,
      from: 'joselynsantos@educacion.com',
      subject: 'Joselyn Santos',
      dateTime: DateTime(2020, 10, 03, 19, 43),
      body:
          'Maestra para niños de educacion básica, aprendizaje del inglés básico e intermedio.',
    ),
    Email(
      id: 2,
      from: 'yamilethpalma@educacion.com',
      subject: 'Yamileth Palma',
      dateTime: DateTime(2020, 10, 07, 03, 05),
      body:
          'Administradora del sistema de educación para aprendizaje del inglés.',
    ),
    Email(
      id: 3,
      from: 'bautistachavez@gmail.com',
      subject: 'Bautista Chavez',
      dateTime: DateTime(2020, 10, 09, 13, 48),
      body:
          'Mantenimiento de las estaciones de trabajo en centros educativos del milenio.',
    ),
    Email(
      id: 4,
      read: true,
      from: 'josepaz@soporte.com',
      subject: 'Jose Paz',
      dateTime: DateTime(2020, 10, 11, 16, 14),
      body:
          'Soporte tecnico a las distintas maquinas ubicadas en las intituciones educativas.',
    ),
    Email(
      id: 5,
      from: 'lauracevallos@prime.com',
      subject: 'Laura Cevallos',
      dateTime: DateTime(2020, 10, 13, 20, 25),
      body:
          'Encargada del departamento de recursos humanos de laa empresa de desarrollo de software MNBI.',
    ),
    Email(
      id: 6,
      from: 'gonzaloplata@gmail.com',
      subject: 'Gonzalo Plata',
      dateTime: DateTime(2020, 10, 14, 23, 59),
      body:
          'Administrador de las bases de datos en la empresa MNBI.',
    ),
    Email(
      id: 7,
      from: 'nestorflores@hotmail.com',
      subject: 'Nestor Flores',
      dateTime: DateTime(2020, 10, 16, 21, 09),
      body:
          'Responsable de la adminisión y negación del personal de desarrollo.',
    ),
    Email(
      id: 8,
      from: 'davidlopez@gmail.com',
      subject: 'David Lopez',
      dateTime: DateTime(2020, 10, 18, 18, 10),
      body:
          'Transportista general de los equipos tecnológicos pertenecientes a la empresa.',
    ),
    Email(
      id: 9,
      from: 'stefanychavez@gmail.com',
      subject: 'Stefany Chavez',
      dateTime: DateTime(2020, 10, 22, 21, 21),
      body:
          'Administradora de sistemas de seguridad de la empresa MBI.',
    ),
    Email(
      id: 10,
      from: 'gabrielachavez@hotmail.com',
      subject: 'Gabriela Chavez',
      dateTime: DateTime(2020, 10, 26, 08, 54),
      body:
          'Orientadora y consejera en las cuestiones del desarrollo autónomo dentro de la empresa.',
    ),
  ];

  ///
  /// Public API starts here :)
  ///

  /// Returns all emails.
  List<Email> getEmails() {
    return _emails;
  }

  /// Marks email identified by its id as read.
  void markEmailAsRead(int id) {
    final index = _emails.indexWhere((email) => email.id == id);
    _emails[index].read = true;
  }

  /// Deletes email identified by its id.
  void deleteEmail(int id) {
    _emails.removeWhere((email) => email.id == id);
  }
}
