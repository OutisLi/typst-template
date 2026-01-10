// Simplified PKU Thesis Template - for regular academic writing
// Stripped cover, declaration, abstract, acknowledgments pages
// Retains TOC, bibliography, three-line tables, code blocks
//
// Usage: typst compile main.typ --font-path fonts

#import "lib/template.typ": *

#show: doc => conf(
  ctitle: "北京大学学位论文 Typst 模板示例",
  etitle: "Typst Template Example Document",
  cauthor: "张三",
  school: "北京大学某某学院",
  // date: (year: 2026, month: 1, day: 15), // 可选：手动指定日期，默认使用当前时间
  cheader: "北京大学博士学位论文",
  first-line-indent: 2em,
  outlinedepth: 3,
  listofimage: true,
  listoftable: true,
  listofcode: true,
  alwaysstartodd: false,
  preview: true,
  doc,
)

// ========== Main Content ==========
// Add your chapters here

= 绪论

== 研究背景

科技论文写作是学术交流的重要形式。根据 @wang2010guide 的研究，中文摘要的写作需要特别注意规范性和准确性。同时，文献排版工具的选择也很重要，如 @kopka2004guide 所述，专业的排版工具能够显著提升论文质量。

在此处撰写研究背景...

== 研究目的与意义

在此处撰写研究目的与意义...

= 相关工作

== 国内外研究现状

在此处撰写文献综述...

= 研究方法

在此处撰写研究方法...

= 实验与结果

在此处撰写实验和结果...

== 图片示例

如 @img-example 所示，这是一个写作应用的界面示例。

#figure(
  image("images/1-writing-app.png"),
  caption: "示例图片",
) <img-example>

从 @img-example 中可以看出...

== 表格示例

#booktab(
  columns: 3,
  caption: "示例三线表",
  [表头1], [表头2], [表头3],
  [内容1], [内容2], [内容3],
  [数据A], [数据B], [数据C],
)

== 代码示例

#codeblock(
  [```python
  def hello():
      print("Hello, Typst!")
  ```],
  caption: "示例代码",
)

== 公式示例

傅里叶变换定义：

$ F(omega) = integral_(-infinity)^infinity f(t) e^(-i omega t) dif t $ <ft1>

通过 @ft1 可以引用公式，例如：根据公式 @ft1，我们可以得到...

也可以使用行内公式：设 $alpha > 0$，则 $sum_(n=1)^infinity 1/n^alpha = zeta(alpha)$。

= 总结与展望

在此处撰写总结和展望...

// ========== Appendix ==========
#appendix()

= 附录

在此处添加附录内容...

// ========== Bibliography ==========
#bibliography("ref.bib", style: "gb-7714-2015-numeric")
