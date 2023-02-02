
# Buffon`s needle

### Course: Advanced Mathematics

For this problem the needle length is l,x is the minimum distance between lines and middle of the needles, $\theta$ is the angle between lines and needle and d is the distance between two parallel lines.
For this problem we have:
$$
0 \leq x     \leq \frac{d}{2}\\
$$
$$  
0 \leq \theta \leq \frac{\pi}{2}
$$
The distribution is normal so we have:
$$
p(x) = \frac{1}{b-a} \quad for \quad a \leq x \leq b
$$
So we have:
$$
p_{x}(x) =  
    \begin{cases}
        \frac{2}{d} & : 0 \le x \le \frac{2}{d} \\
        0  & : elsewhere
    \end{cases}
\\
p_{\theta}(x) =  
    \begin{cases}
        \frac{2}{\pi}  & : 0 \le \theta \le \frac{\pi}{2}\\
    0 & : elsewhere
    \end{cases}
$$
The random variables x and $\theta$ are independent so the joint probability density function is the product of two functions:
$$
p_{x,\theta}(x) =  
    \begin{cases}
        \frac{4}{\pi d}  & : 0 \le \theta \le \frac{\pi}{2},0 \le x \le \frac{2}{d}\\
    0 & : elsewhere
    \end{cases}
$$

The needles we intersect the line if:
$$
    x\le \frac{l}{2}\sin(\theta)
$$

## Case 1: Short needles $(l \le d)$

By integrating the joint probability density function over the specified limits we have:
$$
Pr = \int_{\theta = 0}^{\frac{pi}{2}}\int_{x=0}^{\frac{d}{2}\sin(\theta)} \frac{4}{\pi d}dxd\theta = \frac{2l}{d\pi}
$$

## Case 2 : Long needles $(l > d)$

Let f(x) be:
$$
f(x) = min(\frac{l}{2}\sin(\theta),\frac{d}{2})
$$
Then we have:
$$
Pr = \int_{\theta = 0}^{\frac{pi}{2}}\int_{x=0}^{f(x)} \frac{4}{\pi d}dxd\theta
$$
By integrating this equation we have the probability as:
$$
Pr = \frac{2}{\pi}\left\{\cos^{-1}(\frac{d}{l})+\frac{l}{d}\left\{1-\sqrt{1-{\frac{d}{l}}^{2}}\right\}\right\}
$$

### Estimating $\pi$

1. Count the intersections and calculate the probability

2. find the estimate for $\pi$ with the formulas for the two cases
