class User {
  final String id;
  final String name;
  final String nickName;
  final String email;
  final String password;

  User({
    required this.id,
    required this.name,
    required this.nickName,
    required this.email,
    required this.password,
  });
}

final dummyUser = User(
  id: "1",
  name: "김민수",
  nickName: "잼별",
  email: "monmap@example.com",
  password: "1234",
);
