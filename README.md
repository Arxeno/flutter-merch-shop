# inventory_merch_flutter

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

---

## TUGAS 7

### 1. Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?

Perbedaan utama antara stateless dengan stateful adalah widget stateless bersifat immutable, yang artinya elemen-elemen atau sifat-sifat dari widget tersebut tidak dapat diubah. Semisal terdapat widget button "Tekan aku" yang ketika ditekan maka teks button tersebut berubah menjadi "Aku ditekan!", maka widget button tersebut tidak dapat menggunakan kelas StatelessWidget. Agar perubahan teks tersebut dapat diwujudkan, maka kita harus menggunakan StatefulWidget. StatefulWidget adalah kebalikan dari StatelessWidget dimana elemen-elemen atau sifat-sifat yang ada di dalam widget tersebut bersifat mutable, yang artinya bersifat editable. Ketika suatu elemen atau sifat di widget tersebut berubah, maka aplikasi akan merender ulang widget tersebut sehingga hasil perubahan dapat terlihat.

### 2. Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.

Widget yang digunakan:

- MyApp
- MyHomePage
- InventoryCard

### 3. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)

1. Pertama, saya memisahkan widget-widget yang terbuat di menu.dart
2. Saya membuat kelas InventoryItem yang nantinya akan menyimpan data-data item
3. Saya membuat widget InventoryCard dengan komponen teks, icon, dan background color sesuai di kelas InventoryItem

## TUGAS 8

### 1. Jelaskan perbedaan antara `Navigator.push()` dan `Navigator.pushReplacement()`, disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!

Navigator.push() => Menambah halaman ke dalam stack sehingga halaman yang ditambah itu berada di posisi paling atas stack.
Contoh: `Navigator.push(context, MaterialPageRoute(builder: (context) => InventoryFormPage()));`

Navigator.pushReplacement() => Ibarat nya seperti Navigator.pop() lalu Navigator.push().
Contoh: `Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage()));`

### 2. Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!

- Container => Seperti container biasa yang dapat membungkus lebih dari satu widget dan menyediakan properti padding, margin, dan dekorasi.
- Row => Berfungsi untuk menyusun beberapa widget dalam bentuk horizontal/berbaris-baris
- Column => Berfungsi untuk menyusun beberapa widget dalam bentuk vertikal/berkolom-kolom
- ListView => Seperti Row atau Column namun dapat menjadi scrollable
- GridView => Menyusun dalam bentuk grid atau kotak-kotak
- Stack => memungkinkan widget ditumpuk satu di atas yang lain. Cocok untuk situasi di mana kita ingin menumpuk beberapa widget dan menyesuaikan posisi relatif mereka.
- Expanded dan Flexible => Digunakan untuk mengontrol seberapa banyak ruang yang diambil oleh widget anak dalam arah tertentu. Biasanya digunakan didalam Row atau Column.

### 3. Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!

Elemen input form yang saya gunakan dalam tugas flutter ini adalah TextFormField(). Alasan saya menggunakan TextFormField adalah karena saya ingin mendapatkan data user dalam bentuk string dan integer.

### 4. Bagaimana penerapan clean architecture pada aplikasi Flutter?

- Membuat folder `core/` didalam folder `lib/`
- Membuat pula folder `features/` yang isinya adalah folder-folder yang berisi fitur utama yang ada didalam aplikasi (seperti `book/`, `admin/`, `event/` dst.)
- Isi folder yang berisi fitur utama adalah seperti berikut:
  - `data/`
  - `presentation/`
    - `cubit/`
    - `pages/`
    - `widgets/`

### 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)

1. Memindahkan `menu.dart` folder `screens`
2. Menjadikan komponen InventoryCard menjadi ke dalam file terpisah (`inventory_card.dart`)
3. Membuat drawer
4. Membuat komponen drawer button
5. Membuat page form
6. Mengarahkan setiap drawer ke route nya masing-masing
