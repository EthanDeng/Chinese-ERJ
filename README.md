# 《经济研究》杂志 LaTeX 论文模板

本模板计划启动于 2019 年 3 月 28 日，完全时间未知，欢迎参与完善。。。


# 使用

推荐使用 TeX Live 2018 及之后版本进行编译，由于目前 TeX Live 2018 已经不再更新。所以用户可以通过下面几种方式获取本模板：

1. 将本仓库 clone 到本地。
2. 下载 [zip 文件](https://github.com/EthanDeng/Chinese-ERJ/archive/master.zip) 进行解压缩。
3. 手动安装宏包的方式（不推荐）

另外，由于本模板使用了 biblatex 定制《经济研究》的参考文献格式（chinese-erj），用户可以采用安装或者不安装的方式获取 biblatex-gb7714-2015 宏包。

## 不安装方式

用户可以在 CTAN 或者 Github 上搜索 biblatex-gb7714-2015，下面以 CTAN 为例。

在 [CTAN/GBT7714-2015](https://ctan.org/pkg/biblatex-gb7714-2015) 下载[最新版](http://mirrors.ctan.org/macros/latex/contrib/biblatex-contrib/biblatex-gb7714-2015.zip)，然后解压之后把所有扩展名为 cbx 和 bbx 以及 def 的文件全部复制粘贴到本地项目文件夹下（最重要的是 chinese-erj.bbx，chinese-erj.cbx，其他文件可以考虑不放入，出错的话则全部放入），也即之前所下载的 Chinese-ERJ 目录下。

## 安装方式

在 [CTAN/GBT7714-2015](https://ctan.org/pkg/biblatex-gb7714-2015) 下载[最新版](http://mirrors.ctan.org/macros/latex/contrib/biblatex-contrib/biblatex-gb7714-2015.zip)，然后解压之后把所有扩展名为 cbx 和 bbx 以及 def 的文件全部复制粘贴到（`C:\texlive\2018\texmf-dist\tex\latex\biblatex-gb7714-2015`）并选择替换覆盖，然后把剩余文件全部复制粘贴到 `C:\texlive\2018\texmf-dist\doc\latex\biblatex-gb7714-2015`下并选择替换覆盖。最后再使用管理员权限打开命令提示符（cmd），运行 `texhash` 即可。

# 编译方式

编译方式可以选择 `PDFLaTeX` 或者 `XeLaTeX`，注意一定要在编译过程中运行 biber：

1. xelatex -> biber -> xelatex -> xelatex
2. pdflatex -> biber -> pdflatex -> pdflatex