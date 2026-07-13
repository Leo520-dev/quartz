# 🧩 PyTorch 笔记

深度学习框架 PyTorch 学习笔记。

## 核心概念

- **Tensor** — 多维数组，GPU 加速
- **Autograd** — 自动求导
- **nn.Module** — 神经网络模块

## 常用代码

```python
import torch
import torch.nn as nn

model = nn.Linear(10, 2)
optimizer = torch.optim.Adam(model.parameters())
loss_fn = nn.CrossEntropyLoss()
```

## 进阶

- 自定义 Dataset/DataLoader
- 分布式训练
- 模型导出 (TorchScript/ONNX)

参考：[[AI 与机器学习]]、[[神经网络入门]]
