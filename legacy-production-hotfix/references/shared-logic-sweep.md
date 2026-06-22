# 同源逻辑扫描

修改前必须执行同源逻辑扫描，避免只修一个入口导致其他重复逻辑漏改。

## 精确搜索

优先搜索：

- 函数名、组件名、hook 名、service 名、utils 名。
- 接口路径、接口方法名、请求参数、响应字段。
- 配置 key、枚举值、状态码、错误码、业务 code。
- 页面文案、按钮文案、toast 文案、错误提示。
- storage key、event key、埋点名、路由名、页面名。
- 类型名、interface、model 字段。

## 语义搜索

继续查找长得不完全一样但表达同一业务规则的逻辑：

- 相同状态判断，例如 `status === xxx`。
- 相同业务类型判断，例如 `sceneType`、`bizType`、`orderType`。
- 重复的数据映射、字段兜底、金额/时间/状态展示。
- 重复的请求参数拼装。
- 重复的 feature flag 或平台判断。

## 分类判断

将发现结果分类：

- shared logic：同一业务规则，应优先改公共位置。
- copied logic：历史复制，应考虑同步修复或收敛。
- intentional divergence：看起来相似但业务场景不同，不应合并。
- uncertain duplication：无法确认，先列待确认项。

## 输出要求

```markdown
**同源逻辑扫描**
已搜索：
- 

发现位置：
- `path`：关系说明

判断：
- 应一起修改：
- 不应修改：
- 待确认：
```
