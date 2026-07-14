---
tags: [术语]
术语名称: SOC
分类: 光伏
掌握程度: 初识
英文全称: State of Charge
中文释义: 电池荷电状态
相关术语: 锂电池, BMS, DOD
创建时间: 2026-07-14
---

# SOC — 电池荷电状态

## 定义

电池**当前剩余电量占总容量的百分比**。0% = 放空，100% = 满电。是户储系统中最基础的监控指标。

## 详细解释

- SOC = 剩余电量 / 额定容量 × 100%
- 通过 BMS（电池管理系统）实时监测电压/电流/温度来计算
- 不是直接测出来的，是估算的，精度影响系统运行策略
- 和 DOD（放电深度）互为对应：DOD = 100% - SOC

## 类比理解

像**手机电池百分比**：
- 你手机右上角显示的"78%"就是 SOC
- 户储系统里的 SOC 概念一模一样，只是电池大了几百倍

## 关联概念

- **BMS** → 电池管理系统，负责精确计算 SOC
- **DOD** → 放电深度（电池用了多少）
- **锂电池** → 户储最常用的电池类型，SOC 估算比铅酸更复杂

## 实际应用场景

- 户储 APP 上显示的"剩余电量 X%"
- 充放电策略：SOC 低时启动充电，SOC 高时停止充电
- 加纳经常停电的场景下，SOC 决定你还能撑多久

## 学习笔记 / 疑问

- [ ] SOC 估算有哪些主流算法？（库仑计数 / 开路电压法 / 卡尔曼滤波）
- [ ] 长期没校准的 SOC 会漂移吗？怎么校正？

## 参考来源

- [Texas Instruments: Battery SOC Measurement](https://www.ti.com/lit/an/slyt778/slyt778.pdf)
- [Battery University: State of Charge](https://batteryuniversity.com/article/bu-903-how-to-measure-state-of-charge)
