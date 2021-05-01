#convert latex file to Markdown (mathjax support)

#pandoc does not support inline equaitons single $. 
sed "s/\\$/\$\$/g" $1 > tmp.tex

pandoc --standalone --mathjax tmp.tex --output test.md 

#header
echo "---
layout: post
title: Incomplete Markets
tags: 
- FE 
---

<script src=\"https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML\" type=\"text/javascript\"></script>
" > $2

cat test.md >> $2

rm tmp.tex test.md
