# State And Data

用于接口集成、请求封装、缓存、状态管理和异步流程。

## 请求层

- 先查项目已有 API client、request wrapper、拦截器、错误处理和类型生成方式。
- 不绕过统一鉴权、base URL、错误格式、trace headers 或 mock 机制。
- 接口类型优先复用已有 schema、generated types 或 domain types。
- 不把接口返回结构泄漏到深层展示组件；必要时在边界做适配。

## 缓存与异步

- 如果项目使用 TanStack Query、SWR、Apollo、RTK Query 等，沿用其 key、invalidate 和 error 模式。
- mutation 后明确处理缓存更新、列表刷新、乐观更新或回滚。
- 避免竞态：路由参数变化、快速切换筛选、重复提交、组件卸载后回调。
- 长流程操作要给用户进度、禁用态或可恢复反馈。

## 状态管理

- 局部状态优先放组件内；跨组件共享再使用 context/store。
- URL 可表达的筛选、分页、tab 和搜索状态，优先查项目是否已有 URL 同步模式。
- 不把服务端状态复制进全局 store，除非项目已有清晰约定。
- 权限、feature flag、租户、语言和主题状态要从项目权威来源读取。

## 错误处理

- 用户可恢复错误要显示可操作反馈。
- 认证、权限、限流、服务端校验错误要区分处理。
- 不吞掉异常；日志和用户提示遵守项目已有规范。
