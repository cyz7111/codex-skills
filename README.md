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

## 目录结构

```
codex-skills/
├── README.md
├── sync.sh                          # 同步脚本，将 skills 安装到 ~/.codex/skills/
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
