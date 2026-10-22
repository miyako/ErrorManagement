# 用語集 / Glossary

Keep terminology consistent across `src/<target>.md` and `figures/*.<target>.txt`.
Change an entry here first, then search and replace in both places.

Style (ja): です・ます調. Half-width alphanumerics, no space between Japanese and Latin text (e.g. `4D.Vector型`).
Full-width `（）` and `：` in prose. First occurrence of a technical term: 日本語（English）.

## 4D terms (from the official 4D Japanese documentation)

| English | 日本語 | Notes |
|---|---|---|
| entity / entity selection | エンティティ / エンティティセレクション | |
| datastore | データストア | |
| dataclass | データクラス | |
| attribute | 属性 | |
| computed attribute | 計算属性 | |
| collection | コレクション | |
| object | オブジェクト | |
| method | メソッド | |
| project method | プロジェクトメソッド | |
| function | 関数 | |
| class | クラス | |
| parameter | 引数 | |
| form | フォーム | |
| form object | フォームオブジェクト | |
| list box | リストボックス | |
| web area | Webエリア | |
| 4D Web Server | 4D Webサーバー | |
| worker | ワーカー | |
| process | プロセス | |
| query | クエリ | |
| formula | フォーミュラ | |
| component | コンポーネント | |

## Document-specific terms

| English | 日本語 | Notes |
|---|---|---|
| error handler / handler | エラー処理メソッド | Official docs also use エラーハンドラー; this note uses エラー処理メソッド throughout |
| install (a handler) | インストールする | |
| intercept / interception | 割り込む / 割り込み | |
| catch / capture | 捕捉する | The Catch keyword stays in English |
| throw | スローする | |
| scope (ek local / ek global / ek errors from components) | ローカルスコープ / グローバルスコープ / コンポーネントスコープ | Constant names stay in English |
| error stack | エラースタック | |
| deferred error / deferred mode | 遅延エラー / 遅延モード | |
| component signature | コンポーネント識別子 | |
| execution context | 実行コンテキスト | |
| host database | ホストデータベース | Kept "database" as in the source (docs: ホストプロジェクト) |
| database folder | データベースフォルダー | |
| On Startup method | On Startup データベースメソッド | |
| system error dialog | システムエラーダイアログ | |
| Abort / Continue / Trace / Edit (error dialog buttons) | 閉じる / 無視 / トレース / 編集 | As shown in the Japanese 4D error dialog (fig-01) |
| syntax / runtime / logical / network / resource error | 構文エラー / ランタイムエラー / 論理エラー / ネットワークエラー / リソースエラー | |
| Technical Note | テクニカルノート | |

## Commands and keywords kept in English

ON ERR CALL, Method called on error, Last errors, throw, Try, Catch, End try, ABORT, Error method, Error line,
Error formula, LOG EVENT. Property names (errCode, message, componentSignature, deferred) also stay in English.

## Proper nouns in examples

| English | 日本語 | Notes |
|---|---|---|
