# lunarVim_config

## 目录

- [lunarVim\_config](#lunarvim_config)
  - [目录](#目录)
  - [nvim 环境](#nvim-环境)
  - [Lsp 配置](#lsp-配置)

## nvim 环境

- LunarVim + NeoVide 套壳

## Lsp 配置

- 使用 `lunarVim` 自带的 `Mason` 下载 `jdtls` 实在是太慢了
- 最后还是用回了 `mfussenegger/nvim-jdtls` 做本地配置
- 需要先将 [`eclipse jdtls` 下载到本地](https://download.eclipse.org/jdtls/milestones/1.33.0/jdt-language-server-1.33.0-202402151717.tar.gz) 
  - 虽然整个文件只有40MB左右,但是Mason下载速度非常慢,直接用下载工具会快很多,如:IDM