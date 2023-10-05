import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shop_app/core/utils/app_router.dart';
import 'package:shop_app/core/utils/constants.dart';
import 'package:shop_app/features/auth/data/auth_methods.dart';
import 'package:shop_app/features/auth/presentaion/widgets/custom_button.dart';
import 'package:shop_app/features/auth/presentaion/widgets/custom_text_form_field.dart';

class ForgotPasswordViewBody extends StatefulWidget {
  const ForgotPasswordViewBody({super.key});

  @override
  State<ForgotPasswordViewBody> createState() => _ForgotPasswordViewBodyState();
}

class _ForgotPasswordViewBodyState extends State<ForgotPasswordViewBody> {
  TextEditingController emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      progressIndicator: const CircularProgressIndicator(
        color: kPrimaryColor,
      ),
      inAsyncCall: isLoading,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 3.h,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios_new_rounded,
                            size: 20,
                          ))),
                  SizedBox(
                    height: 4.h,
                  ),
                  Form(
                    key: _formKey,
                    child: Card(
                      elevation: 0.5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      color: const Color(0xffFFFFFF),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Forgot Password',
                              style: TextStyle(
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            const Text(
                              'Email',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff929292),
                              ),
                            ),
                            CustomTextFormField(
                              controller: emailController,
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Align(
                                alignment: Alignment.center,
                                child: CustomButton(
                                  txt: 'Continue',
                                  onPressed: () async {
                                    if (_formKey.currentState!.validate()) {
                                      isLoading = true;
                                      setState(() {});
                                      await AuthMethods.resetPassord(
                                        email: emailController.text,
                                      );
                                      isLoading = false;
                                      setState(() {});
                                      // ignore: use_build_context_synchronously
                                      GoRouter.of(context).pushReplacement(
                                          '/${AppRouter.kLoginView}');
                                    }
                                  },
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
