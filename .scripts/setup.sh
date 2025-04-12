#!/bin/sh
echo "Fontları kuralım:"
mkdir -p .local/share && curl https://raw.githubusercontent.com/yazilimperver/dotfiles/refs/heads/main/.scripts/install_font.sh -o install_font.sh && chmod +x install_font.sh && ./install_font.sh latest
rm install_font.sh

echo "Gerekli kurulumlari yapalim:"
curl  https://raw.githubusercontent.com/yazilimperver/dotfiles/refs/heads/main/.scripts/bootstrap.sh -o bootstrap.sh && chmod +x bootstrap.sh && ./bootstrap.sh
rm bootstrap.sh

echo "Dot dosyalarini alalim:"
curl  https://raw.githubusercontent.com/yazilimperver/dotfiles/refs/heads/main/.scripts/install_dots.sh -o install_dots.sh && chmod +x install_dots.sh && ./install_dots.sh
rm install_dots.sh