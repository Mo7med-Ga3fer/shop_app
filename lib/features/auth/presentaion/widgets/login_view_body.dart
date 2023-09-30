import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:shop_app/core/utils/app_router.dart';
import 'package:shop_app/core/utils/constants.dart';
import 'package:shop_app/features/auth/data/auth_methods.dart';
import 'package:shop_app/features/auth/presentaion/widgets/continue_with_button.dart';
import 'package:shop_app/features/auth/presentaion/widgets/custom_button.dart';
import 'package:shop_app/features/auth/presentaion/widgets/custom_text_form_field.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      progressIndicator: const CircularProgressIndicator(color: kPrimaryColor,),
      inAsyncCall: isLoading,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 50,),
                Form(
                  key: _formKey,
                  child: Card(
                    elevation: 0.5,
                    shape:  RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                    color: const Color(0xffFFFFFF),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Welcome,', style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w400,
                              ),),
                              InkWell(
                                onTap: (){
                                  GoRouter.of(context).push('/${AppRouter.kRegisterView}');
                                },
                                child: const Text('Sign Up', style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff00C569)
                                ),),
                              )
                            ],
                          ),
                          const SizedBox(height: 3,),
                          const Text('Sign in to Continue', style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff929292),
                          ),),
                          const SizedBox(height: 50,),
                           const Text('Email', style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff929292),
                          ),),
                          CustomTextFormField(
                            controller: emailController,
                          ),
                          const SizedBox(height: 30,),
                          const Text('Password', style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff929292),
                          ),),
                          CustomTextFormField(
                            isSecret: true,
                            controller: passwordController,
                          ),
                          const SizedBox(height: 10,),
                          InkWell(
                            onTap: (){
                              GoRouter.of(context).push('/${AppRouter.kForgotPasswordView}');
                            },
                            child: const Align(
                              alignment: Alignment.centerRight,
                              child: Text('Forgot Password?', style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),),
                            ),
                          ),
                          const SizedBox(height: 30,),
                          Align(
                            alignment: Alignment.center,
                            child: CustomButton(
                              txt: 'SIGN IN',
                              onPressed: () async {
                                    if(_formKey.currentState!.validate()){
                                      isLoading = true;
                                      setState(() {});
                                      await AuthMethods.loginUser(
                                        email: emailController.text,
                                        password: passwordController.text);
                                      isLoading = false;
                                      setState(() {});
                                      // ignore: use_build_context_synchronously
                                      GoRouter.of(context).pushReplacement('/${AppRouter.kHomeView}');
                                    }
                                  },
                            )),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24,),
                const Align(
                  alignment: Alignment.center,
                  child: Text('-OR-', style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),),
                ),
                const SizedBox(height: 30,),
                const ContinueWithButton(
                  txt: 'Sign In with Facebook',
                  img: 'assets/images/google.png',
                ),
                const SizedBox(height: 8,),
                const ContinueWithButton(
                  txt: 'Sign In with Google',
                  img: 'assets/images/facebook.png',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}