import 'package:flutter/material.dart';
import 'package:foodie/Widgets/bottom_navigation_bar.dart';
import 'package:foodie/utils/app_colors.dart';
import 'package:foodie/utils/text_style.dart';
import 'package:foodie/views/signup_screen.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _key = GlobalKey<FormState>();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Form(
          key: _key,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.fastfood_outlined,
                    color: AppColors.primaryColor,
                    size: 100,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  HeadingTwo(
                    data: 'Foodie',
                    color:AppColors.primaryColor ,
                    fontSize: 35,
                  )
                ],
              ),
              const SizedBox(height: 50,),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  label: const Text("Email"),
                  prefixIcon: const Icon(Icons.email_rounded),
                  fillColor: const Color(0xffF8F9FA),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                    errorBorder:  OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(15),
                    )
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter your Email";
                  } else if (!value.contains('@')) {
                    return "Invalid Email";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10,),

              TextFormField(
                obscureText: _obscureText,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  label: const Text("Password"),
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                  fillColor: const Color(0xffF8F9FA),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  errorBorder:  OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(15),
                  )
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter your password";
                  } else if (value.length < 8) {
                    return "password invalid";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                onPressed: () {
                  if (_key.currentState!.validate()) {

                    Navigator.push(context, MaterialPageRoute(builder: (context) => const CustomNavBar(),));
                  }
                },
                style: ElevatedButton.styleFrom(backgroundColor: AppColors.primaryColor),
                child: const HeadingTwo(data: 'Login',color: Colors.white,),
              ),
              const HeadingThree(data: 'Or'),
              ElevatedButton(
                onPressed: () {
                  {

                    Navigator.push(context, MaterialPageRoute(builder: (context) => const SingUpScreen(),));
                  }
                },
                style: ElevatedButton.styleFrom(backgroundColor: AppColors.primaryColor),
                child: const HeadingTwo(data: 'Sign Up',color: Colors.white,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}