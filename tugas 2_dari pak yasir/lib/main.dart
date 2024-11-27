import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            // Menambahkan logo daun di sebelah kiri teks
            Image.asset(
              'assets/images/leaf.png', // Path ke gambar logo daun
              height: 24,                 // Ukuran tinggi logo daun
              width: 24,                  // Ukuran lebar logo daun
            ),
            SizedBox(width: 8),            // Jarak antara logo dan teks
            Text(
              'APP',
              style: TextStyle(
                fontWeight: FontWeight.bold, // Membuat teks menjadi bold
                color: Colors.black,         // Warna teks hitam
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_outlined, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                style: TextStyle(fontSize: 18, color: Colors.black),
                children: [
                  TextSpan(
                  text: 'Hello, ',
                  style: TextStyle(fontWeight: FontWeight.normal),
                ),
                TextSpan(
                  text: 'Sara Rose',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
          ],
       ),
     ),
     
    SizedBox(height: 8), // Jarak antar widget
    Text(
      'How are you feeling today?',
      style: TextStyle(fontSize: 16, color: Colors.grey[600]),
    ),
  ],
),

            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MoodButton(icon: Icons.favorite, label: 'Love'),
                MoodButton(icon: Icons.sunny, label: 'Cool'),
                MoodButton(icon: Icons.emoji_emotions, label: 'Happy'),
                MoodButton(icon: Icons.sentiment_dissatisfied, label: 'Sad'),
              ],
            ),
            SizedBox(height: 20),

            // Feature Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Feature',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

              TextButton(
                 onPressed: () {
                  // Tambahkan aksi saat tombol ditekan
                  },
                style: TextButton.styleFrom(
                padding: EdgeInsets.zero, // Menghilangkan padding bawaan
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                    'See more',
                      style: TextStyle(
                      color: Colors.green, // Warna teks hijau
                      fontWeight: FontWeight.bold, // Opsional: Membuat teks bold
                      ),
                    ),
                    Icon(
                      Icons.chevron_right, // Ikon panah ke kanan
                      color: Colors.green, // Warna ikon sama dengan teks
                      size: 16,            // Sesuaikan ukuran ikon
                    ),
                  ],
                ),
              ),
            ],
          ),
            
          Container(
  height: 150,
  padding: const EdgeInsets.all(12),
  decoration: BoxDecoration(
    color: Colors.green[50],
    borderRadius: BorderRadius.circular(12),
  ),
  child: Row(
    children: [
      // Sisi kiri: Ikon
      Expanded(
        flex: 1, // Proporsi 1 untuk sisi kiri
        child: Center(
          child: Icon(Icons.play_circle_fill, size: 36, color: Colors.green),
        ),
      ),

      // Teks di tengah
      Expanded(
        flex: 2, // Proporsi lebih besar untuk teks di tengah
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Positive vibes',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            Text(
              'Boost your mood with positive vibes',
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),
          ],
        ),
      ),

      // Sisi kanan: Gambar
      Expanded(
        flex: 1, // Proporsi 1 untuk sisi kanan
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8), // Opsional: Efek radius pada gambar
          child: Image.asset(
            'assets/images/rb.png', // Path gambar
            height: double.infinity, // Gambar memenuhi tinggi kotak
            width: double.infinity, // Gambar memenuhi lebar area
            fit: BoxFit.cover, // Menyesuaikan gambar agar proporsional
          ),
        ),
      ),
    ],
  ),
),



            // Exercise Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Exercise',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                 onPressed: () {
                  // Tambahkan aksi saat tombol ditekan
                  },
                style: TextButton.styleFrom(
                padding: EdgeInsets.zero, // Menghilangkan padding bawaan
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                    'See more',
                      style: TextStyle(
                      color: Colors.green, // Warna teks hijau
                      fontWeight: FontWeight.bold, // Opsional: Membuat teks bold
                      ),
                    ),
                    Icon(
                      Icons.chevron_right, // Ikon panah ke kanan
                      color: Colors.green, // Warna ikon sama dengan teks
                      size: 16,            // Sesuaikan ukuran ikon
                    ),
                  ],
                ),
              ),
              ],
            ),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                ExerciseCard(label: 'Relaxation', color: Colors.purple[50]),
                ExerciseCard(label: 'Meditation', color: Colors.pink[50]),
                ExerciseCard(label: 'Breathing', color: Colors.orange[50]),
                ExerciseCard(label: 'Yoga', color: Colors.blue[50]),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
    );
  }
}

// Mood Button Widget
class MoodButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const MoodButton({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.green[100],
          child: Icon(icon, size: 30, color: Colors.green),
        ),
        SizedBox(height: 8),
        Text(label, style: TextStyle(fontSize: 14)),
      ],
    );
  }
}

// Exercise Card Widget
class ExerciseCard extends StatelessWidget {
  final String label;
  final Color? color;

  const ExerciseCard({required this.label, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          label,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
