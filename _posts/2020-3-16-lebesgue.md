---
layout: post
title: Lebesgue Integral
tags: 
- Probability
---

<script src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML" type="text/javascript"></script>
本ポストは測度論的確率論に関する個人的な定義・定理のまとめ([ゼミ](https://www.ms.u-tokyo.ac.jp/~yasuyuki/sem.htm)ならおそらく暗唱しなければならない事項．ただし厳密性は重視しない．)．
主に、吉田洋一先生の「ルベグ積分入門」([^1])を参考にして作成されている．
[^1]をもとにしたpdfのテキスト([^2])があるので、そちらも適宜参考にしたい．

また，途中に確率論の定義を伊藤清先生の確率論をもとに入れる予定[^3]．
最後に、私自身の解釈も含まれているためことを注意されたい(後にアップデートされる)．


## 1. 外測度、ルベーグ測度

### 1.1 外測度 (Outer measure) $$m^{\ast}(A)$$ 

まずは一次元の測度を議論する．

外測度は次の５つの条件を満たすように定義する(P. 83)，
$$\begin{equation}
0 \leq m^{\ast}(A) \leq +\infty 
\label{eq:11}\tag{C1}
\end{equation}$$

$$\begin{equation}
A \subseteq B \text{ならば} m^{\ast}(A) \leqq m^{\ast}(B) 
\label{eq:12}\tag{C2}
\end{equation}$$

$$\begin{equation}
m^{\ast}\left(\bigcup_{i=1}^{\infty} A_{i}\right) \leq \sum_{i=1}^{\infty} m^{\ast}\left(A_{i}\right)
\label{eq:13}\tag{C3}
\end{equation}$$

$$\begin{equation}
m^{\ast}([a,b)) = b-a
\label{eq:14}\tag{C4}
\end{equation}$$

$$\begin{equation}
\text{点集合AとBが合同ならば} m^{\ast}(A) = m^{\ast}(B)
\label{eq:15}\tag{C5}
\end{equation}$$

注意点として，Eq. $$\eqref{eq:13}$$で直和であることを要求しないことがある．
「なるべく広い範囲の点集合」を考えたい．
<!-- (ref) -->

ここで，外測度を次のように定義すると上記５つの条件が満たせる．

半開区間の列，
$$\left \{ I_{1},... I_{n},... \right\}$$
に対して，

$$\begin{equation}
m^{\ast}(A):=\inf \left\{ \sum_{n=1}^{\infty} \left|I_{n}\right| : A \subseteq \bigcup_{n=1}^{\infty} I_{n} \right \}
\label{eq:16}\tag{1.1}
\end{equation}$$


### 1.2. 可測集合 (P.96)


Aを決まった点集合とする．
$$B \subseteq A $$ および$$B' \subseteq A^{c} $$ であればいつでも， 

$$\begin{equation}
m^{\ast}(B \cup B') = m^{\ast}(B) + m^{\ast}(B')
\label{eq:17}\tag{1.2}
\end{equation}$$

が成立するとき，$$A$$はルベグ可測であるという．

同値な条件として，


$$X$$を任意の点集合とする時，$$A$$が可測であることは，
$$\begin{equation}
m^{\ast}(B)=m^{\ast}(B \cap A)+m^{\ast}\left(B \cap A^{c}\right)
\label{eq:18}\tag{1.3}
\end{equation}$$
が成立することである．
(Eq. $$\eqref{eq:18}$$で$$B=X\cap A, B'= X\cap A^{c}$$とおく)

可測集合の例を残しておく



### 1.2.1 可測集合族

$$\begin{equation}
\phi \in \mathcal{M}
\label{eq:121}\tag{M1}
\end{equation}$$

$$\begin{equation}
A \in \mathcal{M} \Longrightarrow A^{c} \in \mathcal{M}
\label{eq:122}\tag{M2}
\end{equation}$$

$$\begin{equation}
A_{n} \in \mathcal{M} \text{  } (n=1,2,...) \text{ならば，} \bigcup_{i=1}^{\infty} A_{i} \in \mathcal{M}
\label{eq:123}\tag{M3}
\end{equation}$$

可測集合に限らない時，一般に**加法的集合族**と呼ぶ．
$$\begin{equation}
G\text{が開集合ならば，} G \in \mathcal{M}
\label{eq:124}\tag{M4}
\end{equation}$$



さらに可測集合の場合は次が成り立つ．

例．ボレル集合族
$$\eqref{eq:121}, \eqref{eq:122},\eqref{eq:123},\eqref{eq:124}$$ を満たすあらゆる集合を考え，その交わり(="最小"のもの)をとった集合族$$\mathcal{B}$$ ．




### 1.3. ルベグ測度

$$A$$が可測であるとき，
$$
\begin{equation}
m(A) = m^{\ast}(A)
\end{equation}
$$
このとき，$$m(A)$$を$$A$$のルベグ測度と呼ぶ．

$$m(A)$$は次の条件を満たす．

$$\begin{equation}
0 \leq m(A) \leq +\infty 
\label{eq:131}\tag{L1}
\end{equation}$$

$$\begin{equation}
m\left(\bigcup_{i=1}^{\infty} A_{i}\right) \leq \sum_{i=1}^{\infty} m\left(A_{i}\right)
\label{eq:132}\tag{L2}
\end{equation}$$

$$\begin{equation}
m([a,b)) = b-a
\label{eq:133}\tag{L3}
\end{equation}$$

$$\begin{equation}
\text{点集合AとBが合同ならば} m(A) = m(B)
\label{eq:134}\tag{L4}
\end{equation}$$


外測度が満たすEq. $$\eqref{eq:12}$$ について記述がない．



## 2. 可測関数 

### 2.1. 可測関数と連続関数との関連性

$$f$$が可測集合$$A$$を定義域とする関数のとき，どの実数$$c$$に対しても，
$$
\begin{equation}
A(f(x) > c) = \{ x | x \in A, f(x) > c \}
\end{equation}
$$
が可測であるとき**$$f$$は$$A$$で可測な関数**．




### 2.2. 確率論の準備

この段階でいくつか確率論の準備ができる．
* 確率測度

* 確率変数の定義<br>
$$(\Omega,\mathcal{A},P)$$を確率空間として
扱いづらい可測空間から扱いやすい可測空間への写像

* 確率分布の定義



## 3. ルベグ積分 
正値単関数で定理を各種導出し，それらをもとに，正値関数の定理を導出する(正値関数が導出できれば，一般の関数についても導出可能)．



$$\begin{equation}
A=A_{1} \cup A_{2} \cup \cdots \cup A_{k} (i \neq j \text{ then}, A_{i} \cap A_{j}=\varnothing )
\end{equation}$$

$$\begin{equation}
a_{i}=\inf \left\{f(x) | x \in A_{i}\right\} \quad(i=1,2, \cdots, k)
\end{equation}$$

$$\begin{equation}
\mathrm{s}=a_{1} m\left(A_{1}\right)+a_{2} m\left(A_{2}\right)+\cdots+a_{k} m\left(A_{k}\right)
\end{equation}$$

$$\mathcal{s}$$を$$f$$の$$A$$における近似和と呼ぶ．
$$A$$のあらゆる分割$$\left\{A_{1}, A_{2}, \cdots, A_{k}\right\}$$について近似和をつくる．
これらの集合を$$\langle \mathcal{s} \rangle$$と表す．

ここでルベーグ積分の定義は，
$$\begin{equation}
\int_{A} f(x) d x=\sup \langle \mathcal{s}\rangle
\end{equation}$$
である．



### 3.x 単調収束定理

### 3.2 Fatouの定理 (P. 168)


$$\begin{equation}
\int_{A} \displaystyle \varliminf_{n} f_{n} (x) dx \leqq \displaystyle \varliminf_{n} \int_{A} f_{n}(x) dx
\end{equation}$$

### 3.3 Lebesgue の項別積分定理


### 3.y ルベグ積分とリーマン積分との関係

どういった状況で積分可能か？の例

## 4. 測度空間、ルベーグ＝スティルチェス積分 



[Black-Scholes post]({{ site.baseurl }}/Black-Scholes)


[^1]: [ルベグ積分入門](https://www.amazon.co.jp/dp/B06XGHV4SR/ref=dp-kindle-redirect?_encoding=UTF8&btkr=1)
[^2]: [ルベーグ積分の基礎のキソ](http://www.math.titech.ac.jp/~kawahira/courses/lebesgue.pdf)
[^3]: [確率論(岩波書店)](https://www.amazon.co.jp/%E7%A2%BA%E7%8E%87%E8%AB%96-%E5%B2%A9%E6%B3%A2%E5%9F%BA%E7%A4%8E%E6%95%B0%E5%AD%A6%E9%81%B8%E6%9B%B8-%E4%BC%8A%E8%97%A4-%E6%B8%85/dp/400007816X)
