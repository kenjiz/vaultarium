import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vaultarium/core/typedef.dart';

part 'app_user.freezed.dart';
part 'app_user.g.dart';

@freezed
abstract class AppUser with _$AppUser {
  const factory AppUser({
    required Uid uid,
    required String email,
    required String avatarUrl,
    String? firstName,
    String? lastName,
  }) = _AppUser;

  factory AppUser.fromJson(MapData json) => _$AppUserFromJson(json);
}
