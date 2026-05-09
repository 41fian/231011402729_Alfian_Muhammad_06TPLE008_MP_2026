# DESAIN HALAMAN UTAMA APLIKASI WORKSHOP KAMPUS

Workshop Informatics Portal – Alfian Muhammad

Profil Mahasiswa
Nama          : Alfian Muhammad
NIM  	        : 231011402729
Program Studi : Teknik Informatika
Mata Kuliah   : Mobile Programing

1. Sketsa Layout
Aplikasi ini dibuat menggunakan konsep Sliver-based Layout supaya tampilan terasa lebih dinamis saat di-scroll. Susunan layout-nya seperti berikut:

SliverAppBar (Header)
Bagian paling atas aplikasi yang dibuat fleksibel dengan warna gradasi gelap. Header ini tetap muncul saat halaman di-scroll sehingga navigasi terasa lebih nyaman.
SliverToBoxAdapter (Greeting Section)
Digunakan untuk menampilkan sapaan “Halo, Alfian Muhammad”. Bagian ini sengaja dipisahkan dari list utama supaya jadi fokus pertama ketika aplikasi dibuka.
SliverList (Content List)
Berisi daftar kartu workshop utama.
Di dalam kartu:
Widget Row digunakan untuk memisahkan indikator status di sebelah kiri dan isi informasi di sebelah kanan.
Widget Column dipakai untuk menyusun judul workshop, informasi tanggal dan lokasi, serta tombol aksi secara vertikal agar tampil lebih rapi.
2. Alasan Pemilihan Widget

CustomScrollView
Dipilih karena bisa menggabungkan beberapa jenis efek scroll dalam satu halaman, misalnya AppBar yang mengecil saat di-scroll dan daftar konten yang tetap smooth. Hasilnya tampilan aplikasi jadi terasa lebih modern.

IntrinsicHeight
Digunakan supaya garis indikator warna di sisi kiri kartu otomatis menyesuaikan tinggi konten di sebelah kanan, walaupun judul workshop panjang.

ClipRRect
Dipakai agar sudut kartu yang melengkung tetap terlihat rapi dan warna indikator di sisi kiri tidak keluar dari area border radius.

Expanded
Digunakan pada bagian teks supaya judul workshop yang panjang tidak menyebabkan tampilan overflow, tetapi otomatis turun ke baris berikutnya dengan rapi.

3. Dua Kesalahan UI yang Ingin Dihindari
Ketidakjelasan Status Event
Kadang pengguna bingung apakah workshop masih bisa diikuti atau sudah penuh. Untuk menghindari hal itu, saya menggunakan dua indikator sekaligus, yaitu perubahan warna menjadi abu-abu dan tombol daftar yang otomatis nonaktif.
Tampilan Terlalu Penuh
Saya menghindari tampilan yang terlalu ramai dengan menggunakan warna latar yang netral dan memberikan jarak antar kartu supaya pengguna lebih nyaman saat membaca daftar workshop.
4. Penjelasan Kenyamanan Tampilan (UX)

Fokus utama desain ini adalah membuat informasi mudah dibaca dan cepat dipahami tanpa harus membaca semuanya secara detail.

Hierarki Tulisan
Judul workshop dibuat lebih besar dan tebal supaya langsung menarik perhatian. Sedangkan informasi tambahan seperti tanggal dan lokasi dibuat lebih kecil dan warnanya lebih lembut agar tidak mengganggu fokus utama.
Penggunaan Ikon
Ikon kalender dan lokasi membantu pengguna mengenali informasi lebih cepat dibanding harus membaca teks panjang.
Pemanfaatan Ruang Kosong
Padding yang cukup besar di dalam kartu membuat isi tampilan terasa lega dan tidak berhimpitan, sehingga lebih nyaman dilihat.
Kontras Warna
Teks utama menggunakan warna gelap di atas latar putih agar tetap jelas terbaca meskipun tingkat kecerahan layar rendah.
Preview Aplikasi

Tampilan aplikasi dapat dilihat pada gambar preview_alfian.png
