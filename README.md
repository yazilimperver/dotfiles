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
Kurulumları tamamlamak için aşağıdaki adımları izleyeceğiz:

Fontları kuralım:

```console
mkdir -p .local/share && curl https://raw.githubusercontent.com/yazilimperver/dotfiles/refs/heads/main/.scripts/install_font.sh -o install_font.sh && chmod +x install_font.sh && ./install_font.sh latest
```

Uygulamaları ve temel hazırlıkları yapalım:

```console
curl  https://raw.githubusercontent.com/yazilimperver/dotfiles/refs/heads/main/.scripts/bootstrap.sh -o bootstrap.sh && chmod +x bootstrap.sh && ./bootstrap.sh
```

Dot dosyalarını içeren repoyu indirimek ve gerekli ayarlamaları yapmak için aşağıdaki betiği çağırıyoruz:

```console
curl  https://raw.githubusercontent.com/yazilimperver/dotfiles/refs/heads/main/.scripts/install_dots.sh -o install_dots.sh && chmod +x install_dots.sh && ./install_dots.sh
```


Bütün kurulumları tek seferde yapmak için:
```console
curl -Lks https://raw.githubusercontent.com/yazilimperver/dotfiles/refs/heads/main/.scripts/setup.sh | /bin/bash
```

## Kaynaklar
* [Hacker News](https://news.ycombinator.com/item?id=11070797) - Burada bahsedilen yöntem.
* [Wikipedia](https://en.wikipedia.org/wiki/Hidden_file_and_hidden_directory) - Dot Files Wikipedia sayfası.
* [Git Bare Repos](https://www.saintsjd.com/2011/01/what-is-a-bare-git-repository/) - Git Bare Repository
