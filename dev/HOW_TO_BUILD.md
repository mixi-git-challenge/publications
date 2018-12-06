# How to Build

静的サイトジェネレーターには Jekyll を利用している。

### ローカルで確認

以下のコマンドでローカルでの確認ができる:

```
$ bundle install
$ bundle exec jekyll server --baseurl ''
```

### デプロイ

コミットするときは以下のコマンドで `docs` 以下に HTML を生成してください。

```
$ bundle exec jekyll build
```

### CSS

CSS をカスタマイズしたいときは `assets/css/style.scss` に書き込んでください．

### Layout

ここと同じ（必要がないのでやってはいない）

- https://help.github.com/articles/customizing-css-and-html-in-your-jekyll-theme/#customizing-your-jekyll-themes-html-layout


### Plugin

素の Jekyll ではなく、[github-pages という gem をカスタマイズしたもの](https://github.com/matsubara0507/github-pages-gem/tree/twitter-plugin)を利用している。
なので Plugin の追加などをしたい場合はカスタマイズしたリポジトリに PR を送ってください。
