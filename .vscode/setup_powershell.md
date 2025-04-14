Giriş
-
Bu sayfa içerisinde vs code için yapılan ayarlamaları bir araya getiyorum.
- Color Themes için **https://windowsterminalthemes.dev/** sayfası
- Fontrolar için **https://github.com/ryanoasis/nerd-fonts/releases** reposu
    - Buradan da FireCode fontunu seçiyoruz,
- OhMyZsh'ın windows terminali için olan OhMyPosh'u kuralım
    - Kullanabilmek için winget'in kurulu olması lazım. yok ise Marketten AppInstaller kurulabilir
    - **https://ohmyposh.dev/**
    - OhMyPosh dosyları alınarak offline da kurulabilir
    - Kurulum komutları

``` shell
# OhMyPosh kurulumu için
winget install JanDeDobbeleer.OhMyPosh -s winget

# Update için
winget upgrade JanDeDobbeleer.OhMyPosh -s winget

# Varsayılan themler için
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\jandedobbeleer.omp.json" | Invoke-Expression

# To change your theme, adjust the init script in C:\Users\yaziilmperver\OneDrive\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1.
oh-my-posh init pwsh --config 'C:\Users\fatih\AppData\Local\Programs\oh-my-posh\themes\jandedobbeleer.omp.json' | Invoke-Expression

# Hangi shellde olduğumuzu öğrenmek için
oh-my-posh get shell

# Her powershell ile bu temayı açmak için, aşağıdaki dosya açılır
notepad $PROFILE

# ve aşağıdaki satır eklenir
oh-my-posh init pwsh | Invoke-Expression

# Dosya yoksa oluşturulur ve yukarıdaki satır eklenir
& ([ScriptBlock]::Create((oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\jandedobbeleer.omp.json" --print) -join "`n"))

# Yeni shell açıldığında aşağıdaki hatayı alırsak
# Microsoft.PowerShell_profile.ps1 cannot be loaded because
# running scripts is disabled on this system. For more information, see about_Execution_Policies at https:/go.microsoft.com/fwlink/?LinkID=135170. At line:1 char:3
#  . 'C:\Users\fatih\OneDrive\Documents\WindowsPowerShell\Microsoft.Powe ...
#    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     CategoryInfo          : SecurityError: (:) [], PSSecurityException
#     FullyQualifiedErrorId : UnauthorizedAccess
#
# Şu komutu çağıralım
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope LocalMachine

# Daha güzel dosya ve ikonları için aşağıdaki komut çağrılır
Install-Module -Name Terminal-Icons -Repository PSGallery

# ve aşağıdaki satır da notepad $PROFILE ile, ilgili dosyaya eklenir
Import-Module -Name Terminal-Icons
```

<br>
setting.json içerisinde nihai ayarlamalar bulunabilir.
<br>

Kaynaklar:
- 
- https://youtu.be/-G6GbXGo4wo?si=qacLnH1mGB0L4iOi
- https://www.hanselman.com/blog/my-ultimate-powershell-prompt-with-oh-my-posh-and-the-windows-terminal
- https://www.c-sharpcorner.com/blogs/how-to-install-powershell-modules-in-offline-mode