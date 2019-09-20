# 論文範本工具包

## 前置需求

下面列出一些比較重要的，其他有請大家補充。並且只會舉例 ubuntu 和 archlinux
的 package 名稱，其他 distribution 可先查詢是否有提供包好的 package。

### 字體
如果找不到對應的 package，也可以直接下載字型檔放到 `~/.local/share/fonts` 下。

- Noto fonts CJK (使用的主要是 Noto Serif CJK Light)
  - Ubuntu: `fonts-noto-cjk fonts-noto-cjk-extra`
  - Arch: `noto-fonts-cjk`
  - 直接下載: https://www.google.com/get/noto/help/cjk/
- AR PL UKai (AR PL UKai TW)
  - Ubuntu: `fonts-arphic-ukai`
  - Arch: `ttf-arphic-ukai`
  - 直接下載: https://www.freedesktop.org/wiki/Software/CJKUnifonts/Download/
- Nimbus Roman (通常已經裝好了)
  - Ubuntu: `gsfonts`
  - Arch: `gsfonts`  

### XeLaTeX

基本上只要把 texlive 的東西全裝了就可以了。

- Ubuntu: `texlive-full`
- Arch: `texlive-most`

## 編譯

- `make` 編譯
- `make watch` 即時編譯 + 預覽，要在 `.latexmkrc` 下面指定 previewer：
```
$pdf_previewer = 'zathura';
```
- `make clean` 刪光光

## 編輯

- 首先請修改 title\_settings.tex 並確定裡面的 **所有欄位** 都是正確的
- 所有的內文都是修改 chapters 資料夾下的檔案，其中 chapters/all.tex 是大架構
- 文中可能會用到符號縮寫指令可定義在 notations.tex
- thesis\_frontpages.tex → 誌謝與摘要
- thesis.bib → 參考文獻的 bib 檔 (把各種 bibtex 貼進去，然後用 `\cite` 來引用)
- headerfooter.tex → 可以對頁首頁尾多加一些東西，使用 fancyhdr。(但是這個建議是別動...)

若有圖片的話可以建立一個 images 的資料夾並把圖片全部放在裡面。

- `make` 編譯
- `make watch` 即時編譯 + 預覽，要在 `.latexmkrc` 下面指定 previewer：
```
$pdf_previewer = 'zathura';
```
- `make clean` 刪光光

浮水印的部分請使用 Adobe Acrobat 加入，這可以在口試完成之後再進行。請參考 [臺大電子學位論文上傳手冊](http://www.lib.ntu.edu.tw/doc/CL/etdsguide.pdf)。
