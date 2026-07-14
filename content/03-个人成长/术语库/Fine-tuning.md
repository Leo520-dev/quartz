---
tags: [术语]
术语名称: Fine-tuning
分类: AI
掌握程度: 初识
英文全称: Fine-tuning
中文释义: 微调
相关术语: LLM, RAG, Embedding
创建时间: 2026-07-14
---

# Fine-tuning — 微调

## 定义

在一个已经训练好的大模型基础上，用特定领域的数据继续训练，让模型**更擅长某个专门任务**（如更懂户储行业、更会写合同）。

## 详细解释

- 基础模型（如 GPT-4）已经学会"通用语言能力"
- 微调 = 用少量高质量专业数据继续训练，调整模型参数
- 和 RAG 不同：微调**改变模型本身的记忆**，RAG **不改模型只查外挂资料**
- 成本较高（需要 GPU、准备数据集），但效果更"内化"

## 类比理解

像一位**全科医生进修成心脏专科**：
- 基础模型 = 医学院毕业的全科医生（什么都会一点）
- 微调 = 专门读心脏科论文＋做大量心脏手术练习
- RAG = 不改变医生，每次看病时翻《心脏病学手册》

## 关联概念

- **RAG** → 微调的对立互补方案（记在脑子里 vs 随时查资料）
- **Embedding** → 微调时也会用到向量表示
- **LLM** → 微调的对象

## 实际应用场景

- 户储行业的客服机器人（让它更懂产品参数）
- 法律文件生成（微调后写合同更规范）
- 企业私有模型（在内部数据上微调后使用）

## 学习笔记 / 疑问

- [ ] Fine-tuning 和 RAG 什么时候选哪个？
- [ ] LoRA 是什么？（高效微调的一种方法）

## 参考来源

- [HuggingFace: Fine-tuning Guide](https://huggingface.co/docs/transformers/training)
- [OpenAI: Fine-tuning Documentation](https://platform.openai.com/docs/guides/fine-tuning)
