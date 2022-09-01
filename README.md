<a name="readme-top"></a>

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/othneildrew/Best-README-Template">
    <img src="https://user-images.githubusercontent.com/45744788/187867110-d8e48200-7518-4695-a6b1-13e30b42657e.png" alt="Logo" width="250" height="250">
  </a>

  <h3 align="center">Fleetime 🏃‍♂️⌛</h3>

  <p align="center">
    Fleetime merupakan aplikasi untuk melihat film - film yang sedang populer atau biasanya disebut Movie App, aplikasi ini dilombakan untuk mengikuti Mini Project Movie App yang diadakan oleh <a href="#apa-itu-fugi-">FUGI</a>.
    <br />
    <a href="#screen"><strong>Lihat screenshot »</strong></a>
    <br />
    
  </p>
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Daftar Isi</summary>
  <ol>
    <li>
      <a href="#tentang-aplikasi">Tentang Aplikasi</a>
      <ul>
        <li><a href="#dibuat-menggunakan">Dibuat menggunakan</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#screen">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#team-member">Team Member</a></li>
    <li><a href="#panitia-fugi">Panitia</a></li>
    <li><a href="#package-yang-digunakan">Package yang digunakan</a></li>
    <li><a href="#apa-itu-fugi-">Apa itu FUGI ?</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->

## Tentang Aplikasi

<div align="center">
<img width="900" alt="iphone-12-pro-max--silver@2x" src="https://user-images.githubusercontent.com/45744788/187869597-1d8114ce-8ca9-44f1-9354-dcafe2ccfc18.png">
</div>

<br>

Fleetime adalah aplikasi untuk mencari film terbaru berbasis mobile yang dibuat dengan menggunakan Flutter, Untuk desainnya saya mengambil dari [Figma Community](https://www.figma.com/community/file/1054431643740926668), karena desainnya cuma 2 screen saja maka saya improvisasi didalam aplikasi sesuai selera saya sendiri. Untuk State Management Fleetime sendiri menggunakan GetX supaya pengembangan aplikasi lebih cepat dan tidak menggunakan banyak code boilerplate.

Beberapa fitur Fleetime diantara lain :

- Melihat film yang sedang populer
- Melihat film yang sedang tayang di bioskop
- Mencari film berdasarkan nama judul
- Melihat detail film
- Melihat detail actor atau actress
- Melihat trailer film menggunakan url_launcher

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Dibuat menggunakan

![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)
![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## Getting Started

Pastikan sudah menginstall Git dan Flutter pada environment kalian.

### Prerequisites

- Flutter
  ```sh
  https://docs.flutter.dev/get-started/install
  ```
- Git
  ```sh
  https://git-scm.com/downloads
  ```

### Installation

1. Clone the repo
   ```sh
   git clone https://github.com/fleetimee/neo-claudius.git
   ```
2. Install the dependencies
   ```sh
   flutter pub get
   ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- USAGE EXAMPLES -->

## Screen


<table>
<thead>
<tr>
<th align="center">Splash</th>
<th align="center">Home</th>
<th align="center">Detail Movie</th>
</tr>
</thead>
<tbody>
<tr>
<td align="center"><img alt="" src="https://user-images.githubusercontent.com/45744788/187876952-3b554467-a2f9-4d56-b105-c4dae64e6882.png" height="500"/></td>
<td align="center"><img alt="" src="https://user-images.githubusercontent.com/45744788/187877124-754a9f01-02fe-4cbd-bfad-5034a96dd316.png" height="500"/></td>
<td align="center"><img alt="" src="https://user-images.githubusercontent.com/45744788/187877307-704d6b3b-a133-4fcf-8800-e305bcfbcd1a.png" height="500"/></td>
</tr>
</tbody>
</table>

<table>
<thead>
<tr>
<th align="center">Cast list & Trailer</th>
<th align="center">Detail Person</th>
<th align="center">Search Movie</th>
</tr>
</thead>
<tbody>
<tr>
<td align="center"><img alt="" src="https://user-images.githubusercontent.com/45744788/187877595-8e4db779-1c44-49b0-a884-7de12490714d.png" height="500"/></td>
<td align="center"><img alt="" src="https://user-images.githubusercontent.com/45744788/187877736-4158fcfe-8870-4951-8834-bb18f7f80701.png" height="500"/></td>
<td align="center"><img alt="" src="https://user-images.githubusercontent.com/45744788/187877839-7ba784d8-37aa-48e8-86b8-b38289e93334.png" height="500"/></td>
</tr>
</tbody>
</table>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ROADMAP -->

## Roadmap

- [ ] Add login menggunakan firebase
- [ ] Add favorite film
- [ ] Add Dark Mode 
- [ ] Paginasi antar page film untuk melihat lebih banyak film


<p align="right">(<a href="#readme-top">back to top</a>)</p>


## Team Member

- Novian Andika - hello@fleetime.my.id
- Sandhika Rahardi (Kuldii Project) - [https://www.youtube.com/c/KuldiiProject](https://www.youtube.com/c/KuldiiProject)
- Yuko

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Panitia FUGI

- Saiful Bahri
- Mas Fatih

<p align="right">(<a href="#readme-top">back to top</a>)</p>



## Package yang digunakan

Beberapa package third party yang saya gunakan untuk menunjang pembuatan aplikasi ini.

- [empty_widget](https://pub.dev/packages/empty_widget)
- [fancy_shimmer_image](https://pub.dev/packages/fancy_shimmer_image)
- [google_fonts](https://pub.dev/packages/google_fonts)
- [http](https://pub.dev/packages/http)
- [intl](https://pub.dev/packages/intl)
- [url_launcher](https://pub.dev/packages/url_launcher)
- [get](https://pub.dev/packages/get)


<p align="right">(<a href="#readme-top">back to top</a>)</p>


## Apa itu FUGI ? 

![1_mUaX1D5BsA9CHdyYla0F8g-removebg-preview](https://user-images.githubusercontent.com/45744788/187907527-e6c1bda0-0d25-416c-8cba-b06f79c1b643.png)


FUGI adalah singkatan dari Flutter User Group Indonesia, FUGI sendiri ini merupakan suatu wadah komunitas untuk sharing sharing mengenai flutter yang berbasiskan grup WhatsApp.

Jika tertarik kalian bisa gabung di sini dan langsung berinteraksi sesama member FUGI

https://chat.whatsapp.com/DOmmRMP50Oc4eDd5eI7nav

<p align="right">(<a href="#readme-top">back to top</a>)</p>
