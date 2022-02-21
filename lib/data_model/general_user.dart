import 'dart:convert';



class GeneralUser {

String? email;
String? username;
String? uid;
String? password;
String? job;


GeneralUser({
    this.email,
    this.username,
    this.uid,
    this.password,
    this.job,
  });

  GeneralUser copyWith({
    String? email,
    String? username,
    String? uid,
    String? password,
    String? job,
  }) {
    return GeneralUser(
      email: email ?? this.email,
      username: username ?? this.username,
      uid: uid ?? this.uid,
      password: password ?? this.password,
      job: job ?? this.job,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'username': username,
      'uid': uid,
      'password': password,
      'job': job,
    };
  }

  factory GeneralUser.fromMap(Map<String, dynamic> map) {
    return GeneralUser(
      email: map['email'],
      username: map['username'],
      uid: map['uid'],
      password: map['password'],
      job: map['job'],
    );
  }

  String toJson() => json.encode(toMap());

  factory GeneralUser.fromJson(String source) => GeneralUser.fromMap(json.decode(source));

  @override
  String toString() {
    return 'GeneralUser(email: $email, username: $username, uid: $uid, password: $password, job: $job)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is GeneralUser &&
      other.email == email &&
      other.username == username &&
      other.uid == uid &&
      other.password == password &&
      other.job == job;
  }

  @override
  int get hashCode {
    return email.hashCode ^
      username.hashCode ^
      uid.hashCode ^
      password.hashCode ^
      job.hashCode;
  }
}
