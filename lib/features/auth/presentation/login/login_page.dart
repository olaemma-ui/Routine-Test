import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/core/constants/design_constants.dart';
import 'package:todo_app/core/constants/svg_assets.dart';
import 'package:todo_app/core/di/injection.dart';
import 'package:todo_app/core/extensions/fem_extensions.dart';
import 'package:todo_app/core/theme/app_colors.dart';
import 'package:todo_app/core/theme/app_typography.dart';
import 'package:todo_app/features/auth/bloc/auth_bloc.dart';
import 'package:todo_app/routes/app_routes_names.dart';
import 'package:todo_app/widgets/app_snackbar.dart';
import 'package:todo_app/widgets/forms/input_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  String? passwordError;
  String? emailError;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthBloc>(),
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(DesignConstants.screenPadding),
          child: BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              state.whenOrNull(
                failure: (failure) {
                  final error = failure.data as Map<String, dynamic>?;
                  emailError = error?['email'];
                  passwordError = error?['password'];
                  // To show the snackbar:
                  ScaffoldMessenger.of(context).showSnackBar(
                    AppSnackbar(
                      message: failure.prettyMessage,
                    ).buildSnackBar(context),
                  );

                  // Trigger validator to show errors in fields
                  _formKey.currentState?.validate();
                  setState(() {});
                },
                success: (user) {
                  // navigate to home or dashboard
                  context.go(AppRoutes.homePage.path);
                },
              );
            },
            builder: (context, state) {
              return Form(
                key: _formKey,
                child: Column(
                  // spacing: 16,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(40.fem),
                    Text(
                      'Let’s Sign you in',
                      style: AppTypography.displayMedium,
                    ),
                    Gap(40.fem),

                    AppTextField(
                      label: 'Email Address',
                      hintText: 'Example: johndoe@gmail.com',
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      readOnly: state == AuthState.loading(),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'This field is required';
                        }
                        if (passwordError != null) return passwordError;
                        return null;
                      },
                    ),
                    const Gap(16),
                    AppTextField(
                      label: 'Password',
                      hintText: '********',
                      obscureText: true,
                      obscuringCharacter: '*',
                      controller: passwordController,
                      readOnly: state == AuthState.loading(),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'This field is required';
                        }
                        if (passwordError != null) return passwordError;
                        return null;
                      },
                      obscureTextIconHide: Icon(
                        CupertinoIcons.eye,
                        size: 20.ffem,
                      ),
                      obscureTextIconShow: Icon(
                        CupertinoIcons.eye_slash,
                        size: 20.ffem,
                      ),
                      obscureTextToggle: true,
                    ),

                    // Gap(8.fem),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot Password',
                        style: AppTypography.textMedium.copyWith(
                          color: AppColor.primary,
                        ),
                      ),
                    ),
                    Gap(40.fem),
                    FilledButton(
                      onPressed: state == AuthState.loading()
                          ? null
                          : () {
                              if (_formKey.currentState!.validate()) {
                                emailError = null;
                                passwordError = null;
                                context.read<AuthBloc>().add(
                                  AuthEvent.login(
                                    email: emailController.text.trim(),
                                    password: passwordController.text.trim(),
                                  ),
                                );
                              }
                            },
                      child: state == AuthState.loading()
                          ? SizedBox(
                              height: 20,
                              width: 20,
                              child: CircularProgressIndicator(
                                strokeCap: StrokeCap.round,
                                strokeWidth: 2,
                                color: AppColor.primary,
                              ),
                            )
                          : Text('Sign In'),
                    ),

                    Gap(40.fem),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      spacing: 8,
                      children: [
                        Expanded(child: Divider()),
                        Text(
                          'Or continue with',
                          style: AppTypography.textMedium,
                        ),
                        Expanded(child: Divider()),
                      ],
                    ),
                    Gap(24.fem),

                    Row(
                      spacing: 24,
                      children: [
                        Flexible(
                          child: OutlinedButton(
                            onPressed: () {},
                            child: Row(
                              spacing: 24,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(SvgAssets.facebook),
                                Text(
                                  'Facebook',
                                  style: AppTypography.textMedium,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          child: OutlinedButton(
                            onPressed: () {},
                            child: Row(
                              spacing: 24,

                              // mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(SvgAssets.google),
                                Text('Google', style: AppTypography.textMedium),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Gap(24.fem),
                    Center(
                      child: Text.rich(
                        TextSpan(
                          text: 'Don’t have an account? ',
                          children: [
                            TextSpan(
                              text: ' Register here.',
                              style: AppTypography.textMedium.copyWith(
                                color: AppColor.primary,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  context.push(AppRoutes.signupPage.path);
                                },
                            ),
                          ],
                        ),
                        style: AppTypography.textMedium,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
