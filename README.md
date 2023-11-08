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

TUGAS 7

## 1. Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?

Perbedaan utama antara stateless dengan stateful adalah widget stateless bersifat immutable, yang artinya elemen-elemen atau sifat-sifat dari widget tersebut tidak dapat diubah. Semisal terdapat widget button "Tekan aku" yang ketika ditekan maka teks button tersebut berubah menjadi "Aku ditekan!", maka widget button tersebut tidak dapat menggunakan kelas StatelessWidget. Agar perubahan teks tersebut dapat diwujudkan, maka kita harus menggunakan StatefulWidget. StatefulWidget adalah kebalikan dari StatelessWidget dimana elemen-elemen atau sifat-sifat yang ada di dalam widget tersebut bersifat mutable, yang artinya bersifat editable. Ketika suatu elemen atau sifat di widget tersebut berubah, maka aplikasi akan merender ulang widget tersebut sehingga hasil perubahan dapat terlihat.

## 2. Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.

Widget yang digunakan:

- MyApp
- MyHomePage
- InventoryCard

## 3. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)

1. Pertama, saya memisahkan widget-widget yang terbuat di menu.dart
2. Saya membuat kelas InventoryItem yang nantinya akan menyimpan data-data item
3. Saya membuat widget InventoryCard dengan komponen teks, icon, dan background color sesuai di kelas InventoryItem
