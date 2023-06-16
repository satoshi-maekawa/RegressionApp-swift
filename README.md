# multivariate-linear-regression-app-swift
重回帰分析アプリ
# 多変量重回帰分析アプリケーション

このアプリケーションは、与えられた入力データ（x1, x2, x3, x4）に基づいて目的変数（y）を予測するアプリケーションです。

swiftプログラムファイル以外に下記のファイルを含みます。

1.重回帰分析用の学習モデル作成ファイル(regression.py)

2.学習モデルをcore-ML用モデルへconvertするファイル(convert.py)
追記；regression.pyでも変換しているので不要かも知れないが、現状これで動作しているのでこのままにする(.mlmodelへの変更は必要)

上記ファイルを実行する場合はpython 3.8.10環境下で実施してください。下記モジュールものインストールが必要です。
```bash
pip install scikit-learn==1.1.2
```
```bash
pip install numpy pandas sklearn
```
```bash
pip install coremltools
```
