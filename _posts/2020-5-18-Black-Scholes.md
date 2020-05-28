---
layout: post
title: Black-Scholes equation
tags: 
- FE 
- Probability
---

<script src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML" type="text/javascript"></script>

**本記事の目的**<br>
確率過程からブラックショールズ方程式の理解と応用まで

**参考文献**<br>
特筆がなければ、
* フィナンシャルエンジニアリング(ジョン・ハル著)

その他に、
* ファイナンスのための確率解析(S.E. シュリーブ著)
* [数理手法VI](https://ocwx.ocw.u-tokyo.ac.jp/course_11403/)
* [Aicia Solid Project](https://www.youtube.com/watch?v=NE1W0wJH8q8) 
を適宜参照する。


## 1. 株価変動モデル

### 1.1 ウィーナー過程
- ブラウン運動とも呼ばれる。
- 仮定：一年後の「価格変動」が、$$\phi(0,1) $$に従う($$\phi(\mu, \sigma $$ )。 ($$\mu, \sigma$$はそれぞれ平均と標準偏差)
- $$\delta t$$ 後には$$\phi(0,\delta t)$$

$$\begin{equation}
\delta x = \epsilon \sqrt{\delta t}
\end{equation}$$

ここで，$$\epsilon 〜 \phi(0,1) $$ . 


### 1.2 一般化したウィーナー過程：

$$\begin{equation}
dx = adt + bdz
\end{equation}$$

- a:ドリフト率
- b:標準偏差


$$\begin{equation}
\delta x = a\delta t + b \epsilon \sqrt{\delta t}
\end{equation}$$

### 1.3 伊藤過程


$$\begin{equation}
dx = a(x,t) dt + b(x,t)dt
\end{equation}$$



$$\begin{equation}
\delta x = a(x,t)\delta t + b(x,t) \epsilon \sqrt{\delta t}
\end{equation}$$



### 1.4 株価の推移過程

株価が一般的なウィーナー過程に従う仮定は妥当か？
- ボラティリティが0のウィーナー過程は線形増加であり、
これは利回り(ボラティリティを考えた場合は期待利回り、期待変動幅)に対応する。
しかし実際の投資家は株価の値によらず同等な利回りを要求すると考えた方が妥当。
- よってこの仮定は修正する必要がある。


期待収益率を定数として次のように定義する。

$$\begin{equation}
\mu = \frac{期待ドリフト(=dS. 率ではない.)}{S} 
\end{equation}$$


$$dt$$における$$S$$の増減の期待値は$$\mu S$$。
ドリフト率を$$\mu S$$と定義する。
$$\begin{equation}
dS = \mu S dt 
\end{equation}$$

言い換えると、$$S$$の増減/$$S$$ は $$\mu$$。
$$\begin{equation}
\frac{dS}{S} = \mu dt
\end{equation}$$
である。



$$\begin{equation}
d S=\mu S d t+\sigma S d z
\end{equation}$$


$$\begin{equation}
\frac{d S}{S]=\mu d t+\sigma d z
\end{equation}$$

ただし，$$z$$は標準ウィーナー過程に従う。
$$\sigma$$を株価のボラティリティ(すなわちと呼ぶ。


(Sは幾何ブラウン運動に従うため、ドリフト率が定数であるウィナー過程ではない。したがって、より一般的な伊藤過程の一種であるが，
一方で「変動率(dS/S)がウィナー過程に従う」という表現は正しい. 
「変動率」の変動($$\delta (\frac{\delta S}{S}))  = a \delta t + b\delta z$$ ? )

### 1.5 Ito's Lemma

$$\begin{equation}
dx = a(x,t) dt + b(x,t)dt
\end{equation}$$

に対して、

$$\begin{equation}
d G=\left(\frac{\partial G}{\partial x} a+\frac{\partial G}{\partial t}+\frac{1}{2} \frac{\partial^{2} G}{\partial x^{2}} b^{2}\right) d t+\frac{\partial G}{\partial x} b d z
\end{equation}$$


## 2. Black-Scholes-Merton微分方程式

**重要な仮定**
- **「デリバティブのポジションと株式のポジションからなる無リスクポートフォリオの収益は裁定機械がないなら、無リスク金利$$r$$と等しくないといけない」**
- 共通の不確実要因を持っている「原資産価格とデリバティブ価格には完全な相関がある」


株価を$$S$$とし、それによるデリバティブの価格を$$f$$とする。

**複製ポートフォリオ** <br>

株式買い
コールオプション売り
の二つの点が考えられる。[^1]

[^1]:シュリーブ本(1巻)では、コールオプションの複製を債券と株式の保有により行っている。債券は無リスク金利に従うものとして仮定されているため、「オプション=債券+株式」と、「債券(無リスク金利)＝オプション-株式」 の違いであり、設定は同じ。





$$\begin{equation}
d S=\mu S d t+\sigma S d z
\end{equation}$$

に対してIto's Lemmaより

$$\begin{equation}
d f=\left(\frac{\partial f}{\partial S} \mu S+\frac{\partial f}{\partial t}+\frac{1}{2} \frac{\partial^{2} f}{\partial S^{2}} \sigma^{2} S^{2}\right) d t+\frac{\partial f}{\partial S} \sigma S d z
\end{equation}$$

が成立する。


$$\begin{equation}
\Pi=-f+\frac{\partial f}{\partial S} S
\end{equation}$$

$$\begin{equation}
\Delta \Pi=-\Delta f+\frac{\partial f}{\partial S} \Delta S
\end{equation}$$

一方で，ポートフォリオは無リスク金利に従う変化をしなければならない。(無裁定機会)

$$\begin{equation}
\Delta \Pi=r \Pi \Delta t
\end{equation}$$


$$\begin{equation}
\left(\frac{\partial f}{\partial t}+\frac{1}{2} \frac{\partial^{2} f}{\partial S^{2}} \sigma^{2} S^{2}\right) \Delta t=r\left(f-\frac{\partial f}{\partial S} S\right) \Delta t
\end{equation}$$


したがって、

$$\begin{equation}
\frac{\partial f}{\partial t}+r S \frac{\partial f}{\partial S}+\frac{1}{2} \sigma^{2} S^{2} \frac{\partial^{2} f}{\partial S^{2}}=r f
\end{equation}$$

が成立する。

個々のオプションは、境界条件を設定し微分方程式を解くことで得られる(リスク中立評価の議論でも可能)。

コールオプション[^2]

[^2]:ここでは価格を基準としたオプションを考えている(プライスBSモデル)。金利のオプションでは金利を対象とするためコールとプットオプションが逆になる(イールドモデル)。例えば、金利のコールオプションは金利が基準の金利を超えた時に行使される。一方でこの時債権の価格は下がる方向である。したがって、満期時に注目し、価格を軸にとると、(債券や株式における)プットオプションのグラフとなる。これらを境界条件として微分方程式を解くと，PUTとCALLの式が逆になる。

与える境界条件：

$$\begin{equation}
f=\max (S-K, 0) \quad \text (t=T)
\end{equation}$$


$$\begin{equation}
c=S_{0} N\left(d_{1}\right)-K e^{-r T} N\left(d_{2}\right)
\end{equation}$$




### リスク中立評価法について


リスク中立評価法の導入の流れとして，
1. 無裁定機会を仮定
2. 導出されたBlack-Scholes-Merton微分方程式にリスク選好パラメータ($$\mu$$)が含まれていない。
3. したがって、リスク選好に関係なくプライシングされる。
4. その中でもリスク中立評価が計算しやすい。

<br>




