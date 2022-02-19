
# {backtick}

<!-- badges: start -->
[![Project Status: Concept – Minimal or no implementation has been done yet, or the repository is only intended to be a limited example, demo, or proof-of-concept.](https://www.repostatus.org/badges/latest/concept.svg)](https://www.repostatus.org/#concept)
[![R-CMD-check](https://github.com/matt-dray/backtick/workflows/R-CMD-check/badge.svg)](https://github.com/matt-dray/backtick/actions)
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

Leave an issue or provide a PR for suggestions or additions.
