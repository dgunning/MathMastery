# Unit 1 Review and Practice Test (Part 2)

### Complete your Unit 1 mastery with this second part of your review guide 

## Key Concepts Review (Continued)

### 8. Solving Quadratic Equations

**Simple explanation:** "Quadratic equations can be solved using several methods: factoring, the quadratic formula, completing the square, and the square root property."

**Key methods reviewed:**
- **Factoring:** Set the equation to zero, factor, and use the zero product property
- **Quadratic formula:** x = [-b ± √(b² - 4ac)]/2a
- **Completing the square:** Convert to the form (x - h)² = k
- **Square root property:** If x² = k, then x = ±√k

**Example 1:** Solve 3x² - 12 = 0 using the square root property
```
3x² - 12 = 0
3x² = 12
x² = 4
x = ±2
```

**Example 2:** Solve x² - 6x + 5 = 0 by factoring
```
x² - 6x + 5 = 0
(x - 5)(x - 1) = 0
x = 5 or x = 1
```

**Example 3:** Solve 2x² - 5x - 3 = 0 using the quadratic formula
```
a = 2, b = -5, c = -3
x = [5 ± √(25 + 24)]/4
x = [5 ± √49]/4
x = [5 ± 7]/4
x = 3 or x = -1/2
```

**When to use each method:**
- **Factoring:** When the quadratic is easily factored
- **Quadratic formula:** For any quadratic, especially when factoring is difficult
- **Completing the square:** When converting to vertex form or deriving the quadratic formula
- **Square root property:** When the quadratic is in the form ax² + c = 0 (no x-term)

### 9. The Discriminant

**Simple explanation:** "The discriminant is the expression b² - 4ac inside the square root in the quadratic formula. It tells us the number and type of solutions without having to fully solve the equation."

**Key concepts reviewed:**
- **Positive discriminant:** Two distinct real roots
- **Zero discriminant:** One repeated real root (double root)
- **Negative discriminant:** Two complex conjugate roots (no real solutions)

**Example 1:** Analyze the roots of 3x² + 2x - 1 = 0
```
a = 3, b = 2, c = -1
Discriminant = 2² - 4(3)(-1) = 4 + 12 = 16 > 0
The equation has two distinct real roots
```

**Example 2:** Analyze the roots of x² - 6x + 9 = 0
```
a = 1, b = -6, c = 9
Discriminant = (-6)² - 4(1)(9) = 36 - 36 = 0
The equation has exactly one repeated real root
```

**Example 3:** Analyze the roots of 2x² + x + 5 = 0
```
a = 2, b = 1, c = 5
Discriminant = 1² - 4(2)(5) = 1 - 40 = -39 < 0
The equation has two complex conjugate roots and no real solutions
```

**Graphical interpretation:**
- **Positive discriminant:** Parabola crosses the x-axis at two points
- **Zero discriminant:** Parabola is tangent to the x-axis at one point
- **Negative discriminant:** Parabola doesn't intersect the x-axis

### 10. Determining a Quadratic Equation from Its Roots

**Simple explanation:** "Given the roots of a quadratic equation, we can work backwards to find the equation using the factored form."

**Key concepts reviewed:**
- **Basic formula:** If roots are r and s, the equation is a(x - r)(x - s) = 0
- **Complex roots:** If the roots are complex conjugates p ± qi, the equation has real coefficients
- **Repeated roots:** If the root r occurs twice, the equation is a(x - r)² = 0
- **Vieta's formulas:** For ax² + bx + c = 0 with roots r and s, r + s = -b/a and rs = c/a

**Example 1:** Find a quadratic equation with roots 3 and -5
```
(x - 3)(x - (-5)) = 0
(x - 3)(x + 5) = 0
x² + 2x - 15 = 0
```

**Example 2:** Find a quadratic equation with roots 2 + i and 2 - i
```
(x - (2 + i))(x - (2 - i)) = 0
(x - 2 - i)(x - 2 + i) = 0
((x - 2) - i)((x - 2) + i) = 0
(x - 2)² - i² = 0
(x - 2)² + 1 = 0
x² - 4x + 4 + 1 = 0
x² - 4x + 5 = 0
```

**Example 3:** Find a quadratic equation with integer coefficients with roots 1/3 and -2
```
(x - 1/3)(x - (-2)) = 0
(x - 1/3)(x + 2) = 0
Multiply by 3 to clear fractions:
3(x - 1/3)(x + 2) = 0
(3x - 1)(x + 2) = 0
3x² + 6x - x - 2 = 0
3x² + 5x - 2 = 0
```

### 11. Solving Linear-Quadratic Systems

**Simple explanation:** "A linear-quadratic system consists of one linear equation and one quadratic equation. Solving means finding the point(s) where the line and parabola intersect."

**Key concepts reviewed:**
- **Substitution method:** Express y from the linear equation and substitute into the quadratic
- **Elimination method:** Manipulate equations to eliminate one variable
- **Number of solutions:** 0, 1, or 2 points of intersection
- **Graphical interpretation:** Visualizing the intersection of a line and a parabola

**Example 1:** Solve the system { y = x + 2, y = x² - 2 }
```
Substitute: x + 2 = x² - 2
Rearrange: 0 = x² - x - 4
Factor: 0 = (x - 2)(x + 2)
x = 2 or x = -2
When x = 2: y = 4
When x = -2: y = 0
Solutions: (2, 4) and (-2, 0)
```

**Example 2:** Solve the system { y = 3x - 1, y = x² - x + 3 }
```
Substitute: 3x - 1 = x² - x + 3
Rearrange: 0 = x² - 4x + 4
Factor: 0 = (x - 2)²
x = 2
When x = 2: y = 5
Solution: (2, 5)
```

**Example 3:** Solve the system { 2x + y = 1, x² + y = 5 }
```
From first equation: y = 1 - 2x
Substitute: x² + (1 - 2x) = 5
Rearrange: x² - 2x - 4 = 0
Using quadratic formula: 
x = [2 ± √(4 + 16)]/2 = [2 ± √20]/2 = [2 ± 2√5]/2 = 1 ± √5
When x = 1 + √5: y = 1 - 2(1 + √5) = -1 - 2√5
When x = 1 - √5: y = 1 - 2(1 - √5) = -1 + 2√5
Solutions: (1 + √5, -1 - 2√5) and (1 - √5, -1 + 2√5)
```

## Unit 1 Practice Test

### Section 1: Factoring and Functions

1. Factor completely: 4x² - 25

2. Factor completely: 6x² - 7x - 5

3. Find the domain of f(x) = √(x + 3) - 2

4. Evaluate g(x) = |x² - 4| at x = -3

5. If f(x) = 2x - 3 and g(x) = x² + 1, find (f ∘ g)(2)

### Section 2: Quadratic Functions

6. Find the vertex of f(x) = -2x² + 8x - 9

7. Convert x² + 6x + 11 to vertex form by completing the square

8. Find the x-intercepts of f(x) = 3x² + 5x - 2

9. Determine the range of f(x) = -4(x - 1)² + 5

10. Find the axis of symmetry and y-intercept of f(x) = -3x² + 6x + 2

### Section 3: Solving Equations and Systems

11. Solve the equation x² - 7x = -12 by factoring

12. Use the quadratic formula to solve 2x² - 5x - 3 = 0

13. Without solving, determine how many real solutions the equation 2x² + x + 3 = 0 has

14. Find a quadratic equation with roots 4 and -1/2

15. Solve the system { y = -x + 3, y = x² - 1 }

## Solutions to Practice Test

### Section 1: Factoring and Functions

1. 4x² - 25 = (2x - 5)(2x + 5)

2. 6x² - 7x - 5 = (3x + 1)(2x - 5)

3. Domain of f(x) = √(x + 3) - 2:
   We need x + 3 ≥ 0, so x ≥ -3
   The domain is [-3, ∞)

4. g(-3) = |(-3)² - 4| = |9 - 4| = |5| = 5

5. (f ∘ g)(2) = f(g(2)) = f(2² + 1) = f(5) = 2(5) - 3 = 10 - 3 = 7

### Section 2: Quadratic Functions

6. For f(x) = -2x² + 8x - 9:
   h = -b/(2a) = -8/(2(-2)) = -8/-4 = 2
   k = f(2) = -2(2)² + 8(2) - 9 = -8 + 16 - 9 = -1
   Vertex: (2, -1)

7. x² + 6x + 11
   Complete the square for x² + 6x: (x + 3)²
   x² + 6x + 9 - 9 + 11
   (x + 3)² + 2
   Vertex form: (x - (-3))² + 2

8. For f(x) = 3x² + 5x - 2:
   3x² + 5x - 2 = 0
   Using the quadratic formula:
   x = [-5 ± √(25 + 24)]/6 = [-5 ± √49]/6 = [-5 ± 7]/6
   x = 1/3 or x = -2
   x-intercepts: (1/3, 0) and (-2, 0)

9. For f(x) = -4(x - 1)² + 5:
   Since a = -4 < 0, this is a downward-facing parabola
   The vertex is at (1, 5), which is the maximum value
   Range: (-∞, 5]

10. For f(x) = -3x² + 6x + 2:
    Axis of symmetry: x = -b/(2a) = -6/(2(-3)) = -6/-6 = 1
    y-intercept: f(0) = -3(0)² + 6(0) + 2 = 2

### Section 3: Solving Equations and Systems

11. x² - 7x = -12
    x² - 7x + 12 = 0
    (x - 3)(x - 4) = 0
    x = 3 or x = 4

12. 2x² - 5x - 3 = 0
    a = 2, b = -5, c = -3
    x = [5 ± √(25 + 24)]/4 = [5 ± √49]/4 = [5 ± 7]/4
    x = 3 or x = -1/2

13. For 2x² + x + 3 = 0:
    Discriminant = 1² - 4(2)(3) = 1 - 24 = -23 < 0
    Since the discriminant is negative, the equation has no real solutions

14. If roots are 4 and -1/2:
    (x - 4)(x - (-1/2)) = 0
    (x - 4)(x + 1/2) = 0
    x² - 4x + x/2 - 4(1/2) = 0
    x² - 7x/2 - 2 = 0
    Multiply by 2: 2x² - 7x - 4 = 0

15. Substituting y = -x + 3 into y = x² - 1:
    -x + 3 = x² - 1
    -x + 4 = x²
    0 = x² + x - 4
    0 = (x + 2)(x - 1)
    x = -2 or x = 1
    When x = -2: y = -(-2) + 3 = 2 + 3 = 5
    When x = 1: y = -(1) + 3 = 2
    Solutions: (-2, 5) and (1, 2)

## Study Tips for Unit 1 Test

1. **Review all formulas:** Make a formula sheet with key equations for quadratics, vertex formula, quadratic formula, etc.

2. **Practice factoring:** This fundamental skill is used throughout the unit.

3. **Recognize patterns:** Learn to identify special cases like difference of squares, perfect square trinomials, etc.

4. **Graph interpretation:** Practice analyzing quadratic graphs and connecting algebraic solutions to graphical features.

5. **Check solutions:** Always verify your solutions by substituting back into the original equations.

6. **Organize your work:** Show all steps clearly to make it easier to spot and correct errors.

7. **Study strategically:** Focus more time on topics you find challenging.

8. **Real-world connections:** Review application problems involving quadratics (e.g., projectile motion, area/perimeter, profit/cost).

## Final Thoughts

This review covers the main concepts from Unit 1: Characteristics of Functions. The key to success is regular practice and connecting different concepts together. Remember that quadratic functions and their properties form the foundation for many advanced topics in mathematics.

If there are specific areas you're still struggling with, don't hesitate to ask for additional help and practice problems in those areas.
