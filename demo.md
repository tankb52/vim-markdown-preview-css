# Demo

这是一份用于验证预览样式的综合文档。  
包含：标题层级、段落、链接、引用、列表、任务列表、表格、代码、公式、图片、分隔线等元素。

---

## 1. 标题与段落

### 1.1 正文段落

Markdown 预览应当具备稳定的行高与段落间距。为了观察中文断行和英文混排效果，这里加入一段稍长的文字：The quick brown fox jumps over the lazy dog, and this sentence is repeated to check line wrapping behavior in different viewport widths.

### 1.2 行内语义

这是 **加粗**、*斜体*、~~删除线~~、`inline code` 的组合示例。  
访问 [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim) 查看项目主页链接样式。

---

## 2. 引用块

> 这是一级引用。用于验证左边框、背景色、文字颜色和上下间距。
>
> 第二行引用文本，用于观察多行排版。

> 嵌套引用示例：
> > 这是二级引用内容，验证缩进与层次感。

<blockquote class="info">
  <p>这是 Info 提示块（HTML 写法），用于验证彩色提示风格。</p>
</blockquote>

<blockquote class="warn">
  <p>这是 Warn 提示块（HTML 写法）。</p>
</blockquote>

<blockquote class="danger">
  <p>这是 Danger 提示块（HTML 写法）。</p>
</blockquote>

<blockquote class="success">
  <p>这是 Success 提示块（HTML 写法）。</p>
</blockquote>

---

## 3. 列表

### 3.1 无序列表

- 第一项：苹果
- 第二项：香蕉
  - 子项 A：黄色
  - 子项 B：软糯
- 第三项：橙子

### 3.2 有序列表

1. 准备环境
2. 启动预览
3. 对照样式
   1. 看标题
   2. 看代码
   3. 看公式
4. 记录差异

---

## 4. 任务列表

- [x] 标题样式已迁移
- [x] 列表样式已迁移
- [x] 代码样式已迁移
- [ ] 进一步微调颜色
- [ ] 按个人喜好调整间距

---

## 5. 表格

| 项目 | 说明 | 状态 |
|---|---|---|
| Heading | 标题层级、字号、边距 | ✅ |
| Blockquote | 引用背景与边框 | ✅ |
| Code Block | 代码块容器风格 | ✅ |
| KaTeX | 行内/块级公式样式 | ✅ |
| Image | 图片边框与圆角 | ✅ |

---

## 6. 代码块

### 6.1 JavaScript

```javascript
function fibonacci(n) {
  if (n <= 1) return n;
  let a = 0;
  let b = 1;
  for (let i = 2; i <= n; i++) {
    const c = a + b;
    a = b;
    b = c;
  }
  return b;
}

console.log("fib(10) =", fibonacci(10));
```

### 6.2 Bash

```bash
# preview plugin
echo "hello markdown-preview"
ls -la
```

---

## 7. 数学公式（KaTeX）

行内公式示例：$E = mc^2$，以及 $\int_0^1 x^2\,dx = \frac{1}{3}$。

块级公式示例：

$$
\nabla \cdot \vec{E} = \frac{\rho}{\varepsilon_0}, \quad
\nabla \cdot \vec{B} = 0
$$

$$
f(x) = \frac{1}{\sqrt{2\pi}\sigma}
\exp\left(-\frac{(x-\mu)^2}{2\sigma^2}\right)
$$

---

## 8. 图片

> 这里使用在线图片，仅用于验证边框、圆角、居中和间距。

![sample image](https://picsum.photos/800/240)

---

## 9. 分隔线与结尾

上方和下方均有分隔线，用于验证 `hr` 样式。

---

如果你看到所有模块排版都正常，说明这版迁移已经可以用于日常预览。
