import 'package:flutter/material.dart';
import 'package:medical_products_menu/main.dart';
import 'package:medical_products_menu/screens/widgets/button.dart';

import '../models/medicine.dart';
import 'widgets/category_chip.dart';
import 'widgets/medinice_card.dart';

class MedKPOSScreen extends StatelessWidget {

  List<Medicine> medicines = [
    Medicine(
      name: "Paracetamol",
      price: "\$3.75",
      imageUrl: "https://images-platform.99static.com/Ex5w6tjoLwVUosXK48P8X2NAStE=/378x156:1623x1401/500x500/top/smart/99designs-contests-attachments/86/86100/attachment_86100869",
      stock: 8,
    ),
    Medicine(
      name: "Insto Cool",
      price: "\$1.25",
      imageUrl: "https://images.tokopedia.net/img/cache/700/VqbcmM/2022/7/14/94136441-2709-4416-b427-7db3c1605468.jpg",
      stock: 6,
    ),
    Medicine(
      name: "Aspirin",
      price: "\$2.50",
      imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2g-hCYzCQwMdEpqisGhBuo_2zZrOV_xFFmA&s",
      stock: 10,
    ),
    Medicine(
      name: "Ibuprofen",
      price: "\$5.00",
      imageUrl: "https://i5.walmartimages.com/seo/Equate-Ibuprofen-Mini-Softgel-Capsules-200-mg-160-Count_d2498da5-b4b9-4363-b143-0c6d24ff1286.9e764a0673ce90582406c072c0a0861b.jpeg",
      stock: 4,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Container(
                height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Color(0xff10a76f),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Icon(Icons.add, color: Colors.white, size: 30,)),
            ),
            Text("MedKPOS"),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.dashboard_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notifications_none_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          spacing: 10,
          children: [
            // intro box
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade300, )
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Your wallet Number'),
                            Row(children: [
                              Text('A1', style: TextStyle(fontWeight: FontWeight.bold),),
                              Text('#12190'),
                            ],)
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffdcfee5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.document_scanner_rounded, color:  Color(0xff46aa79),),
                                Text('Scan Again', style: TextStyle(color: Color(0xff46aa79)),)
                              ],),
                          ),
                        )
                      ],),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Your Name'),
                            Row(children: [
                              Text('Mahabub Ul Hasib ', style: TextStyle(fontWeight: FontWeight.bold),),
                            ],)
                          ],
                        ),
                        Row(children: [
                          Text('3', style: TextStyle(fontWeight: FontWeight.bold, color:  Color(0xff46aa79)),),
                          Text(' Items', style: TextStyle(fontWeight: FontWeight.bold),),
                        ],)
                      ],),
                  ),
                ],
              ),
            ),
            // Search Bar
            Container(
              decoration: BoxDecoration(
                color: Color(0xFFF4F5FE), // Background color
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search medicine...",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none, // Removes default border
                  ),
                  filled: true,
                  fillColor: Colors.transparent, // Ensures the Container's color is visible
                ),
              ),
            ),

            SizedBox(height: 10),

            // Category Filters
            SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryChip(label: "All", isSelected: true),
                  CategoryChip(label: "Tablet"),
                  CategoryChip(label: "Capsule"),
                  CategoryChip(label: "Syrup"),
                ],
              ),
            ),
            SizedBox(height: 10),

            // Medicine List
            Expanded(
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                ),
                itemBuilder: (context, index) {
                  return MedicineCard(medicine: medicines[index],);
                },
              ),
            ),

            // Bottom Cart Summary
            Container(
              padding: EdgeInsets.all(16),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("You've Added"),
                      Row(children: [
                        Text('3', style: TextStyle(fontWeight: FontWeight.bold, color:  Color(0xff46aa79)),),
                        Text(' Items', style: TextStyle(fontWeight: FontWeight.bold),),
                        Icon(Icons.arrow_drop_down_outlined)
                      ],)
                    ],
                  ),
                  Button(color: Color(0xff10a76f), text: 'Purchase \$12.25')
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}

