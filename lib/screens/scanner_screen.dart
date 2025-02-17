import 'package:flutter/material.dart';
import 'package:medical_products_menu/screens/med_kops_screen.dart';
import 'package:medical_products_menu/screens/widgets/button.dart';

class ScanSuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.network(
              "https://images-platform.99static.com/Ex5w6tjoLwVUosXK48P8X2NAStE=/378x156:1623x1401/500x500/top/smart/99designs-contests-attachments/86/86100/attachment_86100869", // Replace with your actual background image
              fit: BoxFit.cover,
            ),
          ),

          // Dark Overlay for readability
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.6),
            ),
          ),

          // UI Components
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // MedKitPOS Logo
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Icon(Icons.add, color: Colors.black, size: 25,)),
                      SizedBox(width: 8),
                      Text(
                        "MedKitPOS",
                        style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  // Scan Successful Text
                  Text(
                    "Your Scan was Successful!",
                    style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8),
                  Text(
                    "We will automatically add the prescribed medication stated in the doctor’s prescription.",
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),

                  // QR Code with Confirmation
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Icon(Icons.qr_code, size: 120, color: Colors.black),
                        SizedBox(height: 10),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.check, color: Colors.white),
                          label: Text("Confirmed", style: TextStyle(color: Colors.white),),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),

                  // Result Section
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Your Waitlist Number", style: TextStyle(color: Colors.white70, fontSize: 14)),
                            Text("Your Name", style: TextStyle(color: Colors.white70, fontSize: 14)),
                          ],
                        ),
                        Divider(color: Colors.white54),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(children: [
                              Text('A1', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                              Text('#12190', style: TextStyle(color: Colors.white70),),
                            ],),
                            Text('Mahabub Ul Hasib', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),)
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 30),

                  // Action Buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Button(text: 'Scan Again',color: Colors.white,textcolor: Colors.black,),
                      GestureDetector(onTap : (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MedKPOSScreen()));
                      },child: Button(text: 'Continue',)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
