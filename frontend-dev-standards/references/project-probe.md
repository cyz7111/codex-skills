# Project Probe

用最小上下文识别前端项目事实，避免在大型仓库里盲目全量读取。

## 优先查看

- `package.json`：框架、脚本、依赖、包管理器线索。
- 构建配置：`vite.config.*`、`next.config.*`、`nuxt.config.*`、`webpack.config.*`、`tsconfig.json`。
- 入口与路由：`src/app`、`src/pages`、`src/routes`、`src/router`、`app/`、`pages/`。
- 共享层：`components`、`ui`、`hooks`、`lib`、`utils`、`services`、`api`、`store`。
- 质量工具：`eslint`、`biome`、`prettier`、`vitest`、`jest`、`playwright`、`cypress` 配置。

## 搜索策略

- 用 `rg --files` 找文件，不用递归打开目录。
- 用需求关键词、路由名、组件名、接口路径、文案片段查相似实现。
- 先看同目录和相邻业务模块，再看全局共享模块。
- 对 monorepo，先确认当前 app/package，再进入对应 workspace。

## 判断优先级

1. 当前文件所在模块的现有模式。
2. 相邻页面或组件的模式。
3. 全局共享组件和工具层的模式。
4. 框架官方常见模式。

当这些冲突时，优先局部一致性，除非局部代码明显过时或存在真实缺陷。
