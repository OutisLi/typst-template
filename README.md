# PKU Thesis Typst 简化模板

这是基于 [pku-typst](https://github.com/pku-typst/pkuthss-typst) 的简化版本，适用于平时的正式学术记录。

## 简化内容

相比完整版，去掉了：
- 封面页（盲审版/正常版）
- 版权声明页
- 中英文摘要页
- 致谢页
- 原创性声明和授权说明页

保留了：
- 目录
- 图表列表（插图、表格、代码）
- 正文样式（字体、行距、页眉页脚）
- 三线表组件
- 代码块组件
- 参考文献（GB/T 7714-2015）
- 附录支持

## 使用方法

```bash
typst compile main.typ --font-path fonts
```

## 主要功能

```typst
// 三线表
#booktab(
  columns: 3,
  caption: "表格标题",
  [表头1], [表头2], [表头3],
  [内容1], [内容2], [内容3],
)

// 代码块
#codeblock(
  ```python
  code here...
  ```
  caption: "代码标题",
)

// 附录
#appendix()
```

## 后续迁移至毕业论文

将 `main.typ` 中的正文内容复制至完整版 `pku-typst/template/main.typ` 的对应位置即可。
