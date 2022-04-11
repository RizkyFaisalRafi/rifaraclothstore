import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rifaraclothstore/pages/homePage.dart';
import 'package:rifaraclothstore/product_list.dart';
import 'package:rifaraclothstore/variations_tile.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff030E22),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xff2C3545),
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: InkWell(
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  PageRouteBuilder(
                                      pageBuilder:
                                          (context, animation1, animation2) =>
                                              HomePage(),
                                      transitionDuration: Duration(seconds: 1)),
                                );
                              },
                              child: Image.asset(
                                  'assetsgambar/back-24px-white.png')),
                        ),
                      ),
                      SizedBox(
                        width: 46,
                      ),
                      Center(
                        child: Container(
                          child: Center(
                            child: Text(
                              'Detail',
                              style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                          width: 167,
                          height: 40,
                          decoration: BoxDecoration(color: Colors.transparent),
                        ),
                      ),
                      SizedBox(
                        width: 46,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color(0xff2C3545),
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Image.asset(
                                  'assetsgambar/checkout_item.png',
                                  width: 28,
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
            ),
            Image.asset(
              'assetsgambar/product_one.png',
              width: 375,
              height: 350,
            ),
            Center(
              child: Image.asset(
                'assetsgambar/dots.png',
                width: 14,
                height: 14,
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nike Air Force X',
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assetsgambar/star.png',
                        width: 14,
                        height: 14,
                      ),
                      Image.asset(
                        'assetsgambar/star.png',
                        width: 14,
                        height: 14,
                      ),
                      Image.asset(
                        'assetsgambar/star.png',
                        width: 14,
                        height: 14,
                      ),
                      Image.asset(
                        'assetsgambar/star.png',
                        width: 14,
                        height: 14,
                      ),
                      Image.asset(
                        'assetsgambar/star.png',
                        width: 14,
                        height: 14,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('16',
                          style: GoogleFonts.montserrat(
                            color: Color(0xffcfcfcf),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text(
                        'Rp1.650.000',
                        style: GoogleFonts.montserrat(
                          color: Color(0xffF8F7FD),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        'Rp2.650.000',
                        style: GoogleFonts.montserrat(
                            color: Color(0xffF8F7FD),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.lineThrough),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    'Choose Variations',
                    style: GoogleFonts.montserrat(
                      color: Color(0xffF8F7FD),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      VariationsStyle('36'),
                      VariationsStyleNoSide('37'),
                      VariationsStyleNoSide('38'),
                      VariationsStyleNoSide('39'),
                      VariationsStyleNoSide('40'),
                    ],
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Description',
                        style: GoogleFonts.montserrat(
                          color: Color(0xffF8F7FD),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'This shoes material is canvas press with foam\nmat, bring back your high school moment with\nthis shoes. Choose your size and just wait for it.',
                        style: GoogleFonts.montserrat(
                          color: Color(0xffF8F7FD),
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        'Related Products',
                        style: GoogleFonts.montserrat(
                          color: Color(0xffF8F7FD),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 24),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ProductList5(
                                'assetsgambar/product_one.png',
                                'Nike Air Force X',
                                'assetsgambar/star.png',
                                '17',
                                'Rp1.650.000'),
                            ProductList5(
                                'assetsgambar/product_one.png',
                                'Nike Air Force X',
                                'assetsgambar/star.png',
                                '17',
                                'Rp1.650.000'),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ProductList5(
                                'assetsgambar/product_one.png',
                                'Nike Air Force X',
                                'assetsgambar/star.png',
                                '17',
                                'Rp1.650.000'),
                            ProductList5(
                                'assetsgambar/product_one.png',
                                'Nike Air Force X',
                                'assetsgambar/star.png',
                                '17',
                                'Rp1.650.000'),
                          ],
                        ),
                        SizedBox(
                          height: 28,
                        ),
                        Text(
                          "You've reached the end",
                          style: GoogleFonts.montserrat(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: BottomNavigationBar(
          backgroundColor: Color(0xff030e22),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Text(
                'Rp1.650.000',
                style: GoogleFonts.montserrat(
                  color: Color(0xffF8F7FD),
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              label: '',
            ),

            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Image.asset(
                  'assetsgambar/add_to_cart-24px-white.png',
                  width: 34,
                  height: 32,
                ),
              ),
              label: '',
            ),


            BottomNavigationBarItem(
              icon: Container(
                width: 153,
                height: 47,
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Color(0xff6C5ECF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      )),
                  onPressed: () {},
                  child: Text(
                    'Checkout',
                    style: GoogleFonts.montserrat(
                      color: Color(0xffF8F7FD),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
