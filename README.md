<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->


<a name="readme-top"></a>

<!--
*** Thanks for checking out the Best-README-Template. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Don't forget to give the project a star!
*** Thanks again! Now go create something AMAZING! :D
-->

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/othneildrew/Best-README-Template">
    <img src="https://user-images.githubusercontent.com/45744788/187867110-d8e48200-7518-4695-a6b1-13e30b42657e.png" alt="Logo" width="250" height="250">
  </a>

  <h3 align="center">Fleetime 🏃‍♂️⌛</h3>

  <p align="center">
    Fleetime merupakan aplikasi untuk melihat film - film yang sedang populer atau biasanya disebut Movie App, aplikasi ini dilombakan untuk mengikuti Mini Project Movie App yang diadakan oleh FUGI.
    <br />
    <a href="https://github.com/othneildrew/Best-README-Template"><strong>Lihat screenshot »</strong></a>
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
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
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

### Technology used

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


_For more examples, please refer to the [Documentation](https://example.com)_

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ROADMAP -->

## Roadmap

- [ ] Add login menggunakan firebase
- [ ] Add favorite film
- [ ] Add Dark Mode 
- [ ] Paginasi antar page film untuk melihat lebih banyak film


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTACT -->

## Team Member

Novian Andika - [@your_twitter](https://twitter.com/your_username) - email@example.com

Project Link: [https://github.com/your_username/repo_name](https://github.com/your_username/repo_name)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGMENTS -->

## Acknowledgments

Use this space to list resources you find helpful and would like to give credit to. I've included a few of my favorites to kick things off!

- [Choose an Open Source License](https://choosealicense.com)
- [GitHub Emoji Cheat Sheet](https://www.webpagefx.com/tools/emoji-cheat-sheet)
- [Malven's Flexbox Cheatsheet](https://flexbox.malven.co/)
- [Malven's Grid Cheatsheet](https://grid.malven.co/)
- [Img Shields](https://shields.io)
- [GitHub Pages](https://pages.github.com)
- [Font Awesome](https://fontawesome.com)
- [React Icons](https://react-icons.github.io/react-icons/search)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

[contributors-shield]: https://img.shields.io/github/contributors/othneildrew/Best-README-Template.svg?style=for-the-badge
[contributors-url]: https://github.com/othneildrew/Best-README-Template/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/othneildrew/Best-README-Template.svg?style=for-the-badge
[forks-url]: https://github.com/othneildrew/Best-README-Template/network/members
[stars-shield]: https://img.shields.io/github/stars/othneildrew/Best-README-Template.svg?style=for-the-badge
[stars-url]: https://github.com/othneildrew/Best-README-Template/stargazers
[issues-shield]: https://img.shields.io/github/issues/othneildrew/Best-README-Template.svg?style=for-the-badge
[issues-url]: https://github.com/othneildrew/Best-README-Template/issues
[license-shield]: https://img.shields.io/github/license/othneildrew/Best-README-Template.svg?style=for-the-badge
[license-url]: https://github.com/othneildrew/Best-README-Template/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/othneildrew
[product-screenshot]: images/screenshot.png
[next.js]: https://img.shields.io/badge/next.js-000000?style=for-the-badge&logo=nextdotjs&logoColor=white
[next-url]: https://nextjs.org/
[react.js]: https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB
[react-url]: https://reactjs.org/
[vue.js]: https://img.shields.io/badge/Vue.js-35495E?style=for-the-badge&logo=vuedotjs&logoColor=4FC08D
[vue-url]: https://vuejs.org/
[angular.io]: https://img.shields.io/badge/Angular-DD0031?style=for-the-badge&logo=angular&logoColor=white
[angular-url]: https://angular.io/
[svelte.dev]: https://img.shields.io/badge/Svelte-4A4A55?style=for-the-badge&logo=svelte&logoColor=FF3E00
[svelte-url]: https://svelte.dev/
[laravel.com]: https://img.shields.io/badge/Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=white
[laravel-url]: https://laravel.com
[bootstrap.com]: https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white
[bootstrap-url]: https://getbootstrap.com
[jquery.com]: https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jquery&logoColor=white
[jquery-url]: https://jquery.com
