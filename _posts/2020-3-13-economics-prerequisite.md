---
layout: post
title: Microeconomics Part 1 (Reading 15)
tags: 
- CFA1
- Economics
---

<script src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML" type="text/javascript"></script>
Following article constitues my notes on prerequisite material on Ecomomics given from the CFAI and can be found [here](https://www.cfainstitute.org/-/media/documents/support/programs/cfa/prerequisite-economics-material-demand-and-supply-analysis-intro.ashx)
([^1])


[^1]: CFAI Prerequisite material

Another helpful reference is from [Mark Meldrum's (MM) set of videos](https://www.youtube.com/watch?v=pitQYVFgibs&list=PLM9WI-4yn8BIkIVB9yfFcTVKT3uO_d3hZ&index=4).
([MM video in Economics](https://www.youtube.com/watch?v=S4cKRMSyqk0&list=PLM9WI-4yn8BIkIVB9yfFcTVKT3uO_d3hZ&index=34))
([MM video in self-study](https://www.youtube.com/watch?v=6pVfMjeBPq0))


There are 3 readings in the prerequisite material. 
Notes below are from Reading 15. 

## 1. Various Profits

- Accounting profit: Net income. 
- Economic profit: "Economic profit is the result of subtracting both explicit and opportunity costs from revenue." (Investopia) 
- Normal profit : "Normal profit is a condition that exists when a company or industry's economic profit is equal to zero."



## 2. Revenue and Cost

| Revenue | Cost |
----|---- 
| Total Revenue (TR)  | Total Cost (TC) |
| Average Revenue (AR)  | Average Total Cost (ATC) [^2]|
|   | Average Fixed Cost (AFC) |
|   | Average Variable Cost (AVC) |
| Marginal Revenue (MR) | Marginal Cost (MC) |

[^2]: Total Cost = Fixed Cost + Variable Cost


Here, "Average" means averaging by supplied quantity. 
"Marginal" can be easily grasped by partial derivative by Q. For example, marginal cost is defined as, 
$$ \frac{\partial TC}{\partial Q} $$.




Below is the derivation of relationship between cost curves given in the prerequisite material:\\
*"Mathematically, when marginal cost is less than average variable cost, AVC will be decreasing. The opposite occurs when MC is greater than AVC."*

(TVC: Total Variable Cost. )

$$
\begin{aligned}
& \frac{\partial AVC}{\partial Q} = \frac{\partial }{\partial Q} \left( \frac{TVC}{Q} \right) \\
& \frac{1}{Q} \frac{\partial TVC}{\partial Q} + TVC(-\frac{1}{Q^2}) \leq 0 \\
\end{aligned}
$$

therefore, 

$$
\begin{aligned}
& \frac{\partial TVC}{\partial Q} = \frac{\partial TC}{\partial Q} \leq \frac{TVC}{Q} \\
& MC  \leq AVC
\end{aligned}
$$

From the derivation, it is easy to see that relation between MC and ATC is equivalent with AVC (AVC can also be replaced with ATC). 
Since the relation holds for opposite inequality, 
intersection between MC curve and AVC (ATC) is the miniumum point of AVC (ATC).  
(Refer to Exihibit 17 in [^1])


## 3. Shutdown point, Breakeven point , profit maximization


### 3.1 Shutdown and Breakeven point
Here, we focus on only $$TR, TVC, TFC$$. 

When,
$$
TR = TVC + TFC (\text{zero profit and loss})
$$

If $$TR < TVC + TFC $$ there is loss. Now  

* Firstly, if $$TR > TVC$$ firm should stay in market in the short run. This is because, 
変動費は全て払い，残りを固定費に充てること．
()

* However, if $$TR < TVC $$ firm should shut down production immediately (short and long run). (Shutdown point: 操業停止点).
Shutting down the firm leaves loss of $$TFC$$ (because there will be zero revenue, TVC will also be zero.) whereas if the firm keeps on going, loss $$=TFC+TVC-TR > TFC $$. 
(操業すればするほど赤字が増える)

In the long run, even what was considered fixed cost shuold be also be treated as a variable.
Therefore, shutdown occurs when 


**Breakeven points** (損益分岐点) are simply the quantity where total revenue equals total costs.


### 3.2 Profit maximization


Profit maximization occurs when,

1. the difference between total revenue (TR) and total costs (TC) is the greatest;
2. marginal revenue (MR) equals marginal cost (MC); and
3. the revenue value of the output from the last unit of input employed equals the cost of employing that input unit. (Regarding **Productivity**)

(Excerpt from prerequisite material. P.121)

1.is obvious. 
Distinguising 2 and 3 is a little confusing.

Second method concerns MR and MC only: 
"If MR exceeds MC, total profit is increased by producing more units because each successive unit adds more to total revenue than it does to total costs. If MC is greater than MR, total profit is decreased when additional units are produced. The point of profit maximization occurs where MR equals MC. 


"The third method compares the estimated cost of each unit of input to that input’s contribution with projected total revenue."
Input is defined in the production section. This method is covered in the [next article]({{ site.baseurl }}/economics-prerequisite2).

## 4. Under Perfect Competition
Under perfect competition, we assume that all are firms price takers.
Market equilibrium decides price value for every firm. Therefore price is kept constant regardless of the quantity demanded for individual firms.

It is important to distinguish between market demand curve and firm's demand curve. They are *very very different*!
(Refer to Exihibit 5 in [^1])


Analysis of shutdown and breakeven point can be done with


<!-- ![_config.yml]({{ site.baseurl }}/images/cfa1/econ-pre17.png) -->
<!-- ![_config.yml]({{ site.baseurl }}/images/cfa1/econ-pre5.png) -->


(Price taker: Agent in which )

Therefore below equation holds,

$$
\begin{equation}
Price = AR = MR
\end{equation}
$$






## 5. Under Imperfect Competition



## Other References
* [ref-jpn](https://gakureki-zero.com/breakeven-point/)


[Next article]({{ site.baseurl }}/economics-prerequisite2)
