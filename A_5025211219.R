#1. 
#Seorang penyurvei secara acak memilih orang-orang di jalan
#sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya

#a. Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum
#keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi? (distribusi Geometrik)
x <- 3
p <- 0.2
peluang <- dgeom(x,1-p)

#b.mean Distribusi Geometrik dengan 10000 data random
#prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 
#distribusi geometrik acak () == 3
n <- 10000
mean(rgeom(n, p) == 3)

#c. Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?
#penjelasan di README.md

#d. Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama
hist(rgeom(n,p), main = "Grafik Histogram Distribusi Geometrik")

#e. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik
rataan = 1/p
varian = (1-p)/(p^2)


#2.
#Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2.
n <- 20
p <- .2

#a. Peluang terdapat 4 pasien yang sembuh.
x <- 4
peluang <- dbinom(x,n,p, log = FALSE)

#b. Gambarkan grafik histogram berdasarkan kasus tersebut.
hist(rbinom(x,n,p), xlab = "X", ylab = "Probabilitas", main = "Histogram Kasus No.2")

#c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Binomial.
rataan <- n*p
varian <- n*p*(1-p)


#3.
#Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata
#historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)
lambda <- 4.5

#a. Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?
x <- 6
peluang <- dpois(x,lambda)

#b. simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir
#di rumah sakit ini  selama setahun (n = 365)
n <- 365
hist(rpois(n, lambda), main = "Histogram Poisson")

#c. bandingkan hasil poin a dan b, Apa kesimpulan yang bisa didapatkan
# Penjelasan terdapat pada README.md

#Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson
mean = varian = lambda


#4
#Diketahui nilai x = 2 dan v = 10. Tentukan:
x <- 2
v <- 10

#a. Fungsi Probabilitas dari Distribusi Chi-Square.
probabilitas = dchisq(x, v)

#b.Histogram dari Distribusi Chi-Square dengan 100 data random.
n <- 100
hist(rchisq(n, v), xlab = "X", ylab = "V", main = "Histogram Distribusi Chi-Square")

#c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Chi-Square.
rataan = v
varian = v*2


#5
#Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan
lambda <- 3

#a. Fungsi Probabilitas dari Distribusi Exponensial 
fungsi = rexp(1, lambda)

#b. Histogram dari Distribusi Exponensial untuk
#10, 100, 1000 dan 10000 bilangan random
hist(rexp(10, lambda), main = "Histogram Eksponensial untuk 10 bilangan random")
hist(rexp(100, lambda), main = "Histogram Exponensial untuk 100 bilangan random")
hist(rexp(1000, lambda), main = "Histogram Exponensial untuk 1000 bilangan random")
hist(rexp(10000, lambda), main = "Histogram Exponensial untuk 10000 bilangan random")

#c. Nilai Rataan (μ) dan Varian (σ²)
#dari Distribusi Exponensial untuk n = 100 dan λ = 3
#Petunjuk:Gunakan set.seed(1), Gunakan fungsi bawaan R
n = 100
set.seed(1)
rataan = mean(rexp(n, lambda))
varian = (sd(rexp(n, lambda)))^2


#6
#Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan
n <- 100
mean <- 50
sd <- 8

#a. Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya 
# dan plot data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot()).
#Keterangan : X1 = Dibawah rata-rata , X2 = Diatas rata-rata
#Contoh data : 1,2,4,2,6,3,10,11,5,3,6,8
#rata-rata = 5.083333
#X1 = 5, X2 = 6
set.seed(1)
data <- rnorm(n, mean, sd)
rataan <- mean(data)
x1 <- floor(rataan)
x2 <- ceiling(rataan)
z <- (data - rataan) / sd(data)
print (z)
plot(z, main = "Plot Z-Score")

#b. Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan: 
#NRP_Nama_Probstat_{Nama Kelas}_DNhistogram
#Contoh : 312312312_Rola_Probstat_A_DNhistogram
breaks = 50
hist(z, breaks, main = "5025211219_Rayssa Ravelia_Probstat_A_DNHistogram", col = "#1b98e0")

#c. Nilai Varian (σ²) dari hasil generate random nilai Distribusi Normal.
varian = sd(data)^2
