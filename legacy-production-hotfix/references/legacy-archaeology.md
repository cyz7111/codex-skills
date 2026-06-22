# 历史逻辑考古

## 调查顺序

1. 先找入口：
   - 页面、路由、小程序页面配置、微应用入口、华为元服务配置或平台入口。
2. 再找数据链路：
   - 页面组件 -> 状态管理/hooks -> service/api -> request client -> 环境配置 -> 响应处理。
3. 再找业务配置：
   - constants、config、feature flags、渠道配置、页面 schema、枚举、文案、跳转配置。
4. 最后查历史：
   - `git log --oneline -- <file>`
   - `git blame <file>`
   - `git show <commit>`
   - `git log -S <keyword>`
   - `git log -G <regex>`

## 重点线索

- `TODO`、`FIXME`、`兼容`、`临时`、`历史`、`灰度`、`fallback`、`deprecated`。
- 接口字段重命名、状态码兼容、空值兜底、平台条件编译。
- 旧平台分支、渠道分支、环境分支、用户角色分支。
- 近期发版、配置变更、接口 schema 变更、依赖升级。

## 输出要求

- 将事实和推断分开。
- 对每个关键判断尽量提供文件路径或 git 证据。
- 不要因为某段逻辑看起来旧就删除它；先确认它服务的旧业务路径。
