---
tags: [术语]
术语名称: Token
分类: AI
掌握程度: 初识
英文全称: Token
中文释义: 词元 / 令牌
相关术语: LLM, Transformer, Tokenizer
创建时间: 2026-07-14
---

# Token — 词元

## 定义

大语言模型处理文本时的**最小基本单位**。一句话不是按"字"或"词"输入的，而是先被切分成 token，再送入模型。

## 详细解释

- Token 不一定是完整的词——可能是一个子词、一个字母、甚至一个标点
- 英文大约 1 token ≈ 0.75 个词，中文 1 token ≈ 1.5 个汉字
- 模型的"上下文窗口"（如 128K tokens）就是指能同时处理多少个 token
- Token 也是计费单位（API 按 token 算钱）

## 类比理解

像**乐高积木**：
- Token 是最小的积木块，不能拆得更小
- 一句话 = 一堆积木搭成的造型
- 模型的能力上限 = 一次能拿到多少块积木（上下文窗口）

## 关联概念

- **Tokenizer** → 把文本切分成 token 的工具（不同模型有不同的切法）
- **Context Window** → 模型一次能看多少 token（影响能处理多长的文章）
- **LLM** → 输入输出都以 token 为单位

## 实际应用场景

- 你问我"帮我写一份户储方案"→ 这条指令大概 20-50 tokens
- 模型回复的质量受上下文窗口限制
- API 计费：输入 tokens + 输出 tokens

## 学习笔记 / 疑问

- [ ] DeepSeek-V4 的上下文窗口是多少？
- [ ] 中文 tokenizer 和英文有什么不同？

## 参考来源

- [OpenAI: Tokenizer 在线工具](https://platform.openai.com/tokenizer)
- [HuggingFace: What are Tokens?](https://huggingface.co/docs/tokenizers/en/concepts)
