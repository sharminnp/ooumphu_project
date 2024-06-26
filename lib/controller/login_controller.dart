import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:oomphu/utils/graphql_config.dart';
import 'package:oomphu/utils/login_mutation.dart';

class LoginController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  RxBool loading = RxBool(false);
  Rx<String?> errorMessage = Rx(null);
  final formKey = GlobalKey<FormState>();
  Future<bool> login() async {
    loading(true);
    errorMessage(null);

    final client = GraphQLConfig.clientToQuery();

    final result = await client.mutate(
      MutationOptions(
        document: gql(loginMutation),
        variables: {
          'usernameEmailPhone': passwordController.text.trim(),
          'password': emailController.text.trim(),
        },
      ),
    );

    if (result.hasException) {
      loading(false);
      if (result.exception!.graphqlErrors.isNotEmpty) {
        errorMessage.value = result.exception!.graphqlErrors[0].message;
      } else if (result.exception!.linkException != null) {
        errorMessage.value = result.exception!.linkException.toString();
      } else {
        errorMessage.value = "An unknown error occurred";
      }

      return false;
    }

    if (result.data != null) {
      final token = result.data!['loginByUsernameEmailPhone']['token'];
      // Handle token and user data as needed

      loading(false);
      return true;

      // Navigate to another screen or show success message
    }
    return false;
  }
}
