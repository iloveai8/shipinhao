# 模板使用说明

## 新产品开工：3 步

1. 复制整个 `_template` 文件夹 → 粘贴到 `E:\视频号\` → 改名成产品（例：`guxiaoyuan-longan`，用品牌拼音-品类拼音的小写连字符格式）
2. 依次填三个文件：`execution-plan.md` → `prompts.md` → `resources.md`
3. 把产品图丢进 `assets\`，按执行方案开始生成

## 三个文档各管什么

| 文件 | 回答什么问题 | 什么时候看 |
|---|---|---|
| `prompts.md` | 粘贴什么进模型 | 生成时 |
| `execution-plan.md` | 每一步怎么做、参数怎么选 | 全程 |
| `resources.md` | 有什么、还缺什么 | 开工前、收尾时 |

## 两个文件夹

| 文件夹 | 放什么 | 判断标准 |
|---|---|---|
| `assets\` | 产品照、首帧图、尾帧截图 | 生成之前就存在的 |
| `output\` | 视频片段、成片、封面 | 生成/剪辑之后才有的 |
| `compliance\` | 证照、授权、包装背面 | 商用才用到 |

## 命名规范

`类型-序号-描述.扩展名`（全小写、连字符分隔）

- 素材：`product-01-packaging.jpg`、`firstframe-scene.jpg`、`tail-01.jpg`
- 产出：`clip-01.mp4`、`product-slug-15s-v1.mp4`、`cover-9x16.jpg`
