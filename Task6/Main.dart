import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RecipeScreen(),
    );
  }
}

class RecipeScreen extends StatelessWidget {
  final String imageUrl =
      "https://i.pinimg.com/736x/72/d9/af/72d9af964d384fc2a16fd087c1062a7c.jpg";

  const RecipeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back, color: Colors.white, size: 28),
                  Row(
                    children: [
                      Icon(Icons.ios_share, color: Colors.white, size: 28),
                      const SizedBox(width: 15),
                      Icon(Icons.bookmark_border, color: Colors.white, size: 28),
                    ],
                  ),
                ],
              ),
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.35,
            minChildSize: 0.35,
            maxChildSize: 0.85,
            builder: (context, scrollController) {
              return Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          width: 50,
                          height: 5,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Chicken Avocado Salad",
                              style: GoogleFonts.poppins(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.orange, size: 20),
                              const SizedBox(width: 4),
                              Text(
                                "4.5",
                                style: GoogleFonts.poppins(fontSize: 16),
                              ),
                            ],
                          )
                        ],
                      ),
                      Text(
                        "By June Xie",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildInfoCard(Icons.timer, "3h 30min"),
                          buildInfoCard(Icons.people, "Serves 4"),
                          buildInfoCard(Icons.emoji_emotions, "Intermediate"),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20, bottom: 10),
                        child: Row(
                          children: [
                            const SizedBox(width: 8),
                            Text(
                              "Ingredients",
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(Icons.shopping_cart, color: Colors.blue, size: 22),

                          ],
                        ),
                      ),

                      const SizedBox(height: 10),
                      Text(
                        "For Chicken Dashi",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      ingredientItem("8 Cups", "Low sodium chicken broth"),
                      ingredientItem("16", "Dried Shiitake mushrooms"),
                      ingredientItem("30 g", "Kombu (about 10” square piece)"),
                      ingredientItem("20 g", "Dried Bonito flakes"),
                      const SizedBox(height: 10),

                      Text(
                        "For Tare and Chashu",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      ingredientItem("1 1/4 Cups", "Low sodium soy sauce"),
                      ingredientItem("1 1/4 Cups", "Mirin"),
                      ingredientItem("1/2 Cup", "Sake"),
                      ingredientItem("1/2 Cup", "Water"),
                    ],
                  ),
                ),

              );
            },

          ),
        ],
      ),
    );
  }

  Widget buildInfoCard(IconData icon, String text) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Icon(icon, color: Colors.blue),
          const SizedBox(height: 5),
          Text(
            text,
            style: GoogleFonts.poppins(fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget ingredientItem(String amount, String name) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          SizedBox(
            width: 80,
            child: Text(
              amount,
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: Colors.black87,
              ),
            ),
          ),
          Expanded(
            child: Text(
              name,
              style: GoogleFonts.poppins(fontSize: 14, color: Colors.grey[700]),
            ),
          ),
        ],
      ),
    );
  }
}
