
# {backtick}

<!-- badges: start -->
[![Project Status: Concept – Minimal or no implementation has been done yet, or the repository is only intended to be a limited example, demo, or proof-of-concept.](https://www.repostatus.org/badges/latest/concept.svg)](https://www.repostatus.org/#concept)
[![R-CMD-check](https://github.com/matt-dray/backtick/workflows/R-CMD-check/badge.svg)](https://github.com/matt-dray/backtick/actions)
[![Blog
post](https://img.shields.io/badge/rostrum.blog-post-008900?labelColor=000000&logo=data%3Aimage%2Fgif%3Bbase64%2CR0lGODlhEAAQAPEAAAAAABWCBAAAAAAAACH5BAlkAAIAIf8LTkVUU0NBUEUyLjADAQAAACwAAAAAEAAQAAAC55QkISIiEoQQQgghRBBCiCAIgiAIgiAIQiAIgSAIgiAIQiAIgRAEQiAQBAQCgUAQEAQEgYAgIAgIBAKBQBAQCAKBQEAgCAgEAoFAIAgEBAKBIBAQCAQCgUAgEAgCgUBAICAgICAgIBAgEBAgEBAgEBAgECAgICAgECAQIBAQIBAgECAgICAgICAgECAQECAQICAgICAgICAgEBAgEBAgEBAgICAgICAgECAQIBAQIBAgECAgICAgIBAgECAQECAQIBAgICAgIBAgIBAgEBAgECAgECAgICAgICAgECAgECAgQIAAAQIKAAAh%2BQQJZAACACwAAAAAEAAQAAAC55QkIiESIoQQQgghhAhCBCEIgiAIgiAIQiAIgSAIgiAIQiAIgRAEQiAQBAQCgUAQEAQEgYAgIAgIBAKBQBAQCAKBQEAgCAgEAoFAIAgEBAKBIBAQCAQCgUAgEAgCgUBAICAgICAgIBAgEBAgEBAgEBAgECAgICAgECAQIBAQIBAgECAgICAgICAgECAQECAQICAgICAgICAgEBAgEBAgEBAgICAgICAgECAQIBAQIBAgECAgICAgIBAgECAQECAQIBAgICAgIBAgIBAgEBAgECAgECAgICAgICAgECAgECAgQIAAAQIKAAA7)](https://www.rostrum.blog/2022/02/19/backtick/)
<!-- badges: end -->

Is the backtick key, <kbd>`</kbd>, [missing from your keyboard](https://commons.wikimedia.org/wiki/File:Italian_Keyboard_layout.svg)? Has it been [mapped for use by other software](https://twitter.com/ShinyBlackShoe/status/1494987656924737537?s=20&t=QlPfudvICLEaFcyTSoE9QQ)? Scratch your backtick itch with {backtick}.

{backtick} is a very tiny R package containing functions that insert backticks into R scripts and R Markdown documents. It's intended for use as an RStudio Addin.

Install with:

```r
install.packages("remotes")  # if not yet installed
remotes::install_github("matt-dray/backtick")
```

On restart, the functions will be available to you from the RStudio Addins menu. You could also set them to keyboard shortcuts.

With these functions you can:

* insert a single backtick (<code>`</code>)
* surround selected text with backticks (<code>selection</code> becomes <code>\`selection\`</code>)
* surround selected text with backticks for execution as inline R code in an R Markdown document (<code>selection</code> becomes <code>\`r selection\`</code>)
* surround selected text with backticks for execution as an R code chunk in an R Markdown document (<code>selection</code> is surrounded by <code>\`\`\`{r}</code> above and <code>\`\`\`</code> below)

This gif shows each one in action:

<img src='man/figures/backtick.gif' alt='Gif of RStudio script pane. An RStudio addin called backtick is being used to insert a single backtick, surround selected text with bacticks, surround selected text with backticks as inline R code, and surround selected text with an R code chunk.' width=75%>

Leave an issue or provide a PR for suggestions or additions.
