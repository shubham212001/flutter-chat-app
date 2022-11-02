import 'package:digichat/features/authorisation/auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';


final authControllerProvider=Provider((ref){
    final authRepository = ref.watch(authRepositoryProvider);
  return auth_controller(authRepository,ref);
});
class auth_controller {
  final AuthRepo authRepo;
  final ProviderRef ref;

  auth_controller(this.authRepo, this.ref);

  //Now comes the method

  void signInwithphone(BuildContext context, String phoneNumber) {
    authRepo.signInWithPhone(context, phoneNumber);
  }
}
