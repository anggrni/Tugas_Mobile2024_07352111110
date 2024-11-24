import 'package:flutter/material.dart';
import 'package:praktikum/screns/cart_screens.dart';
import 'package:praktikum/screns/splash_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grab',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.grey[200],
      ),
      home: const SplashScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  title: const Text(
    'GRAB', // Teks pengganti logo
    style: TextStyle(
      fontSize: 20, // Ukuran font
      fontWeight: FontWeight.bold, // Tebal
      color: Color(0xFF00AA13), // Warna hijau khas Grab
    ),
  ),
  centerTitle: true, // Memposisikan teks di tengah
  backgroundColor: Colors.white, // Latar belakang AppBar putih (opsional)
  actions: [
    IconButton(icon: const Icon(Icons.notifications), onPressed: () {}),
    IconButton(
      icon: const Icon(Icons.shopping_cart),
      onPressed: () {
        // Navigasi ke halaman keranjang
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  const CartScreen()), // Ganti CartScreen dengan halaman yang sesuai
        );
      },
    ),
  ],
),

      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search, color: Color(0xFF00AA13)),
                  hintText: 'Cari Makanan',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    //borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),

            // Banner
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                decoration: BoxDecoration(
                  //borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 26, 129, 81),
                  gradient: LinearGradient(
                    colors: [
                      const Color.fromARGB(255, 0, 170, 19), // Hijau Grab (dominasi)
                      Colors.yellow, // Biru tua untuk memberikan kontras yang kuat

                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Hemat tanpa batas, kapan saja, di mana saja!",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              "Diskon s.d 30%",
                              style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 255, 255, 0)),

                            ),
                            const SizedBox(height: 8),
                            const Text(
                              "Penawaran Terbatas. Pesan Sekarang!",
                              style: TextStyle(color: Colors.white),
                            ),
                            const SizedBox(height: 12),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                foregroundColor:
                                    const Color.fromARGB(255, 248, 248, 247),
                                backgroundColor:
                                    const Color.fromARGB(255, 223, 201, 6),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: const Text("Pesan Sekarang"),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    ClipRRect(
                      //borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/McDonalds.jpeg",
                        width: 250,
                        height: 250,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Sedang tayang
            const SectionHeader(title: "Rekomendasi Makanan",),

            // Film List
            SizedBox(
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  final items = [
                    {
                      "image": "assets/dimsum.jpg",
                      "title": "Dimsum ",
                      "genre": "Kel. Gamalama",
                      "rating": " 4.0"
                    },
                    {
                      "image": "assets/McDonalds.jpeg",
                      "title": "McDonald's",
                      "genre": "Lt 1. Multimart",
                      "rating": " 3.6"
                    },
                    {
                      "image": "assets/mie-aceh.jpg",
                      "title": "Mie Aceh",
                      "genre": "Kel Gamalama",
                      "rating": " 5.0"
                    },
                    {
                      "image": "assets/nasi-goreng.jpg",
                      "title": "Nasi Goreng",
                      "genre": "Kel. Kulaba",
                      "rating": " 5.0"
                    },
                  ];

                  final item = items[index];

                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal:
                            16.0), // Menambah padding kiri-kanan agar tidak mepet
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              //borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  blurRadius: 4,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(0),
                              child: Image.asset(
                                item["image"]!,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            item["title"]!,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                item["genre"]!,
                                style: const TextStyle(color: Colors.grey),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(Icons.star,
                                      color: Colors.amber, size: 16),
                                  Text(item["rating"]!),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 10),

            // Akan Tayang
            const SectionHeader(title: "Makanan"),

            // Akan tayang List
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                if (index > 0) return null;

                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "assets/dimsum.jpg",
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Dimsum Gamalama",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Alamat : Kel. Gamalama",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  "Rp.30,000",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.star,
                                        color: Colors.amber, size: 16),
                                    Text(" 4.0"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.green,
                            ),
                            child: const Text(" Lihat "),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                if (index > 0) return null;

                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "assets/mie-aceh.jpg",
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Mie Aceh Ma Iya",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Alamat : Kel.Kulaba, Jln. Jere",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  "Rp. 20.0000",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.star,
                                        color: Colors.amber, size: 16),
                                    Text("5.0"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.green,
                            ),
                            child: const Text(" Lihat "),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                if (index > 0) return null;

                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "assets/McDonals.jpeg",
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "McDonals",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Alamat : Kel. Gamalama Lt. 1 Jatiland Mall",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  "Rp. 50.000",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.star,
                                        color: Colors.amber, size: 16),
                                    Text("4.8"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.green,
                            ),
                            child: const Text(" Lihat "),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                if (index > 0) return null;

                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "assets/mie-aceh.jpg",
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Mie Ayama Kalumata",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Alamat : Kel. Kalumata",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  "Rp. 22.000",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.star,
                                        color: Colors.amber, size: 16),
                                    Text("4.5"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.green,
                            ),
                            child: const Text(" Lihat "),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;
  const SectionHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF00AA13)),
          ),
          TextButton(
            onPressed: () {},
            child:
                const Text("View All", style: TextStyle(color: Color(0xFF00AA13))),
          ),
        ],
      ),
    );
  }
}
