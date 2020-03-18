title: Probability Distribution 
tags: 
- StatsML
- JSSC1
---


分布の導出とまとめ



## アーラン分布

$$
X_{1}, \dots, X_{n}
$$
$$\frac{1}{\lambda}$$ 

$$X=X_{1}+\cdots+X_{n}$$


$$\begin{equation}
f(x)=\left\{\begin{array}{ll}\frac{\lambda^{n}}{(n-1) !} x^{n-1} e^{-\lambda x} & (x \geq 0) \\ 0 & (x<0)\end{array}\right.
\end{equation}$$


$$\begin{equation}
\begin{array}{l}E[X]=\frac{n}{\lambda} \\ V[X]=\frac{n}{\lambda^{2}}\end{array}
\end{equation}$$



[参考](http://www.data-arts.jp/course/probability_distribution/index.html)