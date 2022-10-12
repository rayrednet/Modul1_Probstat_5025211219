# Modul1_Probstat_5025211219
Praktikum Probabilitas dan Statistik 1

### Notes
Jika screenshot kurang jelas, klik image agar terlihat lebih jelas

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

<img width="171" alt="image" src="https://user-images.githubusercontent.com/89933907/195253813-79e6df86-3cd8-45a1-a2c0-ac2cc0cb90d4.png">

dapat dilihat bahwa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi adalah sebesar `0.0064`

> b. mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )
Untuk menyelesaikan persoalan ini gunakan rumus rata-rata menggunakan fungsi `rgeom(n,prob)`. Fungsi rgeom akan mengeluarkan list dari nilai random yang menunjukkan banyaknya kegagalan sebelum sukses pertama.
```ruby
n <- 10000
mean(rgeom(n, p) == 3)
```
Dari code tersebut diperoleh hasil mean pada running pertama sebagai berikut

<img width="105" alt="image" src="https://user-images.githubusercontent.com/89933907/195254648-808cde08-7849-4ce3-b9ba-7b03f47cd675.png">

Berikut ini adalah hasil mean pada running kedua

<img width="107" alt="image" src="https://user-images.githubusercontent.com/89933907/195255280-8bb0470d-b5d0-4ffa-bc42-2bb3b972d831.png">


Sehingga diperoleh nilai mean distribusi geometrik sebesar `0.0995` atau `0.0951`.

> c. Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?

Kesimpulan yang bisa didapat dari hasil poin a dan b adalah pada poin `b` distribusi geometrik acak menghasilkan nilai yang `berubah-ubah`, sementara pada poin `a` akan selalu `tetap`. Hal ini dikarenakan pada poin `b`, nilai data bersifat `random` dengan nilai yang dihasilkan oleh fungsi `rgeom()`.


> d. Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama

Untuk membuat histogram distribusi geometrik gunakan fungsi `hist()` dengan parameter `rgeom()` n dan p.

```ruby
hist(rgeom(n,p), main = "Grafik Histogram Distribusi Geometrik")
```

Sehingga diperoleh histogram sebagai berikut

![image](https://user-images.githubusercontent.com/89933907/195256003-d272258f-ee14-4b5e-8aaa-d499f6d3dfbe.png)

> e. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.
`Rataan` diperoleh dengan menghitung `banyaknya data dibagi dengan peluang kejadian`. `Varian` dihitung dengan menggukan `nilai rataan dibagi dengan kuadrat dari peluang kejadian` tersebut.

```ruby
rataan = 1/p
varian = (1-p)/(p^2)
```

Sehingga diperoleh hasil sebagai berikut

<img width="268" alt="image" src="https://user-images.githubusercontent.com/89933907/195256553-5d6a256e-6c37-49b6-b9f8-96d52ee43117.png">

Jadi nilai rataan dan varian dari distribusi geometrik tersebut secara berturut-turut adalah `5` dan `20`.


## Soal No. 2

> Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :

Pada soal ini diketahui terdapat ada 20 pasien dan peluang sembuh 0.2, maka

```ruby
n <- 20
p <- .2
```

> a. Peluang terdapat 4 pasien yang sembuh.

Untuk menghitung peluang 4 pasien sembuh (n), gunakan fungsi `dbinom(x, size, prob, log = FALSE)`. Dengan `x` bernilai `4`, size `n` sebanyak `20`, dan p adalah peluang sembuh sebanyak `p = 0.2`

```ruby
x <- 4
peluang <- dbinom(x,n,p, log = FALSE)
```

Dari hasil code tersebut diperoleh nilai peluang sebagai berikut:

<img width="220" alt="image" src="https://user-images.githubusercontent.com/89933907/195258119-943fbcc8-4a83-45be-a9b9-33042cfc4bb3.png">

Maka peluang 4 pasien sembuh adalah sebesar `0.218199`.

> b. Gambarkan grafik histogram berdasarkan kasus tersebut.

Grafik histogram pada kasus ini dibuat dengan menggunakan fungsi `hist()` dengan `rbinom(x,n,p)` sebagai parameternya.

```ruby
hist(rbinom(x,n,p), xlab = "X", ylab = "Probabilitas", main = "Histogram Kasus No.2")
```

Maka, diperoleh grafik histogram sebagai berikut

![image](https://user-images.githubusercontent.com/89933907/195261088-c4925047-53bc-4c12-847b-cf9e8eb4edaa.png)


> c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Binomial.

Nilai `rataan` dihitung dengan `banyak data dikali dengan peluang kejadian`. `Varian` dihitung dengan `nilai rataan dikali dengan komplemen peluang kejadian` tersebut.

```ruby
rataan <- n*p
varian <- n*p*(1-p)
```
Diperoleh hasil running sebagai berikut

<img width="225" alt="image" src="https://user-images.githubusercontent.com/89933907/195261564-b8f46046-fc22-49ce-845e-f680c148c125.png">

Maka nilai rataan dan varian secara berturut-turut adalah `4` dan `3.2`.

## Soal No. 3
> Diketahui data dari  sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)

Pada soal ini diketahui `rata-rata historis` sebanyak `4.5`, maka

```ruby
lambda <- 4.5
```

> a. Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?

Persoalan ini menggunakan konsep distribusi Poisson dengan fungsi `dpois(x,lambda)`. `x` menunjukkan `banyaknya kejadian sukses`, dan `lambda` menunjukkan `nilai ekspektasi dari suatu kejadian`.

```ruby
x <- 6
peluang <- dpois(x,lambda)
```
Dari hasil running diperoleh,

<img width="226" alt="image" src="https://user-images.githubusercontent.com/89933907/195263177-4cc8b3c0-f889-477c-9429-42661f969663.png">

Maka, peluang bahwa 6 bayi akan lahir besok adalah sebesar `0.1281201`.

> b. Simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini  selama setahun (n = 365)

Histogram distribusi Poisson dibuat dengan menggunakan fungsi `hist()` dengan menggunakan `rpois()` sebagai parameternya.

```ruby
n <- 365
hist(rpois(n, lambda), main = "Histogram Poisson")
```

Sehingga diperoleh histogram sebagai berikut,

![image](https://user-images.githubusercontent.com/89933907/195264427-8b1647d2-1dc6-4a74-a2ee-d1de73437cad.png)


> c. dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan

Dapat ditarik kesimpulan bahwa `hasil poin b akan mendekati poin a jika dikali 365`. Hal ini dikarenakan nilai `poin A` didapat dari `range dalam poin b`. Sehingga, dalam estimasi 365 hari memiliki nilai yang `hampir sama` dengan estimasi bayi yang akan dilahirkan besok.

> d. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson.

Nilai rataan dan varian dari distribusi Poisson memiliki nilai yang sama dengan lambdanya.

```ruby
mean = varian = lambda
```

Diperoleh hasil running sebagai berikut

<img width="222" alt="image" src="https://user-images.githubusercontent.com/89933907/195270503-b431b14f-2ac0-4035-87b5-dfb3b4ba7c3b.png">

Maka nilai rataan dan varian distribusi Poisson kasus ini adalah sebesar `4.5` dan `4.5`.

## Soal No. 4
> Diketahui nilai x = 2 dan v = 10. Tentukan:

Pada soal ini diketahui x = 2 dan v = 10, maka

```ruby
x <- 2
v <- 10
```

> a. Fungsi Probabilitas dari Distribusi Chi-Square.

Distribusi `Chi-Square` merupakan bentuk distribusi sampling yang digunakan untuk `mengetahui perbedaan observasi dengan nilai harapan dari kelompok sample`. 

Untuk menghitung fungsi distribusi Chi-Square, gunakan fungsi `dchisq(vec, df)`. Dengan `vec adalah nilai  x`, dan `df adalah degree of freedom`. 

Pada kasus ini, nilai `x` adalah `x` dan `df` adalah `v`.

```ruby
probabilitas = dchisq(x, v)
```

Diperoleh hasil running sebagai berikut

<img width="280" alt="image" src="https://user-images.githubusercontent.com/89933907/195272620-a8ec4065-621b-4106-9fe8-c87a585e4426.png">

Oleh karena itu, probabilitas distribusi Chi-Square sebesar `0.0076641`.

> b. Histogram dari Distribusi Chi-Square dengan 100 data random.

Untuk membuat histogram Distribusi Chi-Square, gunakan fungsi `hist()` dengan parameter breupa angka acak menggunakan `rchisq()`. Pada fungsi `rchisq()`, nilai `n` adalah `100` sesuai dengan soal dan `v` adalah `10`. Tetapkan `sumbu x` sebagai nilai `x`, dan `sumbu y` sebagai `v`.

```ruby
n <- 100
hist(rchisq(n, v), xlab = "X", ylab = "V", main = "Histogram Distribusi Chi-Square")
```

Dari code tersebut diperoleh histogram sebagai berikut,

![image](https://user-images.githubusercontent.com/89933907/195273870-553c10e3-3740-4f5b-a8d8-746c3f007bc0.png)


> c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Chi-Square

Nilai `rataan` pada distribusi Chi-Square adalah `v` atau degree of freedom. Nilai `varian` dihitung `rataan dikali dua`.

```ruby
rataan = v
varian = v*2
```

Dari hasil running diperoleh sebagai berikut,

<img width="345" alt="image" src="https://user-images.githubusercontent.com/89933907/195275029-515585ba-364d-4d13-b8ba-551bd8d3225b.png">

Maka nilai `rataan` adalah `10` dan `varian` sebesar `20`.

## Soal No. 5

> Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan

Pada soal ini diketahui nilai lambda = 3, maka

```ruby
lambda <- 3
```

> a. Fungsi Probabilitas dari Distribusi Exponensial 

Untuk mencari fungsi probabilitas distribusi eksponensial dari bilangan acak dilakukan menggunakan fungsi `rexp(n, rate)`. Nilai `rate` adalah `lambda` karena merupakan distribusi exponensial dan `n` adalah `1` sebagai pemisalan.

```ruby
fungsi = rexp(1, lambda)
```

Dari hasil running diperoleh data sebagai berikut,

<img width="252" alt="image" src="https://user-images.githubusercontent.com/89933907/195289071-01dd23d3-3a07-43b4-960a-e7881ef04f6d.png">

Maka nilai fungsi probabilitas distribusi eksponensial bilangan acak pertama adalah `0.063648`.

> b. Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random

Untuk membuat histogram distribusi eksponensial bilagnan random, gunakan fungsi `rexp(n, rate)`.
- Untuk 10 bilangan random

```ruby
hist(rexp(10, lambda), main = "Histogram Eksponensial untuk 10 bilangan random")
```

Diperoleh histogram sebagai berikut,

![image](https://user-images.githubusercontent.com/89933907/195290638-fa62439c-9cc4-45d6-beec-f67f997a92da.png)

- Untuk 100 bilangan random

```ruby
hist(rexp(100, lambda), main = "Histogram Eksponensial untuk 100 bilangan random")
```

Diperoleh histogram sebagai berikut,

![image](https://user-images.githubusercontent.com/89933907/195290780-8e649143-2c00-4020-acab-941a63f2f8d7.png)

- Untuk 1000 bilangan random

```ruby
hist(rexp(1000, lambda), main = "Histogram Eksponensial untuk 1000 bilangan random")
```

Diperoleh histogram sebagai berikut,

![image](https://user-images.githubusercontent.com/89933907/195290873-6a3bf3bf-da09-4700-8202-c7d61d4b6928.png)


- Untuk 10000 bilangan random

```ruby
hist(rexp(10000, lambda), main = "Histogram Eksponensial untuk 1000 bilangan random")
```

Diperoleh histogram sebagai berikut,

![image](https://user-images.githubusercontent.com/89933907/195290995-5657d86c-68d5-4a2b-8f3a-ae64f4be5ff6.png)


> c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3. Petunjuk: Gunakan set.seed(1), Gunakan fungsi bawaan R

Untuk menghitung nilai `rataan` gunakan fungsi `mean()` dengan parameter `rexp()` `Varian` dihitung dengan fungsi `sd()` yang merupakan standar deviasi dengan paramater nilai dari `distribusi eksponensial` dikuadratkan.

```ruby
n = 100
set.seed(1)
rataan = mean(rexp(n, lambda))
varian = (sd(rexp(n, lambda)))^2
```

Diperoleh data sebagai berikut,

<img width="165" alt="image" src="https://user-images.githubusercontent.com/89933907/195293104-0c31ded7-9c93-4d95-81c8-723c4f8b39ee.png">

Maka nilai rataan adalah `0.34355` dan varian sebesar `0.065607`.

## Soal No. 6

> Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan

Dari informasi tersebut maka dapat ditulis,

```ruby
n = 100
mean = 50
sd = 8
```

> a. Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya dan plot data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot()). Keterangan :  X1 = Dibawah rata-rata , X2 = Diatas rata-rata, Contoh data : 1,2,4,2,6,3,10,11,5,3,6,8 maka rata-rata = 5.083333, X1 = 5, X2 = 6

Untuk mencari data yang  akan dicari gunakan fungsi `rnorm()`. Kemudian hitung rataan dengan fungsi `mean()` dengan parameter data.
 `x1` digunakan untuk menghitung `dibawah rata-rata` dan `x2` untuk `diatas rata-rata`. `Z-score` dihitung dengan `nilai data dikurang rataan, kemudian dibagi dengan standar deviasi data`. Untuk menggambar plot gunakan fungsi `plot()` dengan parameter `z`.

```ruby
set.seed(1)
data <- rnorm(n, mean, sd)
rataan <- mean(data)
x1 <- floor(rataan)
x2 <- ceiling(rataan)
z <- (data - rataan) / sd(data)
print (z)
plot(z, main = "Plot Z-Score")
```

Diperoleh data z-score sebagai berikut,

<img width="534" alt="image" src="https://user-images.githubusercontent.com/89933907/195310969-41ff796b-9d67-4f0f-a0cc-be5bc817dfe3.png">

Jadi pada data tersebut diperoleh x1 sebesar `50`, x2 sebesar `51` dan nilai z-score sebagai berikut,

<img width="428" alt="image" src="https://user-images.githubusercontent.com/89933907/195312793-a0c62ff6-ba6c-4b93-8636-acde52bf579a.png">


Diperoleh gambar plot sebagai berikut,

![image](https://user-images.githubusercontent.com/89933907/195311803-034f1989-72c0-4a86-a49c-638059ee4cfa.png)

> b. Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan: NRP_Nama_Probstat_{Nama Kelas}_DNhistogram. Contoh : 312312312_Rola_Probstat_A_DNhistogram

Untuk membuat histogram, gunakan fungsi `hist()` dengan parameter variable `z`, `breaks = 50`, dan `nama main` sesuai dengan perintah soal.

```ruby
breaks = 50
hist(z, breaks, main = "5025211219_Rayssa Ravelia_Probstat_A_DNHistogram", col = "#1b98e0")
```

Diperoleh histogram dari code tersebut sebagai berikut,

![image](https://user-images.githubusercontent.com/89933907/195312048-aba0375d-e3fc-4485-8b0a-efa51147112e.png)

> c. Nilai Varian (σ²) dari hasil generate random nilai Distribusi Normal.

Untuk menghitung nilai varian dari nilai random distribusi normal, gunakan fungsi `sd()` dengan parameter `data` sebagai distribusi normalnya.

```ruby
varian = sd(data)^2
```

Sehingga diperoleh data sebagai berikut,
  
<img width="484" alt="image" src="https://user-images.githubusercontent.com/89933907/195313707-ca27a61e-e4dd-4280-93a8-8145e8f9db7a.png">

Maka, varian dari hasil generate random nilai distribusi normal adalah `51.6327737`
