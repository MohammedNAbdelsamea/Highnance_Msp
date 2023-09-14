import 'package:auth/pages/register.dart';
import 'package:auth/pages/welcome_page.dart';
import 'package:auth/widgets/custom_button.dart';
import 'package:auth/widgets/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../helper/show_snack_bar.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../helper/validations.dart';


class SignIn extends StatefulWidget {
  static String id='signInPage';
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String? email;
  String? password;
  bool isLoading=false;
  bool _obscureText = true;


  void submitForm() async{
    if (_formKey.currentState!.validate()) {
      isLoading=true;
      setState(() {

      });
      try {

         await loginUser();
        showSnackBar(context, 'Success');
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          showSnackBar(context,'user-not-found');
          // print('The password provided is too weak.');
        } else if (e.code == 'wrong-password') {
          showSnackBar(context, 'wrong-password.');

        }
      }catch(e){
        showSnackBar(context, "Error!!!");
      }
      isLoading=false;
      setState(() {

      });

    }
  }

  @override
  Widget build(BuildContext context) {
    return
      ModalProgressHUD(
        inAsyncCall: isLoading,
        child: Scaffold(
          // appBar: AppBar(
          //
          //   elevation: 0,
          //   backgroundColor: Colors.white,
          //   leading: IconButton(
          //     icon: Icon(Icons.arrow_back,color:Color(0xFF2196F3) ,), // Replace with your desired icon
          //     onPressed: () {
          //       Navigator.pop(context);
          //     },
          //   ),
          // ),
    backgroundColor: Colors.white,
    body: Stack(

      children: [
        Positioned(
          top:30,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: IconButton(
        icon: Icon(Icons.arrow_back,color:Color(0xFF2196F3) ,), // Replace with your desired icon
        onPressed: () {
            Navigator.pop(context);
        },
      ),
          ),
    ),
        Positioned(
          left: 155,
          top: -87.37,
          child: Transform(
            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-0.33),
            child: Container(
              width: 379.57,
              height: 357.76,
              decoration: ShapeDecoration(
                color: Color(0xFF0B60A4),
                shape: OvalBorder(),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),

              child: Form(
                key: _formKey,
                child: ListView(
                  children: [

                // Padding(
                // padding: const EdgeInsets.only(right: 400,top: 10),
                //
                //       child:  GestureDetector(
                //         onTap: (){
                //           Navigator.pushNamed(
                //             context,
                //             WelcomePage.id,
                //           );
                //         },
                //
                //           child: Icon(Icons.arrow_back,
                //             color: Color(0xFF2196F3),
                //           ),
                //
                //
                //       ),
                //     ),
                    SizedBox(
                      height: 150.h,
                    ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Let’s sign ',
                              style: TextStyle(
                                color: Color(0xFF2196F3),
                                fontSize: 36.sp,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),

                    ),  Text(
                              'you in',
                              style: TextStyle(
                                color: Color(0xFF2196F3),
                                fontSize: 36.sp,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),

                    ),
                          ],
                        ),
                      ),
                    SizedBox(
                      height: 50.h,
                    ),
                    CustomTextFormFieldEmail(
                      hintText: 'Email',

                      onChanged: (data){
                        email=data;
                      },

                    ),
                SizedBox(
                  height: 20.h,
                ),
                CustomTextFormFieldPass(
                  hintText: 'Password',

                  onChanged: (data){
                    password=data;
                  },

                ),
                    SizedBox(height: 20.h),
                    CustomButton(
                      onTap: submitForm,
                      text: 'Sign in',

                    ),

                    Container(
                      width: 221,
                      height: MediaQuery.of(context).size.height,
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 80.h,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [

                                 Text(
                                    'Or sign up with',
                                    style: TextStyle(
                                      color: Color(0xFF0B60A4),
                                      fontSize: 16,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),

                              ],
                            ),
                             SizedBox(height: 20.h),
                            Container(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 57,
                                    height: 57,
                                    decoration: ShapeDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/images/google.png"),
                                        fit: BoxFit.fill,
                                      ),
                                      shape: OvalBorder(
                                        side: BorderSide(width: 1.w, color: Color(0xFF2196F3)),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20.w,
                                  ),
                                  Container(
                                    width: 57,
                                    height: 57,
                                    decoration: ShapeDecoration(
                                      image: DecorationImage(
                                        image:AssetImage("assets/images/facebook.png"),
                                        fit: BoxFit.fill,
                                      ),
                                      shape: OvalBorder(
                                        side: BorderSide(width: 1, color: Color(0xFF2196F3)),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20.w,
                                  ),
                                  Container(
                                    width: 57,
                                    height: 57,
                                    decoration: ShapeDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/images/apple.jpeg"),
                                        fit: BoxFit.fill,
                                      ),
                                      shape: OvalBorder(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 70,),
                              child: Row(
                                children: [
                                  SizedBox(height: 80.h),
                                 Text(
                                      'Don\'t have an account?',
                                      style: TextStyle(
                                        color: Color(0xFF2196F3),
                                        fontSize: 16.sp,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),

                                  // SizedBox(
                                  //
                                  // ),
                                     GestureDetector(
                                       onTap: (){
                                         Navigator.pushNamed(
                                           context,
                                           Register.id,
                                         );
                                       },
                                       child: Text(
                                        '   Register Now',
                                        style: TextStyle(
                                          color: Color(0xFF0B60A4),
                                          fontSize: 16.sp,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                    ),
                                     ),

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
      ],
    ),
    ),
      );
  }

  Future<void> loginUser() async {
    UserCredential user = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email!,
      password: password!,
    );
  }
}