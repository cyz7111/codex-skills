# Codex Skills

一组自定义的 [OpenAI Codex CLI](https://github.com/openai/codex) Skills，用于增强 Codex 的能力。

## 包含的 Skills

### release-checklist-skill

发版检查清单生成器。针对前端项目，自动分析仓库变更，生成实用的发版检查清单，重点关注：

- 旧业务逻辑稳定性
- 变更影响分析
- 误发 / 漏发风险检查
- Go / No-go 判断
- 回滚方案

### frontend-dev-standards

日常前端开发协作协议。用于新增或修改前端页面、组件、样式、交互、表单、列表、路由、状态管理、接口集成、测试和代码审查，重点关注：

- 先识别大型项目现有模式，再小步实现
- 优先复用已有组件、hooks、API client、类型和样式 token
- 覆盖 loading、empty、error、disabled、long text、permission、mobile 等边界状态
- 按需读取组件、样式、数据状态、测试和 review reference，避免一次性加载过多上下文
- 完成后输出已验证内容和剩余风险

## 安装

将本仓库克隆到本地后，运行同步脚本将 skills 安装到 Codex 默认目录：

```bash
git clone https://github.com/<your-username>/codex-skills.git ~/Developer/Personal/codex-skills
cd codex-skills
chmod +x sync.sh
./sync.sh
```

`sync.sh` 会将所有 skill 同步到 `~/.codex/skills/`。

## 使用方式

在 Codex CLI 中直接调用：

```
使用 $release-checklist-skill 为当前前端仓库准备一份发版就绪检查清单
```

```
使用 $frontend-dev-standards 协助实现这个前端需求，先识别项目现有模式，再实现并检查边界状态
```

## 目录结构

```
codex-skills/
├── README.md
├── sync.sh                          # 同步脚本，将 skills 安装到 ~/.codex/skills/
├── frontend-dev-standards/
│   ├── SKILL.md                     # 前端开发协作协议
│   ├── agents/
│   │   └── openai.yaml              # OpenAI agent 接口配置
│   └── references/
│       ├── component-patterns.md    # 组件、页面、表单、列表规范
│       ├── project-probe.md         # 大型项目快速探测
│       ├── review-checklist.md      # 前端 code review 清单
│       ├── state-and-data.md        # 请求、缓存和状态管理
│       ├── styling.md               # 样式、布局和可访问性
│       └── testing.md               # 测试与验证策略
└── release-checklist-skill/
    ├── SKILL.md                     # Skill 定义和提示词
    └── agents/
        └── openai.yaml              # OpenAI agent 接口配置
```

## 自定义

你可以参照 `release-checklist-skill` 的结构创建新的 skill：

1. 新建一个 `<skill-name>/` 目录
2. 编写 `SKILL.md` 定义 skill 的行为和提示词
3. 在 `agents/` 下添加对应的 agent 配置
4. 运行 `./sync.sh` 同步到本地 Codex

## License

MIT
