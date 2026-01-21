class User{
  final String id;
  final String name;
  final String email;
  final String city;

  User({
    required this.id,
    required this.name,
    required this.city,
    required this.email
});

  factory User.fromJson(Map<String,dynamic> json){
    return User(
      id: json['id'],
      name: json['name'],
      city: json['city'],
      email: json['email']
    );
  }

  Map<String,dynamic> toJson(){
    return {
      'name' : name,
      'email': email,
      'city' : city,
    };
  }

}
