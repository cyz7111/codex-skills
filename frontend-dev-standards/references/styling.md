# Styling

用于样式、布局、响应式、视觉状态和设计系统一致性。

## 基本规则

- 沿用项目现有样式方案：Tailwind、CSS Modules、Sass、CSS-in-JS、组件库 tokens 等。
- 优先使用现有 spacing、color、radius、shadow、typography token。
- 不随手发明新的颜色、阴影、圆角和断点。
- 避免全局样式污染；修改 global CSS 前确认影响范围。
- 保证 hover、focus、active、disabled、loading 状态完整。

## 布局

- 固定格式 UI 使用稳定尺寸约束，例如 grid tracks、aspect-ratio、min/max width。
- 文本不能溢出容器或遮挡相邻内容；长词、长数字、长路径要测试。
- 移动端优先检查换行、按钮拥挤、表格横向滚动、弹窗高度和底部操作区。
- 不用 viewport-width 驱动字体大小；字号跟随设计系统层级。

## 可访问性

- 可点击元素必须是 button、a 或具备正确键盘语义的组件。
- 图标按钮要有 accessible label 或 tooltip。
- 表单控件要有关联 label、错误状态和描述。
- 弹窗、菜单、抽屉要考虑 focus、Esc、遮罩点击和滚动锁定。

## 视觉验收

UI 改动完成后尽量使用浏览器验证：

- desktop 和 mobile 至少各看一个关键视口。
- 检查 loading、empty、error、long text。
- 检查交互后布局是否跳动。
