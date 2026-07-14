---
tags: [术语]
术语名称: Embedding
分类: AI
掌握程度: 初识
英文全称: Embedding / Vector Embedding
中文释义: 向量嵌入
相关术语: RAG, Token, Semantic Search
创建时间: 2026-07-14
---

# Embedding — 向量嵌入

## 定义

把文字（词/句/段落）转换成一串数字（向量），让**语义相近的文字在数字空间里距离也近**。是 RAG、语义搜索的基础技术。

## 详细解释

- "猫" → [0.2, -0.5, 0.8, ...]
- "狗" → [0.3, -0.4, 0.7, ...] （和猫距离近）
- "冰箱" → [-0.1, 0.9, -0.3, ...] （和猫距离远）
- 相似度通过"余弦相似度"计算，范围 -1 到 1
- Embedding 模型专做这件事（如 text-embedding-3-small）

## 类比理解

把**地址换成经纬度**：
- 文字 = "天安门"（不便于比较远近）
- Embedding = 天安门的经纬度 (39.90, 116.39)
- 你能直接算"天安门离故宫多远"，Embedding 能算"猫离狗多近"

## 关联概念

- **RAG** → 用 Embedding 找最相关的文档片段
- **Semantic Search** → 语义搜索（搜"肺炎"也能找到"肺部感染"）
- **Vector Database** → 专门存 Embedding 向量的数据库

## 实际应用场景

- RAG 中的"查找相关文档"步骤
- 推荐系统（找内容相似的产品/文章）
- 户储方案知识库搜索

## 学习笔记 / 疑问

- [ ] Embedding 的向量维度一般多大？（常见 768 / 1536）
- [ ] 中文和英文 Embedding 模型通用吗？

## 参考来源

- [OpenAI: Embeddings Overview](https://platform.openai.com/docs/guides/embeddings)
- [Cohere: What are Embeddings?](https://cohere.com/embeddings)
