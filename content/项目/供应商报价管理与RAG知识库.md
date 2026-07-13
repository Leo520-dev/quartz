---
created: 2026-07-11
tags: [energy-ai-os, supplier-quotation, procurement, pricing]
aliases: [供应商报价, 采购比价, RAG知识库]
---

# 📋 供应商报价管理 & RAG知识库规划

---

## 📎 模板文件

> **Excel模板：** `供应商报价模板_SupplierQuotation_Template.xlsx`
> **位置：** 桌面 / Obsidian附件目录

**包含3个Sheet：**
1. **供应商报价单** — 标准报价表格（含示例数据）
2. **填写说明** — 供应商填写指引
3. **产品分类** — 光伏/储能产品分类参考

---

## 🏗️ RAG知识库规划

### 目标

> 把供应商报价、产品资料、行业标准全部存入RAG知识库
> 以后直接问AI就能查到：**"哪个品牌的50kW逆变器最便宜？"**

### 数据来源

| 来源 | 格式 | 处理方式 |
|:----|:----|:---------|
| 供应商报价单 | Excel/PDF | AI自动提取字段 → 结构化存入 |
| 产品说明书 | PDF | OCR + 切片 → 向量化 |
| 认证证书 | PDF/图片 | OCR提取关键信息 |
| 行业标准 (IEC/GB) | PDF | 全文入库 |
| 公司经验/案例 | 文档/笔记 | Markdown → 向量化 |
| 历史报价 | Excel | 自动对比分析 |

### 技术方案

```
供应商上传Excel/PDF
    ↓
AI (DeepSeek V4) 自动提取：
  产品名 / 品牌 / 型号 / 价格 / MOQ / 交期 / 认证
    ↓
结构化数据 → SQLite/PostgreSQL（精确查询）
原始文档  → 向量数据库（ChromaDB/Qdrant）
    ↓
Hermes Agent 统一查询接口
  自然语言 → 自动选择查SQL或向量库 → 返回结果
```

### 查询示例

```
用户问：                     AI处理：
"50kW逆变器哪个最便宜"     →  SQL查询价格排序
"Huawei和Sungrow对比"      →  多文档对比分析
"找支持AFCI的逆变器"       →  向量搜索技术参数
"这个型号以前买过多少钱"   →  历史报价查询
"发一份比价报告给我"       →  自动生成对比表格
```

---

## 🔗 关联

- [[Energy AI OS 新能源AI操作系统#储能报价对比系统]] — 模块③
- [[Energy AI OS 新能源AI操作系统#产品数据库]] — 模块④
- [[Energy AI OS 新能源AI操作系统#知识库]] — 模块⑥
