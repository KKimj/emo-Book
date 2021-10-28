import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

// Packages
import 'package:get/get.dart';

// Controllers
import 'package:emo_book_flutter/controllers/app_controller.dart';
import 'package:emo_book_flutter/controllers/user_controller.dart';

// Widgets
import 'package:emo_book_flutter/views/widgets/app_bar.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put<AppController>(AppController());
    Get.put<UserController>(UserController());

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // EmoAppBar(),
            _LoginForm(),
            _TextActionButton('아직 emo book 회원이 아니신가요? 지금 가입하세요.',
                () => Get.toNamed('/signup')),
            _GoogleSignIn(),
          ],
        ),
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm({Key? key}) : super(key: key);

  static final TextEditingController emailController = TextEditingController();
  static final TextEditingController passwordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('로그인', style: Theme.of(context).textTheme.headline1!),
        _LoginInputForm(),
        SizedBox(
          height: 15,
        ),
        _LoginInputForm(isPassword: true),
        SizedBox(
          height: 40,
        ),
        _LoginButton(),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }

  static void submit() async {
    dynamic status = await Get.find<UserController>()
        .login(email: emailController.text, password: passwordController.text);
    if (status != Status.success) {
      await Get.dialog(Text(status));
    } else {
      Get.offAllNamed('/user');
    }
  }
}

class _LoginInputForm extends StatelessWidget {
  final bool isPassword;

  const _LoginInputForm({this.isPassword = false, Key? key}) : super(key: key);

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
          if (isPassword) _LoginForm.submit();
        },
        textInputAction:
            isPassword ? TextInputAction.done : TextInputAction.next,
        controller: isPassword
            ? _LoginForm.passwordController
            : _LoginForm.emailController,
        obscureText: isPassword,
        style: Theme.of(context).textTheme.bodyText1!,
        decoration: InputDecoration(
          hintText: isPassword ? "비밀번호" : "이메일",
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

class _LoginButton extends StatelessWidget {
  const _LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 45,
      child: OutlinedButton(
        onPressed: () {
          _LoginForm.submit();
        },
        style: OutlinedButton.styleFrom(
          shape: const StadiumBorder(),
          side: const BorderSide(),
        ),
        child: Text(
          '로그인',
          style: Theme.of(context).textTheme.subtitle1!,
        ),
      ),
    );
  }
}

class _TextActionButton extends StatelessWidget {
  const _TextActionButton(this.text, this.onTap, {Key? key}) : super(key: key);
  final String text;
  final VoidCallback onTap;

  // const TextActionButton(this.text, {this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        text,
        style: Theme.of(context).textTheme.caption!,
      ),
    );
  }
}

class _GoogleSignIn extends StatelessWidget {
  const _GoogleSignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return // with custom text
        Column(
      children: [
        SizedBox(
          height: 20,
        ),
        SignInButton(
          Buttons.GoogleDark,
          text: "구글계정으로 시작하기",
          onPressed: () async {
            dynamic status = await UserController.to.login(isGoogleLogin: true);
            if (status != Status.success) {
              await Get.dialog(Text('구글 계정으로 로그인 실패!'));
            } else {
              Get.offAllNamed('/user');
            }
          },
        ),
      ],
    );
  }
}
