import 'dart:convert';



class GeneralUser {

String? email;
String? username;
String? uid;
String? password;
String? job;
String? bio;


GeneralUser({
    this.email,
    this.username,
    this.uid,
    this.password,
    this.job,
    this.bio,
  });

  GeneralUser copyWith({
    String? email,
    String? username,
    String? uid,
    String? password,
    String? job,
    String? bio,
  }) {
    return GeneralUser(
      email: email ?? this.email,
      username: username ?? this.username,
      uid: uid ?? this.uid,
      password: password ?? this.password,
      job: job ?? this.job,
      bio: bio ?? this.bio,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'username': username,
      'uid': uid,
      'password': password,
      'job': job,
      'bio' : bio
    };
  }

  factory GeneralUser.fromMap(Map<String, dynamic> map) {
    return GeneralUser(
      email: map['email'],
      username: map['username'],
      uid: map['uid'],
      password: map['password'],
      job: map['job'],
      bio: map['bio']
    );
  }

  String toJson() => json.encode(toMap());

  factory GeneralUser.fromJson(String source) => GeneralUser.fromMap(json.decode(source));

  @override
  String toString() {
    return 'GeneralUser(email: $email, username: $username, uid: $uid, password: $password, job: $job,bio:$bio)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is GeneralUser &&
      other.email == email &&
      other.username == username &&
      other.uid == uid &&
      other.password == password &&
      other.job == job&&
      other.bio == bio;
  }

  @override
  int get hashCode {
    return email.hashCode ^
      username.hashCode ^
      uid.hashCode ^
      password.hashCode ^
      job.hashCode^
      bio.hashCode;
  }
}
