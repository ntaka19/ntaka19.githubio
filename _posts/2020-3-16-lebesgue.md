---
layout: post
title: Lebesgue Integral
tags: 
- Probability
---

<script src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML" type="text/javascript"></script>
本ポストは測度論的確率論に関する個人的な定義・定理のまとめ(暗記した方がよい事項)。
主に、吉田洋一先生の「ルベグ積分入門」([^1])を参考にして作成されている。

また[^1]をもとにしたpdfのテキスト([^2])があるので、そちらも適宜参考にしたい。

最後に、私自身の解釈も含まれているためことを注意されたい(後にアップデートされる)。


## 1. 外測度、ルベーグ測度

### 1.1 外測度 (Outer measure) $$m^{\ast}(A)$$ 

$$\begin{equation}
0 \leq m^{\ast}(A) \leq +\infty 
\label{eq:11}\tag{C1}
\end{equation}$$

$$\begin{equation}
A \subseteq B \text{ならば} m^{\ast}(A) \leqq m^{\ast}(B) 
\label{eq:12}\tag{C2}
\end{equation}$$

$$\begin{equation}
m^{\ast}\left(\bigcup_{i=1}^{\infty} A_{i}\right) \leq \sum_{i=1}^{\infty} m^{^ast}\left(A_{i}\right)
\label{eq:13}\tag{C3}
\end{equation}$$

$$\begin{equation}
m^{\ast}([a,b)) = b-a
\label{eq:14}\tag{C4}
\end{equation}$$

$$\begin{equation}
\text{点集合AとBが合同ならば，} m^{\ast}(A) = m^{\ast}(B)
\label{eq:14}\tag{C4}
\end{equation}$$

Eq. $$\eqref{eq:11}$$.
<!-- (ref) -->

## 2. 可測関数 


## 3. ルベグ積分 
正値単関数で定理を各種導出し，それらをもとに，正値関数の定理を導出する(正値関数が導出できれば，一般の関数についても導出可能)．


### 3.x 単調収束定理



## 測度空間 Lebesgue 


[^1]: [ルベグ積分入門](https://www.amazon.co.jp/dp/B06XGHV4SR/ref=dp-kindle-redirect?_encoding=UTF8&btkr=1)
[^2]: [ルベーグ積分の基礎のキソ](http://www.math.titech.ac.jp/~kawahira/courses/lebesgue.pdf)
