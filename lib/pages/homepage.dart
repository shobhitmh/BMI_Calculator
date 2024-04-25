import 'package:bmical_adv/pages/bmical.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    opacity: 1,
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://cdn.photoroom.com/v1/assets-cached.jpg?path=backgrounds_v3/black/Photoroom_black_background_extremely_fine_texture_only_black_co_b1c41896-a1df-4f85-b9e8-f9da76bd9ba9.jpg'))),
          )),
          Positioned(
              bottom: 0,
              child: Container(
                height: h / 2.5,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text('BMI Calculator',
                              style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontWeight: FontWeight.w900)))
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 10),
                          height: 140,
                          width: 350,
                          child: Text(
                              style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                              'Body Mass Index (BMI) is a person’s weight in kilograms divided by the square of height in meters. A high BMI can indicate high body fatness. BMI screens for weight categories that may lead to health problems, but it does not diagnose the body fatness or health of an individual.'),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, top: 10),
                      child: Row(
                        children: [
                          ElevatedButton(
                              style: ButtonStyle(
                                  overlayColor:
                                      MaterialStateProperty.all(Colors.grey)),
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return bmical();
                                }));
                              },
                              child: Text(
                                'Calculate now....',
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
