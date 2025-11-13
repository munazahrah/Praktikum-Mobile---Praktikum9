# Praktikum9

Project Modul 9 - StatefulWidget (Aplikasi Tasbih Digital)

📖 Deskripsi

Project ini adalah salah satu modul paling penting. Anda akan beralih dari StatelessWidget (widget yang statis/tidak bisa berubah) ke StatefulWidget (widget yang dinamis dan bisa berubah tampilannya).

Fokus utamanya adalah memahami bagaimana state (data) disimpan dan bagaimana UI diperbarui secara otomatis ketika state tersebut berubah menggunakan fungsi setState(). Sebagai studi kasus, Anda akan membuat aplikasi Tasbih Digital sederhana.

🎯 Tujuan Utama Project

Memahami Konsep: Mengerti perbedaan fundamental antara StatelessWidget dan StatefulWidget.

Manajemen State: Mampu membuat dan mengelola variabel state (data yang bisa berubah) di dalam class State.

Memperbarui UI: Menguasai penggunaan fungsi setState() untuk memberi tahu Flutter agar membangun ulang (rebuild) UI ketika data berubah.

Interaksi Pengguna: Membuat aplikasi yang merespons input pengguna (tekanan tombol) untuk mengubah state.

Integrasi Package: Belajar menambahkan dependency (package eksternal) dari pub.dev ke dalam proyek.

✅ Daftar Tugas (To-Do List)

Berikut adalah hal-hal yang harus Anda kerjakan untuk membuat aplikasi Tasbih Digital:

Buat Project Baru:

[ ] Buat "New Flutter Project" dengan nama tasbih_app.

Tambahkan Dependency (Penting!):

[ ] Buka file pubspec.yaml.

[ ] Tambahkan package simple_circular_progress_bar di bawah dependencies:.

[ ] Jalankan flutter pub get di terminal.

Buat StatefulWidget:

[ ] Di main.dart, ubah MyApp (atau buat widget baru) menjadi StatefulWidget. Ini akan membuat dua class: MyApp dan _MyAppState.

Definisikan Variabel State (di dalam _MyAppState):

[ ] Buat variabel untuk ValueNotifier (untuk mengontrol progress bar).

[ ] Buat variabel counter (tipe int) untuk menyimpan jumlah hitungan, inisialisasi ke 0.

Buat Method (Fungsi) (di dalam _MyAppState):

[ ] incrementCounter():

Panggil setState() agar Flutter tahu ada perubahan.

Di dalam setState(), tambahkan counter++.

Update nilai valueNotifier sesuai dengan counter (mungkin perlu modulasi, misal per 33).

[ ] resetCounter():

Panggil setState().

Di dalam setState(), set counter kembali ke 0.

Set valueNotifier kembali ke 0.

Susun Tampilan UI (di dalam build() _MyAppState):

[ ] Buat Scaffold dengan AppBar (judul: "Tasbih Digital").

[ ] Di dalam body, gunakan Center untuk menampung elemen-elemen.

[ ] Gunakan Column untuk menyusun elemen secara vertikal.

[ ] Tampilkan Text yang berisi nilai counter (ubah int ke String: $counter).

[ ] Bungkus SimpleCircularProgressBar dengan InkWell.

[ ] Atur onTap dari InkWell untuk memanggil incrementCounter().

[ ] Tambahkan FloatingActionButton (FAB) di Scaffold.

[ ] Atur onPressed dari FAB untuk memanggil resetCounter().
