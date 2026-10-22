# エラー管理とログ記録

Error Management and Logging in 4D Applications (Technical Note 25-09): Japanese edition.

4Dアプリケーションでのエラー処理を、従来の **ON ERR CALL** コマンドから、4D 20 R2 以降の **throw**、4D 20 R4/R5 以降の **Try()** と **Try...Catch** まで解説するテクニカルノートの日本語版です。エラー処理メソッドのスコープ（ローカル、グローバル、コンポーネント）と実行順序、**Last errors** によるエラースタックの取得、エラーをログファイルに記録する方法を説明しています。付属の4Dデモでは、読み取り専用ファイルへの書き込みエラーやゼロ除算を例に、それぞれの方法を実際に試すことができます。

This is the Japanese edition of a technical note on error handling in 4D, from the classic **ON ERR CALL** command
to **throw**, **Try()** and **Try...Catch**. The companion demo lets you try each approach.

## Download

| | |
|---|---|
| PDF (Japanese) | [25-09_ErrorManagement_ja.pdf](https://github.com/miyako/ErrorManagement/releases/latest/download/25-09_ErrorManagement_ja.pdf) |
| 4D demo | [ErrorManagement.zip](https://github.com/miyako/ErrorManagement/releases/latest/download/ErrorManagement.zip) |
| Original (English) | `document/25-09_ErrorManagement.pdf` |

## Demo

- 4D version: 4D 20 R9 or later (`compatibilityVersion` 2090)
- Open `demo/ErrorManagement/Project/ErrorManagement.4DProject`.
- Languages: English, Japanese. The UI follows the system language; the XLIFF files are in `Resources/<lang>.lproj/`.
- The test window opens at startup (`On Startup` → `00_Start`) and can be reopened with **File > Error Tests…**.
  Its four buttons run `testTry`, `Test ON ERR CALL`, `testThrow` and `TestTryCatch`. Errors are logged to
  `Logs/errors.json` in the data folder.
- `example.txt` must be read-only to cause the write error. Git and the zip don't keep this attribute, so set it
  after downloading: `chmod a-w demo/ErrorManagement/example.txt` on macOS, or **Properties > Read-only** on
  Windows.

## Differences from the original

- The demo is localised (English and Japanese): the form uses `:xliff:` references, and the messages passed to
  `LOG EVENT`, `throw` and `ALERT` use `Localized string`. The code examples in the PDF show this code.
- Added to the demo: the `00_Start` method, the `On Startup` database method and the **File > Error Tests…** menu
  item. The form's placeholder window title is replaced with a localised title.
- All six screenshots were retaken in the Japanese version of 4D.
- A paragraph that appears twice in the original ("For this purpose, the Method called on error command…") is
  translated once.
- The cover title is shortened to 「エラー管理とログ記録」.

## Editing and rebuilding

The PDF is generated from plain-text sources. Edit them and run `make`.

| File | What |
|---|---|
| `src/ja.md` | Translated body text. **Don't touch code blocks** (`make check` verifies them). |
| `figures/fig-NN-ja.png` | Japanese screenshots, used instead of the original `fig-NN.png` |
| `figures/layout/fig-NN.json` | `"replace"` names the image used for figure NN |
| `glossary.md` | Terminology |

```sh
make            # check → figures → build/25-09_ErrorManagement_ja.pdf
make check      # code blocks unchanged, figure references complete
make review     # contact sheets of the figures (build/contact-N.png)
make release-assets
```

Requirements: Python 3, Google Chrome, CJK fonts, and Tesseract (only needed for re-extraction).
See the [localisation template](https://github.com/miyako/4d-technote-localisation-template) for the full workflow.

## Credits

- Original: Karim Meghraoui, Technical Support Engineer, 4D Morocco. Technical Note 25-09.
- Translation: Keisuke Miyako
- Produced with [4d-technote-localisation-template](https://github.com/miyako/4d-technote-localisation-template) and GitHub Copilot.
