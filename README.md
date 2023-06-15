# multivariate-linear-regression-app
重回帰分析アプリ
# 多変量重回帰分析アプリケーション

このアプリケーションは、与えられた入力データ（x1, x2, x3, x4）に基づいて目的変数（y）を予測するアプリケーションです。

swiftプログラムフォルダ以外に下記のファイルを含みます。
1.重回帰分析用の学習モデル作成ファイル(regression.py)
2.学習モデルをcore-ML用モデルへconvertするファイル(convert.py)

python 3.8.10環境下で実施してください。下記モジュールも必要です。

```bash
pip install scikit-learn==1.1.2
```
```bash
pip install numpy pandas sklearn coremltools
```
```bash
pip install coremltools
```
