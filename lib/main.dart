import 'package:flutter/material.dart';
import 'package:tugas6/homePage.dart';

void main() {
  runApp(const MyApp());
}

final List<Map<String, String>> dataWisata = [
  {
    'nama' : 'Raja Ampat',
    'lokasi' : 'Papua Barat Daya',
    'gambar' : 'https://images.unsplash.com/photo-1703769605297-cc74106244d9?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
    'deskripsi' : 'Raja Ampat merupakan destinasi wisata bahari yang terkenal dengan keindahan pulau-pulau karst, air laut yang jernih, terumbu karang, dan keanekaragaman biota laut. Tempat ini menjadi salah satu surga bagi pecinta snorkeling dan diving.'
  },
  {
    'nama' : 'Menara Eiffel',
    'lokasi' : 'Paris',
    'gambar' : 'https://plus.unsplash.com/premium_photo-1719581957038-0121108b9455?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
    'deskripsi' : 'Menara Eiffel adalah ikon kota Paris yang selesai dibangun pada tahun 1889. Menara besi setinggi sekitar 330 meter ini menawarkan pemandangan kota dari dek observasinya dan menjadi salah satu landmark paling banyak dikunjungi di dunia.'
  },
  {
    'nama' : 'Piramida',
    'lokasi' : 'Macir',
    'gambar' : 'https://images.unsplash.com/photo-1503177119275-0aa32b3a9368?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
    'deskripsi' : 'Piramida adalah monumen megah peninggalan peradaban Mesir Kuno yang berfungsi sebagai makam para firaun. Piramida Agung Giza merupakan salah satu dari Tujuh Keajaiban Dunia Kuno yang masih berdiri hingga saat ini.'
  },
  {
    'nama' : 'Candi Perambanan',
    'lokasi' : 'Jawa Tengah',
    'gambar' : 'https://images.unsplash.com/photo-1578469550956-0e16b69c6a3d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
    'deskripsi' : 'Candi ini adalah kompleks candi Hindu terbesar di Indonesia yang dibangun pada abad ke-9. Terkenal dengan arsitektur yang menjulang tinggi dan relief kisah Ramayana, candi ini juga termasuk Situs Warisan Dunia UNESCO.'
  },
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Katalog Wisata',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}