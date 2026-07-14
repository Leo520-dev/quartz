---
tags: [术语]
术语名称: Transformer
分类: AI
掌握程度: 初识
英文全称: Transformer
中文释义: 变换器 / 注意力机制架构
相关术语: LLM, Token, Attention
创建时间: 2026-07-14
---

# Transformer — 注意力机制架构

## 定义

2017 年 Google 提出的深度学习架构，核心是"自注意力机制"（Self-Attention），让模型处理一句话时能**同时关注所有词之间的关系**。几乎所有现代大语言模型（GPT、BERT、DeepSeek）都基于它。

## 详细解释

- 之前的模型（RNN/LSTM）是一个词一个词"排队"处理的，速度慢且记不住长距离关系
- Transformer 让所有词"同时进入"模型，通过注意力权重计算每个词和其他词的相关性
- 关键组件：**多头注意力**（Multi-Head Attention）+ **位置编码**（Positional Encoding）

## 类比理解

像同时看一整句话：
- RNN 像**一个字一个字读**，读到句尾可能忘了开头
- Transformer 像**整句话扫一眼**，一眼看出"它"和"小明"的关系

## 关联概念

- **Self-Attention** → 词和词之间互相打分（"谁和谁更相关"）
- **Token** → Transformer 处理的最小单位
- **LLM** → Transformer 的最大应用场景

## 实际应用场景

- 你用的 DeepSeek-V4、GPT-4 都是基于 Transformer
- 翻译、摘要、代码生成、图像生成（Vision Transformer）

## 学习笔记 / 疑问

- [ ] Attention 的计算复杂度 O(n²)，长文本怎么优化？
- [ ] 为什么要"多头"注意力？

## 参考来源

- [Vaswani et al. "Attention Is All You Need" (2017)](https://arxiv.org/abs/1706.03762)
- [3Blue1Brown 视频: Transformer 可视化解释](https://www.youtube.com/watch?v=wjZofJX0v4M)
