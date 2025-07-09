# Unit 1 Review and Practice Test: Parent Teaching Guide

## Introduction to This Lesson

This guide provides a comprehensive review of all the concepts covered in Unit 1: Characteristics of Functions. Use it to help you consolidate your understanding before your unit test. The review is structured by topic area and includes key concepts, examples, and practice problems with solutions.

## Key Concepts Review

### 1. Factoring Techniques

**Simple explanation:** "Factoring is the process of breaking down a polynomial into a product of simpler expressions. It's the reverse of expansion."

**Key methods reviewed:**
- **Common factor:** Extract the GCF from all terms
- **Difference of squares:** a² - b² = (a + b)(a - b)
- **Perfect square trinomial:** a² + 2ab + b² = (a + b)² or a² - 2ab + b² = (a - b)²
- **General trinomials:** ax² + bx + c
  - When a = 1: Look for factors of c that sum to b
  - When a ≠ 1: Use decomposition or trial-and-error methods

**Example 1:** Factor 3x² - 12
```
3x² - 12 = 3(x² - 4) = 3(x - 2)(x + 2)
```

**Example 2:** Factor x² + 6x + 9
```
x² + 6x + 9 = (x + 3)²
```

**Example 3:** Factor 6x² + 17x + 5
```
6x² + 17x + 5
Find factors of 6 × 5 = 30 that sum to 17
6x² + 15x + 2x + 5
3x(2x + 5) + 1(2x + 5)
(2x + 5)(3x + 1)
```

### 2. Functions, Domain, and Range

**Simple explanation:** "A function is a rule that assigns each input exactly one output. The domain is the set of all valid inputs, and the range is the set of all possible outputs."

**Key concepts reviewed:**
- **Function definition:** A relation where each input has exactly one output
- **Vertical line test:** A graph represents a function if no vertical line crosses it more than once
- **Domain restrictions:** Values that make denominators zero or square roots of negative numbers
- **Range analysis:** Examining the maximum/minimum values and end behavior

**Example 1:** Find the domain of f(x) = 1/(x-3)
```
Domain: All real numbers except x = 3
```

**Example 2:** Find the domain and range of f(x) = √(x+2)
```
Domain: x ≥ -2
Range: y ≥ 0
```

**Example 3:** Find the domain and range of f(x) = x² + 4
```
Domain: All real numbers
Range: y ≥ 4
```

### 3. Function Notation and Evaluation

**Simple explanation:** "Function notation f(x) represents the output value of the function f when the input is x."

**Key concepts reviewed:**
- **Evaluating functions:** Substituting specific values for x
- **Function operations:** Addition, subtraction, multiplication, division
- **Composition of functions:** Applying one function to the output of another
- **Piecewise functions:** Different rules for different parts of the domain

**Example 1:** If f(x) = 2x² - 3x + 4, find f(3)
```
f(3) = 2(3)² - 3(3) + 4 = 2(9) - 9 + 4 = 18 - 9 + 4 = 13
```

**Example 2:** If f(x) = x² and g(x) = 3x + 1, find (f ∘ g)(2)
```
(f ∘ g)(2) = f(g(2)) = f(3(2) + 1) = f(7) = 7² = 49
```

**Example 3:** Evaluate the piecewise function:
f(x) = {
  x² if x < 0
  3x + 1 if x ≥ 0
}
Find f(-2) and f(3)
```
f(-2) = (-2)² = 4 (since -2 < 0)
f(3) = 3(3) + 1 = 10 (since 3 ≥ 0)
```

### 4. Quadratic Functions and Their Graphs

**Simple explanation:** "A quadratic function has the form f(x) = ax² + bx + c and its graph is a parabola. Different forms of the equation reveal different properties of the function."

**Key concepts reviewed:**
- **Standard form:** f(x) = ax² + bx + c
- **Vertex form:** f(x) = a(x - h)² + k, where (h, k) is the vertex
- **Factored form:** f(x) = a(x - p)(x - q), where p and q are the roots
- **Properties:** Vertex, axis of symmetry, y-intercept, roots, direction of opening

**Example 1:** Find the vertex of f(x) = 2x² - 12x + 18
```
h = -b/(2a) = -(-12)/(2(2)) = 12/4 = 3
k = f(3) = 2(3)² - 12(3) + 18 = 2(9) - 36 + 18 = 18 - 36 + 18 = 0
Vertex: (3, 0)
```

**Example 2:** Convert f(x) = x² + 6x + 5 to vertex form
```
f(x) = x² + 6x + 9 - 9 + 5
     = (x + 3)² - 4
     = (x - (-3))² - 4
Vertex: (-3, -4)
```

**Example 3:** Find the roots of f(x) = 3x² - 6x - 24
```
3x² - 6x - 24 = 0
3(x² - 2x - 8) = 0
3(x - 4)(x + 2) = 0
x = 4 or x = -2
```

### 5. Vertex and Extreme Values

**Simple explanation:** "The vertex of a quadratic function is its highest or lowest point. For a parabola opening upward, the vertex is a minimum; for one opening downward, it's a maximum."

**Key concepts reviewed:**
- **Finding the vertex:** Using the formula h = -b/(2a) or completing the square
- **Maximum/minimum values:** The y-coordinate of the vertex
- **Applications:** Optimization problems where we need to maximize or minimize a quantity

**Example 1:** Find the minimum value and where it occurs for f(x) = 2x² - 4x + 5
```
h = -b/(2a) = -(-4)/(2(2)) = 4/4 = 1
k = f(1) = 2(1)² - 4(1) + 5 = 2 - 4 + 5 = 3
The minimum value is 3, occurring at x = 1
```

**Example 2:** A ball is thrown with the height equation h = -16t² + 64t + 6. Find the maximum height and when it occurs.
```
a = -16, b = 64, c = 6
t = -b/(2a) = -64/(2(-16)) = 64/32 = 2
Maximum height = h(2) = -16(2)² + 64(2) + 6 = -64 + 128 + 6 = 70 feet
The ball reaches a maximum height of 70 feet after 2 seconds
```

### 6. Completing the Square

**Simple explanation:** "Completing the square is a technique to rewrite a quadratic expression as a perfect square trinomial plus or minus a constant. It's used to convert quadratics to vertex form or solve quadratic equations."

**Key concepts reviewed:**
- **Process:** Take half the coefficient of x, square it, add and subtract this value
- **Converting to vertex form:** Rewriting ax² + bx + c as a(x - h)² + k
- **Solving quadratic equations:** Alternative to the quadratic formula

**Example 1:** Convert x² + 6x + 10 to vertex form by completing the square
```
x² + 6x + 10
Half of 6 is 3, and 3² = 9
x² + 6x + 9 - 9 + 10
(x + 3)² + 1
Vertex form: (x - (-3))² + 1
```

**Example 2:** Solve x² - 8x + 12 = 0 by completing the square
```
x² - 8x + 12 = 0
x² - 8x = -12
Half of -8 is -4, and (-4)² = 16
x² - 8x + 16 = -12 + 16
(x - 4)² = 4
x - 4 = ±2
x = 6 or x = 2
```

### 7. Working with Radicals

**Simple explanation:** "Radical expressions contain roots, such as square roots or cube roots. We can simplify and perform operations on them using specific rules."

**Key concepts reviewed:**
- **Simplifying radicals:** Extract perfect squares/cubes, etc.
- **Addition/subtraction:** Combine like radical terms
- **Multiplication:** Use the property √a × √b = √(ab)
- **Division/rationalizing:** Eliminate radicals in the denominator
- **Solving radical equations:** Isolate the radical and square both sides

**Example 1:** Simplify √72
```
√72 = √(36 × 2) = √36 × √2 = 6√2
```

**Example 2:** Simplify 2√12 + 3√27
```
2√12 + 3√27
= 2√(4 × 3) + 3√(9 × 3)
= 2(2√3) + 3(3√3)
= 4√3 + 9√3
= 13√3
```

**Example 3:** Rationalize the denominator of 5/(3√2)
```
5/(3√2) × √2/√2 = 5√2/(3 × 2) = 5√2/6
```
