# Hermes 中文版 — 产出管理中心

> 自动同步自: Hermes Works Portal

## 全局统计

| 指标 | 数值 |
|------|------|
| 总文件 | **419** |
| 总大小 | **110.2 MB** |
| 工作天数 | **17 天** |
| 首次产出 | **2026-06-24** |
| 最近产出 | **2026-07-05** |

## 产出日志

`dataview
TABLE fileCount AS "文件数", htmlCount AS "HTML", imgCount AS "图片", docCount AS "文档", codeCount AS "代码"
FROM "02-项目管理/1.Hermes 中文版/日志"
SORT date DESC
`

## 最近7天

`dataview
TABLE fileCount AS "文件数", date AS "日期"
FROM "02-项目管理/1.Hermes 中文版/日志"
WHERE date >= date(today) - dur(7 days)
SORT date DESC
`

## 链接

- [打开 Works Portal 网页画廊](file:///D:/桌面/Hermes 中文社区版/works-portal/index.html)

> 最后同步: 2026-07-11 22:30:13