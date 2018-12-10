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

ここと同じ `_layouts/default.html` を書き換える。

- https://help.github.com/articles/customizing-css-and-html-in-your-jekyll-theme/#customizing-your-jekyll-themes-html-layout

### Plugin

素の Jekyll ではなく、[github-pages という gem をカスタマイズしたもの](https://github.com/matsubara0507/github-pages-gem/tree/twitter-plugin)を利用している。
なので Plugin の追加などをしたい場合はカスタマイズしたリポジトリに PR を送ってください。

### その他

```
GitHub Metadata: No GitHub API authentication could be found. Some fields may be missing or have incorrect data.
GitHub Metadata: GET https://api.github.com/repos/mixi-git-challenge/publications: 403 - API rate limit exceeded for 202.32.29.8. (But here's the good news: Authenticated requests get a higher rate limit. Check out the documentation for more details.) // See: https://developer.github.com/v3/#rate-limiting
```

と出た場合は次のように GitHub の API トークンを与えると良い

```
$ JEKYLL_GITHUB_TOKEN=XXX bundle exec jekyll build
```
