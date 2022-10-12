# Modul1_Probstat_5025211219
Praktikum Probabilitas dan Statistik 1

## Identitas
| Name           | NRP        | Kelas     |
| ---            | ---        | ----------|
| Rayssa Ravelia | 5025211219 |Probstat A |

## Soal No. 1
> Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya. 

> a. Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi  sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ? (distribusi Geometrik)

Pada poin a, kita harus mencari peluang `x = 3` yang `tidak menghadiri` acara dengan diketahui `peluang 0.2` untuk populasi yang `menghadiri` acara.

Oleh karena itu, kita harus menghitung peluang tidak menghadiri acara dengan `1-p`.

Untuk menghitung peluang tersebut digunakan fungsi `dgeom(x,prob)` dengan x sebagai jumlah gagal sebelum sukses pertama, dan prob adalah probabilitas sukses pada percobaan yang diberikan.
```ruby
x <- 3
p <- 0.2
peluang <- dgeom(x,1-p)
```
Sehingga diperoleh hasil sebagai berikut

<img width="227" alt="image" src="https://user-images.githubusercontent.com/89933907/195249105-f0c4101b-8e2d-4013-b827-8f41dde05851.png">



> b. mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )

> c. Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?

> d. Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama

> e. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.

