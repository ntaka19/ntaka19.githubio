---
layout: post
title: Black-Scholes equation
tags: 
- FE 
- Probability
---

<script src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML" type="text/javascript"></script>
Below shows brief derivation of Black-Scholes equation


References:
* フィナンシャルエンジニアリング (John Hull)
* ファイナンスのための確率解析
* [数理手法VI](https://ocwx.ocw.u-tokyo.ac.jp/course_11403/)
* [Alicia Solid Project](https://www.youtube.com/watch?v=NE1W0wJH8q8) 



## 1. 株価変動モデル

### 1.1 ウィナー過程


$$\begin{equation}
dx = adt + bdz
\end{equation}$$



$$\begin{equation}
\delta x = \delta dt + b \epsilon \sqrt{\delta t}
\end{equation}$$



## Black-Scholes-Merton微分方程式

- **デリバティブのポジションと株式のポジションからなる無リスクポートフォリオの収益は裁定機械がないなら、無リスク金利rと等しくないといけない**


