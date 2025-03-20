import 'package:equatable/equatable.dart';
import 'package:pkg_user/src/data/dto/user_dto.dart';

class UserModel extends Equatable {
  const UserModel({
    required this.nickname,
  });

  final String nickname;

  factory UserModel.fromDto(UserDto dto) => UserModel(
        nickname: dto.nickname,
      );

  UserDto toDto() => UserDto(
        nickname: nickname,
      );

  UserModel copyWith({
    String? nickname,
  }) {
    return UserModel(
      nickname: nickname ?? this.nickname,
    );
  }

  @override
  List<Object> get props => [];
}
