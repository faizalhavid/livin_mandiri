import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:livin_splash/themed.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.09),
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.headset_mic_outlined,
                      color: primaryBlue,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              height: 500,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/livin_banner.jpg'),
                    fit: BoxFit.contain),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 280,
              child: Column(
                children: [
                  Container(
                    height: 60,
                    width: 280,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        gradient: gradientLogin),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.fingerprint,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Login',
                              style: GoogleFonts.roboto(
                                fontSize: 12,
                              ),
                            )
                          ],
                        )),
                  ),
                  Row(
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.money))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
