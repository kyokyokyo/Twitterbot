# 人工無脳分身TwitterBot

特定のユーザのTweetを元にした、人工無能Botプログラムです。

使い方
-------

1. 適当なサーバにデプロイ
2. ./config/config.sample.json を元に config.json を作成
3. [ここ][Igo]を参考に辞書ファイルを作成し、 ./ipadic に保存
4. 下記のコマンドで実行出来るはず。

	$ bundle
	$ bundle exec ruby entry.rb

[Igo]: http://igo.sourceforge.jp/ "Igo - Java形態素解析器"

基本動作
--------

特定のユーザー（分身元のユーザー）の最新のTweet200件を取得し、マルコフ連鎖を使ってTweet文を生成し、Tweetします。

詳しくはソース及び、[元ソースの作者様の記事][FLYING] を御覧ください。

ToDo
----

- 学習内容をDBに記録するように変更（現在は毎回最新の200件のみを参照）
- Reply履歴をDBに格納出来るようにして、Reply機能を作成
- おもしろくない（元のTweetをコピーしたままのような）Tweetをしないように

ライセンス
----------

下記、サイトのソースを元に作成しています（ありがとうございます！）。

なので、著作権など詳しいことは元のソースの作者様に準じますが、特に何も書いてないので商用利用などは控えるべきかと。

[マルコフ連鎖でTwitter BOTを作る - FLYING][FLYING]

[FLYING]: http://d.hatena.ne.jp/tondol/20120311/1331470586 "マルコフ連鎖でTwitter BOTを作る - FLYING"