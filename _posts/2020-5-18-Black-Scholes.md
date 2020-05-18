---
layout: post
title: Black-Scholes equation
tags: 
- FE 
- Probability
---

<script src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML" type="text/javascript"></script>
確率過程からブラックショールズ方程式の理解と応用まで

特筆がなければ、
* フィナンシャルエンジニアリング (John Hull) 
その他に、
* ファイナンスのための確率解析
* [数理手法VI](https://ocwx.ocw.u-tokyo.ac.jp/course_11403/)
* [Alicia Solid Project](https://www.youtube.com/watch?v=NE1W0wJH8q8) 
を適宜参照する。


## 1. 株価変動モデル

### 1.1 ウィナー過程

ブラウン運動

$$\begin{equation}
dx = adt + bdz
\end{equation}$$

### 一般化したウィナー過程：

$$\begin{equation}
dx = adt + bdz
\end{equation}$$



$$\begin{equation}
\delta x = a\delta t + b \epsilon \sqrt{\delta t}
\end{equation}$$

## 1.2 伊藤過程


$$\begin{equation}
dx = a(x,t) dt + b(x,t)dt
\end{equation}$$


$$\begin{equation}
\delta x = a(x,t)\delta t + b(x,t) \epsilon \sqrt{\delta t}
\end{equation}$$


## 2. Black-Scholes-Merton微分方程式

- **「デリバティブのポジションと株式のポジションからなる無リスクポートフォリオの収益は裁定機械がないなら、無リスク金利rと等しくないといけない」**
  -　


