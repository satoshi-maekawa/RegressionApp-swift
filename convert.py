import coremltools as ct

# Core MLモデルの読み込み
coreml_model = ct.models.MLModel('Regression.mlpackage')

# Core MLモデルの変換
mlmodel_path = 'Regression.mlmodel'
coreml_model.save(mlmodel_path + '.mlpackage')

# 変換後のモデルの拡張子を変更
import os
os.rename(mlmodel_path + '.mlpackage', mlmodel_path)

# 変換後のモデルの保存
print(f'Saved Core ML model: {mlmodel_path}')
