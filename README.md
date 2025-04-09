# Giriş

Yazılım geliştirme ve benzeri faaliyetlerde farklı Linux ve WSL ortamlarına geçişi kolaylaştırmak için gerekli dot dosyaları, kurulum betikleri ve benzer dosyaları içeren repodur.

## Yöntem
Dot dosyalarının kurulumuna/taşınmasına yönelik farklı farklı yöntemler bulunmaktadır. Bunları;
* El ile indirip kopyalama,
* Bu amaçla oluşturulmuş farklı araçları kullanarak,
* zip'lyerek,
* Sembolik bağlantılar üzerinden yapabilirsiniz.

Bende kendi konfigürasyon dosyalarım için, HackerNews kaynağında belirtilen şekilde bare git repository yaklaşımını kullanacağım.
Normal git repo'ları ile git bare repo'ları arasındaki fark için kaynaklara göz atabilirsiniz.

Bu yaklaşımda, konfigürasyon ve ilgili dosyalar yan bir dizinde tutuluyor, bu sayede home dizinindeki olası bir Git reposu ile de karışma ihtimali kalmıyor. Daha sonra, bu repo ile ilgili kaynak kontrol komutları için özelleşmiş komutlar hazırlanıyor ve bunlar kullanılıyor.

## Kurulum
Yeni bir bilgisayara bu dosyaları taşımak için izlenecek adımlar bu başlık altında verilecektir.

### Minimum Gereksinimler
Kurulum için en azından aşağıdaki uygulamalar kurulu olmalıdır.
* Git
* Curl

### Kurulum Adımları
Öncelikli olarak gerekli kurulumları yapmak için aşağıdaki komutu çağırıyoruz:
curl -Lks https://raw.githubusercontent.com/yazilimperver/dotfiles/refs/heads/main/.scripts/bootstrap.sh | /bin/bash

Dot dosyalarını içeren repoyu indirimek ve gerekli ayarlamaları yapmak için aşağıdaki betiği çağırıyoruz:
curl -Lks https://raw.githubusercontent.com/yazilimperver/dotfiles/blob/main/.scripts/install_dots.sh | /bin/bash

## Kaynaklar
* [Hacker News](https://news.ycombinator.com/item?id=11070797) - Burada bahsedilen yöntem.
* [Wikipedia](https://en.wikipedia.org/wiki/Hidden_file_and_hidden_directory) - Dot Files Wikipedia sayfası.
* [Git Bare Repos](https://www.saintsjd.com/2011/01/what-is-a-bare-git-repository/) - Git Bare Repository
