---
tags: [术语]
术语名称: RAG
分类: AI
掌握程度: 初识
英文全称: Retrieval-Augmented Generation
中文释义: 检索增强生成
相关术语: LLM, Embedding, Token
创建时间: 2026-07-14
---

# RAG — 检索增强生成

## 定义

给大语言模型配一个"外挂知识库"，让它回答问题时能查实时资料，而不是只靠训练时记住的内容。

## 详细解释

- LLM 的知识在训练后就"冻结"了，不知道新信息
- RAG 的做法：你先问问题 → 系统去数据库/网页搜最相关的几段资料 → 把资料拼进提问 → LLM 基于资料回答
- 解决两个痛点：**知识过时**（不重新训练）和**幻觉**（有资料可查）

## 类比理解

像**开卷考试**：
- 普通 LLM = 闭卷考（只凭记忆回答，瞎编风险大）
- RAG = 开卷考（给你参考书，翻到相关章节再作答）
- 我自己（Roy）为你查资料写方案时，本质就在用 RAG

## 关联概念

- **Embedding** → 把文字变成向量，让系统知道哪些资料"和问题最相关"
- **LLM** → 拿到检索资料后进行推理和回答
- **Fine-tuning** → 另一种更新知识的方式（效果不同）

## 实际应用场景

- 我为你生成加纳户储方案时查实时数据
- 客服机器人查最新产品手册
- 法律/医疗 AI 查最新法规/论文

## 学习笔记 / 疑问

- [ ] RAG 和 Fine-tuning 各适合什么场景？
- [ ] 怎么保证检索到的资料质量够高？

## 参考来源

- [Lewis et al. "Retrieval-Augmented Generation for Knowledge-Intensive NLP Tasks" (2020)](https://arxiv.org/abs/2005.11401)
- [IBM: What is RAG?](https://www.ibm.com/think/topics/retrieval-augmented-generation)
