import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:lumify_notes/utils/mixins/cubit_maybe_emit_mixin.dart';

import '../../authentication.dart';

part 'auth_cubit.freezed.dart';
part 'auth_cubit.g.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    AppUser? user,
  }) = _AuthState;

  factory AuthState.fromJson(Map<String, dynamic> json) => _$AuthStateFromJson(json);
}

class AuthCubit extends HydratedCubit<AuthState> with CubitMaybeEmit {
  ///Singleton
  static AuthCubit get instance => _instance;
  static final AuthCubit _instance = AuthCubit._internal();

  AuthCubit._internal() : super(const AuthState());

  bool get isSignedIn => state.user != null;

  void login(AppUser user) => emit(
        state.copyWith(
          user: user,
        ),
      );

  Future<void> loginWithProvider(String provider) async {
    await checkIfAccountExists(provider);
  }

  Future<void> checkIfAccountExists(String provider) async {}

  Future<void> logout() async {
    emit(
      state.copyWith(
        user: null,
      ),
    );
  }

  @override
  Map<String, dynamic>? toJson(AuthState state) => state.toJson();

  @override
  AuthState? fromJson(Map<String, dynamic> json) {
    ///We don't want to persist these values
    json.remove('isOtpAvailable');
    json.remove('phoneSessionId');
    return AuthState.fromJson(json);
  }
}
