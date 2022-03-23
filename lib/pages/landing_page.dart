import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  // ini untuk menunjukkan halaman yg aktif yg mana pas halamaan dibuka pertama
int selectedIndex = 0;


  @override
  Widget build(BuildContext context) {
  // index untuk menyimpan halaman mana yang sudah aktif
    Widget navItem({String? title, int? index}){
      return InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index!;
          });
        },
        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              title!,
                              style: GoogleFonts.poppins(
                                fontSize:18,
                                color:Color(
                                  0xff1D1E3C),
                                  
                                  // indexnya adalah selectedindex, maka akan menampilkan fontweight yg medium w500, tp kalo ngga, menampilkan fontweight yg light w300
                                  fontWeight: 
                                  index == selectedIndex ?  FontWeight.w500 : FontWeight.w300,
                                  ),
                                ),
                                Container(
                                width: 66,
                                height:2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  // ini buat garis di bawah tulisan. indexnya adalah selectedindex, maka akan menampilkan warna FR998D, tp kalo ngga, menampilkan warna transparan
                                  
                                  color: index == 
                                  selectedIndex ? Color(0xffFE998D) : Colors.transparent,
                                ),
                              ),
                            ],
                          ),
      );

                        }


    return Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'background.png',
              // menyesuaikan lebar layar
              width: MediaQuery.of(context).size.width,
              // menyesuaikan tinggi layar
              height: MediaQuery.of(context).size.height,
              // fill menyesuaikan properti width dan height
              fit: BoxFit.fill,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 100,
                vertical: 30,
            ),
            child: Column(
              children: [

                // NOTE: NAVIGATION

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'logo.png',
                      width: 72,
                      height:40,
                    ),
                    Row(
                      children: [
                      navItem(
                      title: 'Guides',
                      index: 0,
                      ),
                        SizedBox(
                          width: 50,
                        ),
                        navItem(
                        title: 'Pricing',
                        index: 1,
                        ),
                         SizedBox(
                          width: 50,
                        ),
                       navItem(
                        title: 'Team',
                        index: 2,
                       ),
                         SizedBox(
                          width: 50,
                        ),
                      navItem(
                        title: 'Stories',
                        index: 3,
                      ),
                      ],
                    ),
                    Image.asset(
                      'button_account.png',
                      width: 163,
                      height:53,
                    ),
                  ],
                ),

              // NOTE: CONTENT
              SizedBox(
                height: 76,
              ),
              Image.asset('illustration.png',
              width: 550,   
              ),

              // NOTE: FOOTER
              SizedBox(
                height: 84,
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Image.asset('icon_scroll.png', width: 24,
            ),
            SizedBox(
              width: 13,           
                ),
                Text(
                  'Scroll to Learn More',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}