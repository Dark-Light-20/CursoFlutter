void main(List<String> args) {
  // Mapper
  Map<String, dynamic> users = {
    "role": "admin",
    "users": [
      {"name": "Dark", "isActive": true},
      {"name": "Sora", "isActive": true},
    ]
  };

  final response = Response.fromMap(users);

  print(response.users);
}

class Response {
  List<dynamic> users;
  String role;

  Response({required this.role, required this.users});

  factory Response.fromMap(Map<String, dynamic> user) =>
      Response(role: user["role"], users: List<dynamic>.from(user["users"]));
}
