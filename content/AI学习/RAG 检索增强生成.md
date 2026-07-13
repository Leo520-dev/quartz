# 🔍 RAG 检索增强生成

Retrieval-Augmented Generation — 让 LLM 结合外部知识。

## 工作流程

1. **索引** — 文档分块 → 向量化 → 存入向量库
2. **检索** — 用户问题 → 向量检索 → Top-K 相关块
3. **生成** — 问题 + 检索结果 → LLM 生成答案

## 关键组件

- [[Embedding 模型]]
- [[向量数据库]]
- [[Prompt 工程]]

## 进阶

- [[Agent 智能体开发]]
- 多模态 RAG
- Graph RAG

参考：[[AI 与机器学习]]、[[LangChain 入门]]
