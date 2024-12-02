class AppUser {
  dynamic id;
  String name;
  String password;
  String level;
  String email;
  String? pfp;
  String? phone; 
  String date;

  AppUser({
    this.id,
    required this.email,
    required this.name,
    required this.password,
    this.level = "Beginer",
    this.pfp,
    this.phone,
    required this.date
  });


  factory AppUser.fromJson(Map<dynamic, dynamic> parsedJson) {
    return AppUser(
      id: parsedJson['id'],
      name: parsedJson['name'],
      pfp: parsedJson['pfp'],
      level: parsedJson['level'],
      email: parsedJson['email'],
      // phone: parsedJson['phone'],
      date: parsedJson['date'],
      password: parsedJson['password'],
    );
  }

  static List<AppUser> toListOFUser(List<dynamic> list) {
    return list.map((e) => AppUser.fromJson(e)).toList();
  }

  //   Map<String, dynamic> toMap() {
  //   return {'name': name};
  // }


  Map<String, dynamic> toMap() {
    return {
      // 'id': id,
      'name': name,
      'pfp': pfp,
      'date' : date,
      'email': email,
      'level': level,
      'phone': phone,
      'password': password
    };
  }
}
