# 资源清单 · 古小圆 古法桂圆肉

> 目录：`E:\视频号\guxiaoyuan-longan\`

## 一、结构（所有产品通用）

```
guxiaoyuan-longan\
├─ execution-plan.md   执行方案：参数、时间轴、步骤、积分止损、验收、合规
├─ prompts.md          可直接复制的提示词
├─ resources.md        有什么、缺什么（本文件）
├─ assets\             素材：产品照、首帧图、尾帧截图（生成前就有）
├─ output\             产出：视频片段、成片、封面（生成/剪辑后才有）
└─ compliance\         合规：证照、授权、包装背面（商用才需要）
```

## 二、素材 assets（现状 ✅ 3 张）

| 文件 | 内容 | 用途 |
|---|---|---|
| `assets\product-01-packaging-tray.jpg` | 手持一包，内衬食品级托盘，约 15 片果肉 | 核对包装；可做插入镜 |
| `assets\product-02-pulp-closeup-14jin.jpg` | 手捧金黄大片果肉，“14 斤鲜龙眼烘焙约 1 斤果肉” | **实拍插入镜首选**（裁文字后 1.2 秒） |
| `assets\product-03-package-front-pitted.jpg` | 包装正面，“古小圆·古法桂圆肉”“无核免剥” | 核对卖点；可抠图做画中画 |
| `assets\firstframe-pavilion.jpg` | **首帧定稿**：凉亭群像，已裁掉豆包水印，1480×2632 ≈ 9:16 | 上传即梦做段 1 |
| `assets\firstframe-pavilion-v1.jpg` / `-v2.jpg` | 两张候选原图（v2 已裁水印后为定稿） | 备选 |

**还缺（P0）**

| 文件 | 怎么来 |
|---|---|
| `assets\tail-01.jpg` | 即梦出 clip-01 后，暂停截最后一帧 |
| `assets\tail-02.jpg` | 即梦出 clip-02 后，暂停截最后一帧 |

## 三、产出 output（还缺）

| 文件 | 说明 |
|---|---|
| `output\clip-01.mp4` / `clip-02.mp4` / `clip-03.mp4` | 即梦生成，各 5 秒 |
| `output\guxiaoyuan-longan-15s-v1.mp4` | 剪映合成后的成片（改版递增 v2、v3） |
| `output\cover-9x16.jpg` | 1080×1920 竖屏封面 |

音频（配音、环境音）直接用剪映音效库，不单独建文件夹。

## 四、合规 compliance（商用才需要）

| 文件 | 为什么 |
|---|---|
| `compliance\package-back.jpg`（配料表、净含量、生产商、SC 编号） | “14 斤出 1 斤”要有依据 |
| `compliance\spec.txt`（一包几片、净含量、建议零售价） | 台词“一包”“贵点”要对得上 |
| `compliance\business-license.jpg` / `food-license.jpg` | 平台投放审核 |
| `compliance\ad-label.md` | 广告需可识别 |
| `compliance\portrait-authorization.pdf` / `venue-authorization.pdf` | 用真人照片或实景别墅才需要 |

## 五、命名规范

`类型-序号-描述.扩展名`

- 素材：`product-01-packaging-tray.jpg`、`firstframe-pavilion.jpg`、`tail-01.jpg`
- 产出：`clip-01.mp4`、`guxiaoyuan-longan-15s-v1.mp4`、`cover-9x16.jpg`

## 六、现在只缺 3 样（P0）

1. `assets\tail-01.jpg` ← clip-01 出片后截图
2. `assets\tail-02.jpg` ← clip-02 出片后截图
3. `output\clip-01.mp4`、`clip-02.mp4`、`clip-03.mp4` ← 即梦生成

## 七、断点记录（2026-11-06 19:53 暂停）

**已完成**
- 首帧图定稿：`assets\firstframe-pavilion.jpg`（1480×2632 ≈ 9:16，已裁掉豆包水印）
- 三段提示词 + 段 1 运镜微调已写进 `prompts.md`
- 进度自检脚本：`E:\视频号\status.ps1`

**卡点**
- 即梦新版界面：点左下「+ 参考内容」上传首帧图后无反应
- 待排查：① 是否在「视频生成」模式 ② 图片是否先落到「资产库」 ③ 换 Chrome/Edge 无痕、或直接拖拽
- 界面现状：模型 Seedance 2.0 mini、比例 16:9、720P、时长显示 0:45 —— 都要改

**下次继续**
1. 打开 https://jimeng.jianying.com ，确认在「视频生成」
2. 上传 `assets\firstframe-pavilion.jpg`，提示词前加「以 @图片1 作为视频首帧。」
3. 参数改：Seedance 2.0 ｜ 9:16 ｜ 1080P ｜ 5 秒
4. 粘 `prompts.md` 第二节（段 1）→ 生成 → 存 `output\clip-01.mp4` → 截 `assets\tail-01.jpg`
5. 积分：右上显示 120（比原以为的 20 宽松，但仍先跑段 1 验证）
