import numpy as np
import pandas as pd
from sklearn.linear_model import LinearRegression
import coremltools as ct

# データの読み込み
data = pd.DataFrame(np.array([
    [8.2, 0, 0, 0, 0],
    [7.5, 0, 0, 2, 0],
    [7.2, 0, 30, 5, 5],
    [7.2, 0, 70, 8, 8],
    [5.6, 30, 0, 5, 8],
    [6.3, 30, 30, 8, 0],
    [8.5, 30, 70, 2, 5],
    [5.7, 60, 0, 8, 5],
    [8.9, 60, 70, 5, 0],
    [8.9, 60, 0, 2, 0],
    [3.7, 0, 0, 8, 0],
    [7.6, 0, 0, 2, 8]
]), columns=['y', 'x1', 'x2', 'x3', 'x4'])

# データの準備
X = data[['x1', 'x2', 'x3', 'x4']]
y = data['y']

# モデルの訓練
model = LinearRegression()
model.fit(X, y)

# モデルの変換
coreml_model = ct.converters.sklearn.convert(model, input_features=["x1", "x2", "x3", "x4"], output_feature_names="y")

# モデルの保存
coreml_model.save('Regression.mlpackage')
