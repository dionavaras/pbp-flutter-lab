# README.md Tugas 7 PBP

## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
Stateless Widget dapat dibilang sebagai widget yang tidak dapat dirubah atau tidak akan pernah berubah. Tampilan dan propertinya tetap tidak berubah sepanjang masa pakai widget. Dengan kata sederhana, widget Stateless tidak dapat mengubah statusnya selama runtime aplikasi, yang berarti widget tidak dapat digambar ulang saat aplikasi sedang beraksi.

Stateful Widget merupakan widget yang dinamis atau dapat berubah. Stateful widget dapat mengupdate tampilan, merubah warna, menambah jumlah baris dll. Itu dapat mengubah penampilannya sebagai respons terhadap peristiwa yang dipicu oleh interaksi pengguna atau saat menerima data.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
<li> MyApp : Untuk membuat screen layout
<li> MyHomePage : Untuk membuat homepage aplikasi
<li> Material App : core component flutter
<li> Scaffold : digunakan untuk mengimplementasikan struktur tata letak visual desain material dasar
<li> AppBar : menyediakan struktur visual dan elemen interaktif yang akrab bagi pengguna
<li> Text : The Text widget displays a string of text with single style
<li> Center : menyelaraskan widget anaknya ke tengah ruang yang tersedia di layar
<li> Column : mengatur tata letak dalam sebuah aplikasi flutter scr vertikal
<li> Row : mengatur tata letak dalam sebuah aplikasi flutter scr horizontal
<li> FloatingActionButton : tombol ikon melingkar yang melayang di atas konten untuk mempromosikan tindakan utama dalam aplikasi

## Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
State hanyalah informasi dari StatefulWidget. State Object ini melacak variabel dan fungsi yang kita definisikan di dalam StatefulWidget. Kita memberi tahu Objek Status ini untuk memperbarui UI layar menggunakan fungsi yang disebut setState(). Memanggil setState hanya ketika kami ingin perubahan dalam variabel tercermin pada UI layar. setState ada di dalam fungsi onPressed setelah variabel hasSubmitted telah diperbarui. Variabel yang terdampak dr code saya adalah _number.

## Jelaskan perbedaan antara const dengan final.
Final:
Variabel dengan kata kunci final akan diinisialisasi pada saat runtime dan hanya dapat ditetapkan untuk satu kali.
Untuk Flutter spesifik, saat status diperbarui, semua yang ada di metode build akan diinisialisasi lagi. Ini termasuk semua variabel dengan final.
Gunakan final ketika tidak tahu berapa nilainya pada waktu kompilasi. Misalnya, saat perlu mendapatkan data dari API, ini terjadi saat menjalankan kode.

Const
Variabel dengan kata kunci const diinisialisasi pada waktu kompilasi dan sudah ditetapkan saat runtime.
Tidak dapat mendefinisikan const di dalam class.
Untuk Flutter khusus, semua yang ada di metode build tidak akan diinisialisasi lagi saat status diperbarui.
const tidak dapat diubah selama runtime.
Gunakan const ketika yakin bahwa suatu nilai tidak akan berubah saat menjalankan kode Anda. Misalnya, ketika menyatakan kalimat yang selalu tetap sama.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Menjalankan command flutter create counter_7
2. Membuat fungsi untuk menambah dan mengurangi angka
```void _incrementCounter() {
    setState(() {
      _number++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_number > 0) {
        _number--;
      }
    });
  }
```
3. Menambahkan text genap dan ganjil dan mengubah warnanya
4. Menambahkan floatingActionButton
  
# README.md Tugas 8 PBP

## Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement
Navigator.pushReplacement : Mengganti rute navigator saat ini dengan mendorong rute yang diberikan dan kemudian membuang rute sebelumnya setelah rute baru selesai dianimasikan.
Navigator.push : untuk menavigasi ke halaman yang lebih baru

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya
ListTile: Membentuk sebuah list dan terdapat juga widget widget didalamnya
DropDownButton: memungkinkan pengguna memilih dari sejumlah item
Card: ruang hambar atau panel dengan sudut bulat dan sedikit elevasi di sisi bawah untuk menampilkan informasi
Drawer: untuk menyediakan akses ke berbagai tujuan dan fungsi yang disediakan dalam aplikasi Anda
TextFormField: memungkinkan pengguna mengetik teks ke dalam aplikasi
DatePicker: untuk memilih tanggal
TextStyle: untuk styling text
Container: untuk menampung beberapa komponen
TextButton: display label

## Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).
onPressed, onChanged, onSaved, onTap

## Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter
Navigator pada Flutter menggunakan implementasi stack. Navigator menyediakan metode untuk mengubah tumpukan dengan push to stack atau dengan keluar dari tumpukan. Metode Navigator.push adalah untuk menavigasi ke halaman yang lebih baru dan Navigator.pop untuk kembali dari halaman saat ini.

##  Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
Membuat drawer, kemudian menambahkan tiga tombol navigasi. Membuat file untuk form dan data budget. Pada drawer.dart mengarahkan masing2 file dart ke tombol yang sesuai. Pada form.dart membuat input untuk judul, nominal, date, dan jenis transaksi. Pada data budget.dart membuat card yang berisikan informasi dari form.dart yang telah disimpan. 
  
