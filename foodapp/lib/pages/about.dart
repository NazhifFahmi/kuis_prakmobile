import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        titleTextStyle: TextStyle(color: Colors.white),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text('Tentang Aplikasi'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Image.asset(
                'assets/images/customerService.png',
                height: 150,
              ),
            ),
            Text(
              'Ini adalah Halaman About',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              '\nTemukan jawaban atas berbagai pertanyaan yang sering ditanyakan oleh pengguna mengenai penggunaan aplikasi ini. Dari proses pendaftaran, cara membeli barang, hingga pengaturan akun, semua jawaban ada di sini untuk mempermudah pengalaman Anda.',
            ),
            Text(
              '\nPelajari langkah demi langkah cara menggunakan fitur-fitur aplikasi kami. Panduan ini akan membantu Anda memahami bagaimana memaksimalkan penggunaan aplikasi, mulai dari mencari produk hingga menyelesaikan transaksi dengan mudah.',
            ),
            Text(
              '\nJika Anda membutuhkan bantuan lebih lanjut, tim dukungan kami siap membantu. Anda dapat menghubungi kami melalui email, telepon, atau live chat. Kami berkomitmen untuk memberikan solusi terbaik bagi setiap masalah atau pertanyaan yang Anda miliki.',
            ),
          ],
        ),
      ),
    );
  }
}
