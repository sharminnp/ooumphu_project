import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:oomphu/utils/graphql_config.dart';
import 'package:oomphu/utils/init_services.dart';
import 'package:oomphu/view/home/home_screen.dart';
import 'package:oomphu/view/login/login_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initService();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: GraphQLConfig.initializeClient(),
      child: GetMaterialApp(
        // initialBinding: AppBindings(),

        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: "Poppins",
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: false,
        ),
        home: LoginView(),
      ),
    );
  }
}
