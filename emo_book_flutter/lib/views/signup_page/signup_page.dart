import 'package:flutter/material.dart';

// Packages
import 'package:get/get.dart';

// Controllers
import 'package:emo_book_flutter/controllers/user_controller.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _SignupForm(),
              _SignupButton(),
            ]),
      ),
    );
  }
}

class _SignupForm extends StatelessWidget {
  const _SignupForm({Key? key}) : super(key: key);

  static final TextEditingController emailController = TextEditingController();
  static final TextEditingController passwordController =
      TextEditingController();
  static final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('회원가입'),
        SizedBox(height: 30),
        _SignupInputForm(
          hintText: '이메일',
          textEditingController: emailController,
        ),
        SizedBox(height: 30),
        _SignupInputForm(
          hintText: '비밀번호',
          textEditingController: passwordController,
          isPassword: true,
        ),
        SizedBox(height: 30),
        _SignupInputForm(
          hintText: '닉네임',
          textEditingController: nameController,
        ),
        SizedBox(height: 30),
      ],
    );
  }

  static void submit() async {
    Status status = await Get.find<UserController>().signup(
        email: emailController.text,
        password: passwordController.text,
        user: {
          'name': nameController.text,
          'email': emailController.text,
        });
    if (status != Status.success) {
      await Get.dialog(Text('error'));
    }
    Get.offAllNamed('/');
  }
}

class _SignupInputForm extends StatelessWidget {
  final bool isPassword;
  String hintText;
  TextEditingController textEditingController;
  _SignupInputForm(
      {required this.hintText,
      required this.textEditingController,
      this.isPassword = false,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 45,
      alignment: Alignment.center,
      child: TextFormField(
        autofocus: !isPassword,
        autofillHints: isPassword
            ? [AutofillHints.password]
            : [AutofillHints.username, AutofillHints.email],
        keyboardType:
            isPassword ? TextInputType.text : TextInputType.emailAddress,
        onFieldSubmitted: (_) {
          if (isPassword) _SignupForm.submit();
        },
        textInputAction:
            isPassword ? TextInputAction.done : TextInputAction.next,
        controller: textEditingController,
        obscureText: isPassword,
        style: Theme.of(context).textTheme.bodyText1!,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.subtitle1!,
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            borderSide: BorderSide(width: 1, color: Color(0xffFFB000)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            borderSide: BorderSide(width: 1, color: Color(0xffBDBDBD)),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
        ),
      ),
    );
  }
}

class _SignupButton extends StatelessWidget {
  const _SignupButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 45,
      child: OutlinedButton(
        onPressed: () {
          _SignupForm.submit();
        },
        style: OutlinedButton.styleFrom(
          shape: const StadiumBorder(),
          side: const BorderSide(),
        ),
        child: Text(
          '회원가입',
          style: Theme.of(context).textTheme.subtitle1!,
        ),
      ),
    );
  }
}
