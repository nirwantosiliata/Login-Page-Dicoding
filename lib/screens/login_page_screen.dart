import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_page_dicoding/screens/drawer_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.grey,
        elevation: 4,
        leading: Padding(
          padding: const EdgeInsets.all(12),
          child: Image.network(
            'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/original/commons/new-ui-logo.png',
          ),
        ),
      ),
      endDrawer: const Drawer(
        child: SafeArea(
          child: Column(
            children: [
              MenuTile(title: 'Academy'),
              MenuTile(title: 'Challenge'),
              MenuTile(title: 'Event'),
              MenuTile(title: 'Job'),
              MenuTile(title: 'Developer'),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.network(
                'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/original/commons/certificate_logo.png',
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                'Masuk',
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 16.0,
              ),
              _textFieldEmail(),
              const SizedBox(
                height: 16.0,
              ),
              _textFieldPassword(),
              const SizedBox(height: 8),
              Text(
                'Lupa Password',
                textAlign: TextAlign.right,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      decoration: TextDecoration.underline,
                    ),
              ),
              const SizedBox(height: 16),
              _loginButton(),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    const Divider(
                      color: Colors.black,
                    ),
                    Positioned(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 4,
                        ),
                        color: Colors.white,
                        child: Text(
                          'atau',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              _loginWithGoogle(context),
              const SizedBox(height: 16),
              _loginWithFacebook(context),
              const SizedBox(height: 8),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Belum punya akun? Ayo ',
                  style: Theme.of(context).textTheme.bodyLarge,
                  children: const [
                    TextSpan(
                      text: 'daftar',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.blue,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Divider(
                  color: Colors.black,
                ),
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Dengan melakukan login, Anda setuju dengan ',
                  style: Theme.of(context).textTheme.bodyLarge,
                  children: const [
                    TextSpan(
                      text: 'syarat & ketentuan Dicoding',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  OutlinedButton _loginWithFacebook(BuildContext context) {
    return OutlinedButton.icon(
      style: ElevatedButton.styleFrom(
        side: const BorderSide(
          color: Colors.black,
        ),
      ),
      onPressed: () {},
      icon: const FaIcon(
        FontAwesomeIcons.facebook,
        color: Colors.blue,
      ),
      label: Text(
        'Masuk dengan Facebook',
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }

  OutlinedButton _loginWithGoogle(BuildContext context) {
    return OutlinedButton.icon(
      style: ElevatedButton.styleFrom(
        side: const BorderSide(
          color: Colors.black,
        ),
      ),
      onPressed: () {},
      icon: const FaIcon(
        FontAwesomeIcons.google,
        color: Colors.grey,
      ),
      label: Text(
        'Masuk dengan Google',
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }

  ElevatedButton _loginButton() {
    return ElevatedButton(
      style:
          ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey.shade800),
      onPressed: () {},
      child: const Text(
        "Masuk",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  TextField _textFieldPassword() {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: 'Password',
        focusedBorder: const OutlineInputBorder(),
        border: const OutlineInputBorder(),
        suffixIcon: IconButton(
          icon: Icon(obscureText ? Icons.visibility_off : Icons.visibility),
          onPressed: () {
            setState(() {
              obscureText = !obscureText;
            });
          },
        ),
        isDense: true,
      ),
    );
  }

  TextField _textFieldEmail() {
    return const TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Email',
        focusedBorder: OutlineInputBorder(),
        border: OutlineInputBorder(),
        isDense: true,
      ),
    );
  }
}
