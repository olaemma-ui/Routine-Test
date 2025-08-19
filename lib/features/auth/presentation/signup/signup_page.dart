import 'dart:developer';

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

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  String? passwordError;
  String? nameError;
  String? emailError;

  @override
  void dispose() {
    // TODO: implement dispose
    fullNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthBloc>(
      create: (context) => getIt<AuthBloc>(),
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          state.whenOrNull(
            failure: (failure) {
              final error = failure.data as Map<String, dynamic>?;
              nameError = error?['fullname'];
              emailError = error?['email'];
              passwordError = error?['password'];

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
              // Clear previous errors
              nameError = null;
              emailError = null;
              passwordError = null;
              context.push(AppRoutes.onboarding.path);
            },
          );
        },
        builder: (context, state) {
          return Scaffold(
            body: SingleChildScrollView(
              padding: const EdgeInsets.all(DesignConstants.screenPadding),
              child: Form(
                key: _formKey,
                child: Column(
                  // spacing: 16,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(40.fem),

                    Text('Register', style: AppTypography.displayMedium),
                    Gap(40.fem),

                    AppTextField(
                      label: 'Full Name',
                      hintText: 'John Doe',
                      controller: fullNameController,
                      readOnly: state == AuthState.loading(),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'This field is required';
                        }
                        if (nameError != null) return nameError;
                        return null;
                      },
                    ),
                    const Gap(16),
                    AppTextField(
                      label: 'Email Address',
                      hintText: 'Example: johndoe@gmail.com',
                      readOnly: state == AuthState.loading(),
                      controller: emailController,
                      validator: (value) {
                        if (emailError != null) return emailError;
                        return null;
                      },
                    ),
                    const Gap(16),
                    AppTextField(
                      label: 'Password',
                      hintText: '********',
                      obscureText: true,
                      readOnly: state == AuthState.loading(),

                      obscuringCharacter: '*',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'This field is required';
                        }
                        if (passwordError != null) return passwordError;
                        return null;
                      },
                      controller: passwordController,
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
                    const Gap(16),
                    AppTextField(
                      label: 'Re-enter Password',
                      hintText: '********',
                      readOnly: state == AuthState.loading(),
                      obscureText: true,
                      obscuringCharacter: '*',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'This field is required';
                        }
                        if (value != passwordController.text) {
                          return 'Password missmatch';
                        }

                        return null;
                      },
                      controller: confirmPasswordController,
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

                    Gap(40.fem),
                    FilledButton(
                      onPressed: state == AuthState.loading()
                          ? null
                          : () {
                              nameError = null;
                              emailError = null;
                              passwordError = null;
                              if (_formKey.currentState!.validate()) {
                                context.read<AuthBloc>().add(
                                  AuthEvent.register(
                                    email: emailController.text,
                                    password: passwordController.text,
                                    fullName: fullNameController.text,
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
                          : Text('Register'),
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

                              mainAxisAlignment: MainAxisAlignment.center,
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
                          text: 'Already have an account? ',
                          children: [
                            TextSpan(
                              text: ' Sign In here.',
                              style: AppTypography.textMedium.copyWith(
                                color: AppColor.primary,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  context.pop();
                                },
                            ),
                          ],
                        ),
                        style: AppTypography.textMedium,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
