<p align="center">
<img src="https://fastly.jsdelivr.net/gh/miaoermua/static@main/images/CatWrt_bannerlogo.jpg">
</p>

<p align="center">
<b>CatWrt</b>
</p>

<div align="center">

客制化 OpenWrt 智能网关

[安装应用](https://www.miaoer.net/posts/network/catwrt-install-application) | [CatWrt 博客](https://www.miaoer.net/posts/network/catwrt) | [❤️ 支持喵二](https://www.miaoer.net/sponsor)

<!---  [![](https://img.shields.io/badge/blog-@CatWrt.svg)](https://www.miaoer.net/network/catwrt)  --->

[![](https://img.shields.io/github/v/release/miaoermua/CatWrt)](https://github.com/miaoermua/CatWrt/releases)
[![](https://img.shields.io/docker/stars/miaoer/catwrt-repo)](https://hub.docker.com/r/miaoer/catwrt-repo)
[![](https://img.shields.io/docker/image-size/miaoer/catwrt-repo)](https://hub.docker.com/r/miaoer/catwrt-repo)

[![Stars](https://m3-markdown-badges.vercel.app/stars/3/3/miaoermua/CatWrt)](https://github.com/miaoermua/CatWrt)
[![Issues](https://m3-markdown-badges.vercel.app/issues/1/2/miaoermua/CatWrt)](https://github.com/miaoermua/CatWrt/issues)
[![Support](https://ziadoua.github.io/m3-Markdown-Badges/badges/Sponsor/sponsor1.svg)](https://www.miaoer.net/sponsor)
[![COPYING](https://ziadoua.github.io/m3-Markdown-Badges/badges/LicenceGPLv2/licencegplv23.svg)](https://github.com/miaoermua/CatWrt/blob/main/COPYING)

</div>

***

🐧 CatWrt 仓库是软件源 Repo 发行版仓库，仅存二级制文件，软件源服务器使用 Caddy 部署。
源码请转到 [miaoermua/LEDE](https://github.com/miaoermua/lede) & [miaoermua/catwrt_base](https://github.com/miaoermua/catwrt_base) 审查源代码和编译详情。

## 项目

> 致，所有 CatWrt 用户的一封信。
>
> 项目发展遇到瓶颈，OpenWrt 已经发展到近 2026 年，社区主线已经转上了最新的技术栈（luci2 + nft + fw4），此项目本意是为了改善自己和部分群友的体验设计打造，如今旧的技术栈仅剩下 luci lua 的流畅性（不知道为什么 luci2 的 csr 这么这么慢）以及 Lean 大佬的驱动优化。总之，如果此项目后续更新符合你的需求，可以继续使用，否则我推荐你使用 [immoralwrt](https://immortalwrt.org/)。
>
> 感谢一路以来的支持❤️。
> miaoer



- **👍 获得高校用户，开源社区开发者的青睐，用于互相交流 OpenWrt 知识**<br>

✅ 验证学生：WHU，HUST，CSU，HDU，JXUST，GDUFS，ZJUT…… 等高校...<br><br>

- **🪅 不包含商业收费项目，拥抱自由软件，轻松部署私有应用**<br>

- **🆙 可用性 ++，追求性能和可靠性，高效享用 OpenWrt**<br>

- **📦 CatWrt 软件源，使用 opkg 原生安装，学习 Linux 就此开始...**<br><br>


<details>
  <summary>注:</summary>
  <p>1. 本项目未和高校官方开展活动合作，学生认证数据来源于：社区用户所提供或与其共享的数据（侵联删）。</p>
  <p>2. 项目是自由软件你可以随意使用或更改，所有操作都归用户所有，不提倡用于商业用途。</p>
</details>

***

## 开源

CatWrt 基于开源的 [Lean's LEDE](https://github.com/coolsnowwolf/lede) 仓库编译的 OpenWrt(LEDE) 发行版；本仓库是存储 CatWrt 的二进制软件包的仓库，如果你需要相关源码和修改项，可查看发布博客留下的链接和本仓库提交 Releases 更新描述的源码地址。

项目是使用和上游一致的许可证，源码编译过程完全可信，通过源码动手能编译出一致的 CatWrt；固件中绝不含任何后门和可以监控或者劫持你的 TLS/SSL 闭源软件，CatWrt 已对所有 LEDE 修改均已展示并开源，SSL 安全是互联网最后的壁垒，安全干净才是固件应该做到的。

源码编译参考 [miaoermua/catwrt_base](https://github.com/miaoermua/catwrt_base) 遵守 [GPL2.0](https://github.com/miaoermua/CatWrt/blob/main/COPYING) 协议，二次开发需要标注出处，二次开发导致的问题本人概不负责。

![Open-source-examples](https://fastly.jsdelivr.net/gh/miaoermua/static@main/blog/23-02-28/opensource.jpg)



<details>
  <summary>📁 二进制包文件对应仓库中编译结果：</summary>
  <pre><code>～/lede/bin/packages = miaoermua/CatWrt/

～/lede/bin/targets = miaoermua/CatWrt/targets

# 对应的目录是基于 catwrt_base 的默认目录，即 /home/lede &amp; /home/catwrt_base
</code></pre>
</details>

***

## 软件源

> **😍 使用 [Cattools](https://www.miaoer.net/posts/blog/cattools) 可快速配置软件源，无需下列繁琐配置。**



假如使用前已经刷新列表 `opkg update` 请先在终端 `rm -f /var/lock/opkg.lock` 清理掉默认腾讯源的索引文件，再将源索引填入 CatWrt 发行版软件源中再刷新。

如果不可用无法连接，可以在底部寻找分流源的使用方法示例，当然你也可以在使用之前就测试每一个可用的源，请你使用之前保证合理使用不滥用资源。

- 分流节点: https://raw.miaoer.net/CatWrt
- Github: https://github.catwrt.eu.org
- Vercel: https://vercel.catwrt.eu.org
- Netlify: https://netlify.catwrt.eu.org
- Vercel (Cloudflare Proxy): https://cfvercel.catwrt.eu.org
- Netlify (Cloudflare Proxy): https://cfnetlify.catwrt.eu.org


**x86-64**

传统 x86 软路由 （仅支持 x86_64/AMD64/64 位；不支持 x86_32/386/32 位），发行版本：[v24.9](https://www.miaoer.net/posts/network/CatWrt.v24.9.amd64)

默认 vercel 源样例：

```conf
src/gz openwrt_core https://vercel.catwrt.eu.org/targets/x86/64/packages
src/gz openwrt_base https://vercel.catwrt.eu.org/x86_64/base
src/gz openwrt_luci https://vercel.catwrt.eu.org/x86_64/luci
src/gz openwrt_packages https://vercel.catwrt.eu.org/x86_64/packages
src/gz openwrt_routing https://vercel.catwrt.eu.org/x86_64/routing
src/gz openwrt_telephony https://vercel.catwrt.eu.org/x86_64/telephony
```

**mt7621**

小米/红米 AC2100，新路由 3（Newifi_d2）等...，发行版本：[v24.9](https://www.miaoer.net/posts/network/CatWrt.v24.9.mt7621)

默认 vercel 源样例：

```conf
src/gz openwrt_core https://vercel.catwrt.eu.org/targets/mt7621/packages
src/gz openwrt_base https://vercel.catwrt.eu.org/mt7621/base
src/gz openwrt_luci https://vercel.catwrt.eu.org/mt7621/luci
src/gz openwrt_packages https://vercel.catwrt.eu.org/mt7621/packages
src/gz openwrt_routing https://vercel.catwrt.eu.org/mt7621/routing
src/gz openwrt_telephony https://vercel.catwrt.eu.org/mt7621/telephony
```

<p><strong>mt798x</strong></p>
<p>支持 TP-link TL-XDR 4288/6086/6088，Xiaomi Redmi AX6000，Xiaomi WR30U，jcg q30，GL.inet mt3000，H3C nx30Pro</p>
<p>发行版本：<a href="https://www.miaoer.net/posts/network/catwrt.v23.8">v23.8</a></p>
<pre><code>src/gz openwrt_core https://vercel.catwrt.eu.org/targets/mt798x/filogic/packages
src/gz openwrt_base https://vercel.catwrt.eu.org/mt798x/base
src/gz openwrt_luci https://vercel.catwrt.eu.org/mt798x/luci
src/gz openwrt_packages https://vercel.catwrt.eu.org/mt798x/packages
src/gz openwrt_routing https://vercel.catwrt.eu.org/mt798x/routing
src/gz openwrt_telephony https://vercel.catwrt.eu.org/mt798x/telephony
</code></pre>
<p><strong>aarch64_generic</strong></p>
<p>电犀牛 r66s，友善 r5s *（适配问题仅可用机型）*</p>
<p>发行版本：<a href="https://www.miaoer.net/posts/network/catwrt-v22.12-arm">v22.12</a></p>
<pre><code>src/gz openwrt_core https://vercel.catwrt.eu.org/targets/rockchip/armv8/packages
src/gz openwrt_base https://vercel.catwrt.eu.org/aarch64_generic/base
src/gz openwrt_luci https://vercel.catwrt.eu.org/aarch64_generic/luci
src/gz openwrt_packages https://vercel.catwrt.eu.org/aarch64_generic/packages
src/gz openwrt_routing https://vercel.catwrt.eu.org/aarch64_generic/routing
src/gz openwrt_telephony https://vercel.catwrt.eu.org/aarch64_generic/telephony
</code></pre>



### 换源

#### 换可用源

有时候其他镜像软件源无法访问时可以选择 Cloudflare 替换一下域名即可。

例如在 vercel 的域名前面加入 cf 即可使用 Cloudflare CDN 源。

```mirrors
src/gz openwrt_core https://cfvercel.catwrt.eu.org/targets/mt798x/filogic/packages
src/gz openwrt_base https://cfvercel.catwrt.eu.org/mt798x/base
src/gz openwrt_luci https://cfvercel.catwrt.eu.org/mt798x/luci
src/gz openwrt_packages https://cfvercel.catwrt.eu.org/mt798x/packages
src/gz openwrt_routing https://cfvercel.catwrt.eu.org/mt798x/routing
src/gz openwrt_telephony https://cfvercel.catwrt.eu.org/mt798x/telephony
```

#### 使用历史（LTS）源

在博客发布的都是长期支持版本 (LTS) 历史版本都加在 /history 文件夹内。

以 CatWrt.v22.2 x86_64 示例：

```mirrors
src/gz openwrt_core https://history-packages-netlify.catwrt.eu.org/v22.2/targets/x86/64/packages
src/gz openwrt_base https://vercel.catwrt.eu.org/history/v22.2/x86_64/base
src/gz openwrt_luci https://history-packages-netlify.catwrt.eu.org/v22.2/x86_64/luci
src/gz openwrt_oui https://history-packages-netlify.catwrt.eu.org/v22.2/x86_64/oui
src/gz openwrt_packages https://history-packages-netlify.catwrt.eu.org/v22.2/x86_64/packages
src/gz openwrt_routing https://history-packages-netlify.catwrt.eu.org/v22.2/x86_64/routing
src/gz openwrt_telephony https://history-packages-netlify.catwrt.eu.org/v22.2/x86_64/telephony
```

## 如何部署 CatWrt

- [访问 CatWrt 发布博客](https://www.miaoer.net/posts/network/catwrt)
- [Github Release](https://github.com/miaoermua/CatWrt/releases)
- [1Panel 中跑 CatWrt 旁路网关 Docker 版 OpenWrt](https://www.miaoer.net/posts/network/1panel-deploy-catwrt-rootfs)

更多 CatWrt 教程实用小技巧，请关注博客: [喵二の小博客](https://www.miaoer.net)

---

## 部署软件源

你可以将此仓库部署在你自己的服务器上搭建属于自己的软件源，这样可以在内外网拉取软件包时获得一个不错的速度，需要在部署后按照上诉机型的软件源修改为你的地址并对应路径即可食用。

<br>

- 使用 Windows 部署、Linux 桌面环境。

[在自己电脑或服务器部署 CatWrt 软件源，使用 Caddy 部署](https://www.miaoer.net/posts/network/caddy-deploy-catwrt-repo)

- 使用 docker-compose 部署，将编排文件拉取到本地使用启动

```bash
$ wget https://fastly.jsdelivr.net/gh/miaoermua/CatWrt@main/docker-compose.yml

$ docker compose up -d  
# docker-compose up -d
```

或使用 Docker 命令直接部署

```bash
$ docker run -d -p 1480:80 miaoer/catwrt-repo:latest
```

- 使用 Linux 面板部署

将此仓库通过 `git clone https://github.com/miaoermua/CatWrt.git` 拉取到服务器网站目录里，修改面板网站目录到 CatWrt 中；

***

欢迎预览 [博客](https://www.miaoer.net) 多多评论交流，欢迎使用后留下你的评论和 Star！

i18n: [EN](https://github.com/miaoermua/CatWrt/blob/main/README_EN.md)

## 感谢

[![Vercel](https://ziadoua.github.io/m3-Markdown-Badges/badges/Vercel/vercel1.svg)](https://vercel.com/) [![Netlify](https://ziadoua.github.io/m3-Markdown-Badges/badges/Netlify/netlify1.svg)](https://netlify.com/) [![](https://ziadoua.github.io/m3-Markdown-Badges/badges/Cloudflare/cloudflare2.svg)](https://www.cloudflare-cn.com/) [![](https://ziadoua.github.io/m3-Markdown-Badges/badges/Github/github1.svg)](https://www.github.com/)

本项目 CDN 加速及安全防护由 Tencent EdgeOne 赞助

[![Tencent EdgeOne](https://edgeone.ai/media/34fe3a45-492d-4ea4-ae5d-ea1087ca7b4b.png)](https://edgeone.ai/zh?from=github)

本项目及周边云服务器部分由 DartNode 提供。（系统更新，工具获取等…）

[![Powered by DartNode](https://dartnode.com/branding/DN-Open-Source-sm.png)](https://dartnode.com "Powered by DartNode - Free VPS for Open Source")
