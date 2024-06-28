import 'dart:convert';

var path = Base64Codec.urlSafe();

class User {
  late String id;
  late String name;
  late String email;
  late String password;
  late String phone;
  late String address;
  late String image;
  late String gender;
  late String role;
  late String createdAt;
  late String updatedAt;
  late String deletedAt;
  late String token;
  late String refreshToken;
  late String expiresIn;
  late String refreshExpiresIn;
  late String tokenType;
  late String refreshTokenType;
  late String idToken;
  late String idRefreshToken;
  late String scope;
  late String accessToken;
  
  static fromJson(decode) {}
  
  Object? toJson() {
    return null;
  }  
}

// local variables
User userFromJson(String str) => User.fromJson(json.decode(str));
// local variables
String userToJson(User data) => json.encode(data.toJson());

