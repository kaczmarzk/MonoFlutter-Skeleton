class UserDto {
  UserDto({
    required this.nickname,
  });

  final String nickname;

  factory UserDto.fromJson(Map<String, dynamic> json) {
    return UserDto(
      nickname: json['nickname'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nickname': nickname,
    };
  }
}
