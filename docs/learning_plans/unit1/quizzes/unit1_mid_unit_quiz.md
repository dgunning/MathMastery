# Unit 1: Characteristics of Functions - Mid-Unit Quiz

## Multiple Choice (2 points each)

1. Which of the following expressions is equivalent to $(x^2 - 9)(x^2 + 9)$?
   a) $x^4 - 81$
   b) $x^4 - 18x^2 + 81$
   c) $x^4 + 81$
   d) $(x - 3)(x + 3)(x^2 + 9)$

2. The domain of the function $f(x) = \frac{x+3}{x^2-4}$ is:
   a) All real numbers
   b) All real numbers except $x = 2$ and $x = -2$
   c) All real numbers except $x = 0$
   d) All real numbers except $x = 4$ and $x = -4$

3. If $f(x) = 2x^2 - 3x + 1$, then $f(-2)$ equals:
   a) $3$
   b) $11$
   c) $-5$
   d) $15$

4. The vertex of the parabola $y = -2(x - 3)^2 + 4$ is:
   a) $(3, 4)$
   b) $(3, -4)$
   c) $(-3, 4)$
   d) $(4, 3)$

5. Which of the following represents a function?
   a) $x^2 + y^2 = 9$
   b) $y = |x|$
   c) $x = |y|$
   d) $x = y^2$

## Short Answer (3 points each)

6. Factor completely: $3x^3 - 12x$

7. Find the domain and range of the function $f(x) = \sqrt{x - 2}$.

8. If $f(x) = x^2 - 4x + 7$, find $f(a + 2)$.

9. Find the vertex of the quadratic function $f(x) = -3x^2 + 12x - 5$.

10. Determine whether the relation {(1, 3), (2, 5), (3, 3), (4, 7)} represents a function. Explain your answer.

## Extended Response (5 points each)

11. Given the function $f(x) = 2x^2 - 8x + 7$:
    a) Rewrite the function in vertex form by completing the square.
    b) Identify the vertex.
    c) Determine whether the function has a maximum or minimum value, and state that value.
    d) Sketch the graph of the function, labeling the vertex and y-intercept.

12. A ball is thrown upward from a height of 6 feet with an initial velocity of 32 feet per second. The height $h$ of the ball after $t$ seconds is given by the function $h(t) = -16t^2 + 32t + 6$.
    a) What is the maximum height reached by the ball?
    b) At what time does the ball reach its maximum height?
    c) When does the ball hit the ground?
    d) Explain what the domain and range of this function represent in the context of this problem.

## Answer Key

### Multiple Choice
1. a) $x^4 - 81$
   * $(x^2 - 9)(x^2 + 9) = x^4 - 81$ (difference of squares)

2. b) All real numbers except $x = 2$ and $x = -2$
   * The denominator $x^2-4$ can be factored as $(x-2)(x+2)$, which equals zero when $x = 2$ or $x = -2$

3. b) $11$
   * $f(-2) = 2(-2)^2 - 3(-2) + 1 = 2(4) + 6 + 1 = 8 + 6 + 1 = 15$

4. a) $(3, 4)$
   * In the form $y = a(x - h)^2 + k$, the vertex is $(h, k)$

5. b) $y = |x|$
   * This is a function because each input $x$ has exactly one output $y$

### Short Answer
6. $3x(x^2 - 4) = 3x(x - 2)(x + 2)$
   * Factor out the GCF $3x$, then use the difference of squares formula

7. Domain: $x \geq 2$; Range: $y \geq 0$
   * The expression under the square root must be non-negative, so $x - 2 \geq 0$, which gives $x \geq 2$
   * The square root function always gives non-negative values, so the range is $y \geq 0$

8. $f(a + 2) = (a + 2)^2 - 4(a + 2) + 7 = a^2 + 4a + 4 - 4a - 8 + 7 = a^2 + 3$
   * Substitute $a + 2$ for $x$ in the function and simplify

9. Vertex: $(2, 7)$
   * $f(x) = -3x^2 + 12x - 5$
   * $x = -b/(2a) = -12/(-6) = 2$
   * $f(2) = -3(4) + 12(2) - 5 = -12 + 24 - 5 = 7$

10. Not a function because the input value 3 is paired with two different output values (3 and 7).
    * For a relation to be a function, each input value must correspond to exactly one output value

### Extended Response
11. a) $f(x) = 2x^2 - 8x + 7$
       $= 2(x^2 - 4x) + 7$
       $= 2(x^2 - 4x + 4 - 4) + 7$
       $= 2(x - 2)^2 - 8 + 7$
       $= 2(x - 2)^2 - 1$
    
    b) Vertex: $(2, -1)$
    
    c) The function has a minimum value of -1 (since $a = 2 > 0$, the parabola opens upward)
    
    d) [Graph should show a parabola opening upward with vertex at (2, -1) and y-intercept at (0, 7)]

12. a) Maximum height: 22 feet
       * $h(t) = -16t^2 + 32t + 6$
       * $t = -b/(2a) = -32/(-32) = 1$ second
       * $h(1) = -16(1)^2 + 32(1) + 6 = -16 + 32 + 6 = 22$ feet
    
    b) The ball reaches maximum height at $t = 1$ second
    
    c) The ball hits the ground when $h(t) = 0$:
       * $-16t^2 + 32t + 6 = 0$
       * Using the quadratic formula: $t = \frac{-32 \pm \sqrt{32^2 - 4(-16)(6)}}{2(-16)} = \frac{-32 \pm \sqrt{1024 + 384}}{-32} = \frac{-32 \pm \sqrt{1408}}{-32}$
       * $t \approx -0.18$ or $t \approx 2.18$
       * Since negative time doesn't make sense in this context, the ball hits the ground at approximately 2.18 seconds
    
    d) Domain: $0 \leq t \leq 2.18$ (time from when the ball is thrown until it hits the ground)
       Range: $0 \leq h \leq 22$ (heights from ground level to maximum height)
