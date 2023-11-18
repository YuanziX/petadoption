import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:petadoption/app/pages/login_page/cubit/login_page_cubit.dart';
import 'package:petadoption/app/pages/login_page/widgets/login_form.dart';
import 'package:petadoption/app/pages/login_page/widgets/signup_form.dart';
import 'package:petadoption/app/utils/helper.dart';

class LoginPageProvider extends StatelessWidget {
  const LoginPageProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginPageCubit(),
      child: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(
              height: height(context) * 0.4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/images/cutecat.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              'Pets Adoption Companion',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),
            const SizedBox(
              height: 24,
            ),
            BlocBuilder<LoginPageCubit, LoginPageState>(
              builder: (context, state) {
                if (BlocProvider.of<LoginPageCubit>(context).isLogin) {
                  return const LoginForm();
                } else {
                  return const SignupForm();
                }
              },
            ),
          ]),
        ),
      ),
    );
  }
}
