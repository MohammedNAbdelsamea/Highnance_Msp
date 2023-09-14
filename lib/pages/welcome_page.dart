import 'package:auth/pages/register.dart';
import 'package:auth/pages/sign_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});
static String id='welcome';
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
      // Container(
      //   width: double.infinity, // Take the entire width of the screen
      //   height: double.infinity, // Take the entire height of the screen
      //   color: Color(0x88ECECEC),
      //   child: Stack(
      //     children: [
      //       Positioned(
      //         left: 0.05 * MediaQuery.of(context).size.width,
      //         top: 0.87 * MediaQuery.of(context).size.height,
      //         child: Container(
      //           width: 0.815 * MediaQuery.of(context).size.width,
      //           height: 0.07 * MediaQuery.of(context).size.height,
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               Container(
      //                 width: 0.45 * MediaQuery.of(context).size.width,
      //                 height: 0.07 * MediaQuery.of(context).size.height,
      //                 padding: EdgeInsets.all(10.0),
      //                 decoration: ShapeDecoration(
      //                   color: Colors.white,
      //                   shape: RoundedRectangleBorder(
      //                     borderRadius: BorderRadius.circular(14),
      //                   ),
      //                 ),
      //                 child: Center(
      //                   child: Text(
      //                     'Sign in',
      //                     style: TextStyle(
      //                       color: Color(0xFF0C61A4),
      //                       fontSize: 0.035 * MediaQuery.of(context).size.width,
      //                       fontFamily: 'Inter',
      //                       fontWeight: FontWeight.w400,
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //               Container(
      //                 width: 0.45 * MediaQuery.of(context).size.width,
      //                 height: 0.07 * MediaQuery.of(context).size.height,
      //                 padding: EdgeInsets.all(10.0),
      //                 decoration: ShapeDecoration(
      //                   color: Color(0xFF2196F3),
      //                   shape: RoundedRectangleBorder(
      //                     borderRadius: BorderRadius.circular(16),
      //                   ),
      //                 ),
      //                 child: Center(
      //                   child: Text(
      //                     'Register',
      //                     style: TextStyle(
      //                       color: Color(0xFFF5F5F5),
      //                       fontSize: 0.035 * MediaQuery.of(context).size.width,
      //                       fontFamily: 'Inter',
      //                       fontWeight: FontWeight.w400,
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //       Positioned(
      //         left: -0.45 * MediaQuery.of(context).size.width,
      //         top: -0.26 * MediaQuery.of(context).size.height,
      //         child: Transform(
      //           transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.39),
      //           child: FractionallySizedBox(
      //             widthFactor: 1.6,
      //             heightFactor: 1.2,
      //             child: Container(
      //               decoration: ShapeDecoration(
      //                 color: Color(0xFF2196F3),
      //                 shape: CircleBorder(),
      //               ),
      //             ),
      //           ),
      //         ),
      //       ),
      //       Positioned(
      //         left: 0.18 * MediaQuery.of(context).size.width,
      //         top: 0.56 * MediaQuery.of(context).size.height,
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.center,
      //           children: [
      //             Text(
      //               'Discover your',
      //               style: TextStyle(
      //                 color: Color(0xFF0C61A4),
      //                 fontSize: 0.045 * MediaQuery.of(context).size.width,
      //                 fontFamily: 'Inter',
      //                 fontWeight: FontWeight.w400,
      //               ),
      //             ),
      //             Text(
      //               'dream job here',
      //               style: TextStyle(
      //                 color: Color(0xFF0C61A4),
      //                 fontSize: 0.045 * MediaQuery.of(context).size.width,
      //                 fontFamily: 'Inter',
      //                 fontWeight: FontWeight.w400,
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //       Positioned(
      //         left: 0.16 * MediaQuery.of(context).size.width,
      //         top: 0.7 * MediaQuery.of(context).size.height,
      //         child: SizedBox(
      //           width: 0.35 * MediaQuery.of(context).size.width,
      //           child: Text(
      //             'Explore a wide range of the most exciting projects. Based on your desires, profit and dreams',
      //             style: TextStyle(
      //               color: Color(0xFF486CEA),
      //               fontSize: 0.02 * MediaQuery.of(context).size.width,
      //               fontFamily: 'Inter',
      //               fontWeight: FontWeight.w400,
      //             ),
      //           ),
      //         ),
      //       ),
      //       Positioned(
      //         left: 0.19 * MediaQuery.of(context).size.width,
      //         top: 0.3 * MediaQuery.of(context).size.height,
      //         child: Container(
      //           width: 0.245 * MediaQuery.of(context).size.width,
      //           height: 0.245 * MediaQuery.of(context).size.width,
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage('assets/images/partnership.png'),
      //               fit: BoxFit.fill,
      //             ),
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),

      Container(
        width: 430.w,
        height: 932.h,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(color: Color(0x88ECECEC)),
        child: Stack(
          children: [
            Positioned(
              left: 39.w,
              top: 812.h,
              child: Container(
                width: 349.w,
                height: 65.h,
                child: Stack(
                  children: [
                    Positioned(
                      left: 168.w,
                      top: 0.h,
                      child: Container(
                        width: 181.w,
                        height: 65.h,
                        padding: const EdgeInsets.all(10),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  SignIn.id,
                                );
                              },
                              child: Text(
                                'Sign in',
                                style: TextStyle(
                                  color: Color(0xFF0C61A4),
                                  fontSize: 24.sp,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0.w,
                      top: 0.h,
                      child: Container(
                        width: 181.w,
                        height: 65.h,
                        padding: const EdgeInsets.all(10),
                        decoration: ShapeDecoration(
                          color: Color(0xFF2196F3),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  Register.id,
                                );
                              },
                              child: Text(
                                'Register',
                                style: TextStyle(
                                  color: Color(0xFFF5F5F5),
                                  fontSize: 24.sp,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: -309.21.w,
              top: -239.h,
              child: Transform(
                transform: Matrix4.identity()..translate(0.0.h, 0.0.w)..rotateZ(0.39.h),
                child: Container(
                  width: 695.65.w,
                  height: 547.51.h,
                  decoration: ShapeDecoration(
                    color: Color(0xFF2196F3),
                    shape: OvalBorder(),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 99.w,
              top: 520.h,
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 217.w,
                      height: 41.h,
                      child: Text(
                        'Discover your \n ',
                        style: TextStyle(
                          color: Color(0xFF0C61A4),
                          fontSize: 32.sp,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Text(
                      'dream job here ',
                      style: TextStyle(
                        color: Color(0xFF0C61A4),
                        fontSize: 32.sp,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 76.w,
              top: 654.h,
              child: SizedBox(
                width: 312.w,
                height: 76.h,
                child: Text(
                  'Explore a wide range of the most                                     exciting projects. Based on your \ndesires, profit and dreams',
                  style: TextStyle(
                    color: Color(0xFF486CEA),
                    fontSize: 18.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 110.w,
              top: 273.h,
              child: Container(
                width: 220.w,
                height: 220.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/partnership.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}