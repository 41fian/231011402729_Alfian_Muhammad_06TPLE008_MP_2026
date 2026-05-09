import 'package:flutter/material.dart';

void main() {
  runApp(const WorkshopApp());
}

class WorkshopApp extends StatelessWidget {
  const WorkshopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Workshop Portal - Alfian',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0F172A),
          primary: const Color(0xFF2563EB),
        ),
        scaffoldBackgroundColor: const Color(0xFFF8FAFC),
      ),
      home: const HalamanUtama(),
    );
  }
}

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // 1. Header Modern (Pinned)
          SliverAppBar(
            expandedHeight: 150.0,
            pinned: true,
            backgroundColor: const Color(0xFF0F172A),
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: const Text(
                'WORKSHOP INFORMATIKA',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  letterSpacing: 1.1,
                ),
              ),
              background: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF0F172A), Color(0xFF1E293B)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
            ),
          ),

          // 2. Identitas Mahasiswa (Greeting Section)
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Selamat Datang,',
                    style: TextStyle(fontSize: 16, color: Colors.blueGrey),
                  ),
                  Text(
                    'Alfian Muhammad',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey.shade900,
                      height: 1.1,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      color: const Color(0xFF2563EB).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'NIM: 231011402729',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2563EB),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // 3. Judul Kategori 1
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
              child: Text(
                "Workshop Minggu ini",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ),

          // 4. Penempatan Kartu Utama (SliverList)
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                const KartuWorkshopUtama(
                  judul: 'Full-Stack Development with Flutter & Node.js',
                  tanggal: 'Senin, 18 Mei 2026',
                  lokasi: 'Lab Informatika Terpadu',
                  kuota: '12 Kursi Tersisa',
                  isPenuh: false,
                  warnaAksen: Color(0xFF2563EB),
                ),
                const KartuWorkshopUtama(
                  judul: 'Cyber Security: Web Penetration Testing',
                  tanggal: 'Selasa, 19 Mei 2026',
                  lokasi: 'Ruang Riset Siber',
                  kuota: 'Kuota Penuh',
                  isPenuh: true,
                  warnaAksen: Colors.red,
                ),
              ]),
            ),
          ),

          // 5. Judul Kategori 2
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
              child: Text(
                "Workshop Lainnya",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ),

          // 6. Penempatan Kartu Utama Lainnya
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                const KartuWorkshopUtama(
                  judul: 'Data Science & Machine Learning Dasar',
                  tanggal: 'Rabu, 20 Mei 2026',
                  lokasi: 'Auditorium Lantai 4',
                  kuota: '25 Kursi Tersisa',
                  isPenuh: false,
                  warnaAksen: Colors.teal,
                ),
                const KartuWorkshopUtama(
                  judul: 'UI/UX Design Masterclass',
                  tanggal: 'Kamis, 21 Mei 2026',
                  lokasi: 'Studio Kreatif',
                  kuota: '5 Kursi Tersisa',
                  isPenuh: false,
                  warnaAksen: Colors.orange,
                ),
                const SizedBox(height: 40),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

// Widget Kartu Utama (Mempertahankan struktur analisis UI sebelumnya)
class KartuWorkshopUtama extends StatelessWidget {
  final String judul;
  final String tanggal;
  final String lokasi;
  final String kuota;
  final bool isPenuh;
  final Color warnaAksen;

  const KartuWorkshopUtama({
    super.key,
    required this.judul,
    required this.tanggal,
    required this.lokasi,
    required this.kuota,
    required this.isPenuh,
    required this.warnaAksen,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // 🛠️ ANALISIS: Indikator Warna Samping (Row + Container)
              Container(
                width: 6,
                color: isPenuh ? Colors.grey.shade400 : warnaAksen,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        judul,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1E293B),
                          height: 1.3,
                        ),
                      ),
                      const SizedBox(height: 12),
                      // Info Row (Ikon + Teks)
                      Row(
                        children: [
                          Icon(Icons.calendar_today_rounded, size: 14, color: Colors.blueGrey.shade400),
                          const SizedBox(width: 8),
                          Text(tanggal, style: const TextStyle(fontSize: 12, color: Colors.blueGrey)),
                        ],
                      ),
                      const SizedBox(height: 6),
                      Row(
                        children: [
                          Icon(Icons.location_on_rounded, size: 14, color: Colors.blueGrey.shade400),
                          const SizedBox(width: 8),
                          Text(lokasi, style: const TextStyle(fontSize: 12, color: Colors.blueGrey)),
                        ],
                      ),
                      const SizedBox(height: 18),
                      // Status & Tombol
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            kuota,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: isPenuh ? Colors.red.shade600 : Colors.green.shade600,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: isPenuh ? null : () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: warnaAksen,
                              foregroundColor: Colors.white,
                              disabledBackgroundColor: Colors.grey.shade200,
                              elevation: 0,
                              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text('Daftar', style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}