# 論文範本工具包

## Deps

- Ubuntu
```
sudo apt-get install texlive-full
```
- Archlinux
```
sudo pacman -S texlive-most texlive-langchinese
```
其他有請大家補充

## 使用方法

要修改的地方有
- thesis.tex → 論文封面與大章節名稱
- thesis_frontpages.tex → 誌謝與摘要
- chapters/chapter*.tex → 各章內容
- thesis.bib → 參考文獻

若有圖片的話可以建立一個 images 的資料夾並把圖片全部放在裡面。

- `make` 編譯
- `make watch` 即時編譯 + 預覽，要在 `.latexmkrc` 下面指定 previewer：
```
$pdf_previewer = 'zathura';
```
- `make clean` 刪光光

浮水印的位置大小可在 watermark.tex 裡面做修改
- `width=5cm` 可改成其他大小
- `\put(2,-5)` 可改成其他座標位置，單位是公分 (但你可能要試一下才知道要設多少...)

