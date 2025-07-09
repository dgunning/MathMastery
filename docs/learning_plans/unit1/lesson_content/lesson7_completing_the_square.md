# Completing the Square

## What You're Learning

Completing the square transforms quadratic expressions into a more useful form

## Why This Matters

**Real-World Applications:**
- **Aerospace Engineering:** When designing the curved surfaces of aircraft wings and rocket nosecones, engineers use quadratic equations in vertex form to create optimal aerodynamic shapes. NASA engineers routinely apply these concepts to reduce drag and increase fuel efficiency.

- **Architecture & Design:** Modern buildings with curved facades, arched bridges, and domed roofs all rely on quadratic functions. Architects complete the square to find the precise vertex points that determine structural stability and aesthetic beauty.

- **Computer Graphics:** Video game designers and animators use vertex form to create smooth, realistic motion. When characters jump or objects are thrown, completing the square helps calculate the exact paths and landing positions.

- **Economics & Business:** Companies use quadratic functions to model profit maximization, with the vertex representing the optimal price point or production level. Data analysts complete the square to find these critical values from market research data.

**Career Connection:** Professionals in engineering, architecture, computer science, economics, and data science regularly use these techniques. These high-demand fields offer average starting salaries between $75,000 and $120,000, with quadratic optimization skills featured prominently in job descriptions.

## Key Concepts

### 1. Understanding the Purpose of Completing the Square

**Simple explanation:** "Completing the square is an algebraic technique that helps us rewrite a quadratic expression in a special form that makes it easier to:
1. Find the vertex of a parabola
2. Convert between standard form and vertex form
3. Solve quadratic equations
4. Understand the behavior of quadratic functions"

**Why it matters:** "This technique gives us another way to analyze quadratic functions besides factoring or using the quadratic formula. It's especially useful when we want to find the vertex form or when factoring is difficult."

**Connection to previous learning:** "Remember that the vertex form of a quadratic function is f(x) = a(x - h)² + k, where (h, k) is the vertex. Completing the square helps us convert from standard form to this vertex form."

### 2. Perfect Square Trinomials: The Foundation

**Simple explanation:** "Before we complete the square, we need to understand what a perfect square trinomial is. This is an expression that can be written as the square of a binomial."

**Key examples:**
```
x² + 6x + 9 = (x + 3)²
x² - 8x + 16 = (x - 4)²
x² + 10x + 25 = (x + 5)²
```

**Pattern to recognize:** "The pattern of a perfect square trinomial is:
- First term: x²
- Middle term: 2bx (where b is some number)
- Last term: b²

So x² + 6x + 9 is a perfect square trinomial because 6 = 2(3) and 9 = 3²."

**Visual activity:** "You can visualize a perfect square trinomial as a geometric square with side length (x + b)."

### 3. The Basic Process of Completing the Square

**Simple explanation:** "Completing the square means adding the right constant to an expression like x² + bx to create a perfect square trinomial."

**Step-by-step process for x² + bx:**
1. Take the coefficient of x and divide by 2: b/2
2. Square the result: (b/2)²
3. Add this value to create a perfect square trinomial: x² + bx + (b/2)²
4. Rewrite as a squared binomial: (x + b/2)²

**Example with clear steps:**
```
Complete the square for x² + 8x

Step 1: Take the coefficient of x and divide by 2: 8/2 = 4
Step 2: Square the result: 4² = 16
Step 3: Add 16 to create the perfect square trinomial: x² + 8x + 16
Step 4: Rewrite as a squared binomial: (x + 4)²
```

**Practice together:** "Let's complete the square for these expressions:
1. x² - 10x
2. x² + 3x
3. x² - 7x"

### 4. Completing the Square to Convert to Vertex Form

**Simple explanation:** "To convert a quadratic function from standard form (ax² + bx + c) to vertex form (a(x - h)² + k), we use completing the square."

**Step-by-step process when a = 1:**
1. Move the constant to the right side: x² + bx + c = x² + bx - c + 2c
2. Complete the square for x² + bx by adding (b/2)² to both sides
3. Factor the perfect square trinomial on the left
4. Simplify the right side to find k

**Example with clear steps:**
```
Convert f(x) = x² - 6x + 8 to vertex form

Step 1: Move the constant term to the right side
f(x) = x² - 6x + 8
f(x) = (x² - 6x) + 8

Step 2: Complete the square for x² - 6x
Coefficient of x is -6, so (-6/2) = -3
Square it: (-3)² = 9
Add and subtract 9 (to keep the equation balanced)
f(x) = (x² - 6x + 9) - 9 + 8

Step 3: Factor the perfect square trinomial
f(x) = (x - 3)² - 9 + 8

Step 4: Simplify
f(x) = (x - 3)² - 1

The function in vertex form is f(x) = (x - 3)² - 1
The vertex is (3, -1)
```

### 5. Completing the Square When a ≠ 1

**Simple explanation:** "When the coefficient of x² is not 1, we need to factor it out first before completing the square."

**Step-by-step process:**
1. Factor out the coefficient a from the first two terms
2. Complete the square for the expression inside parentheses
3. Distribute a back through the squared binomial
4. Combine like terms to get vertex form

**Example with clear steps:**
```
Convert g(x) = 2x² - 12x + 13 to vertex form

Step 1: Factor out the coefficient of x²
g(x) = 2(x² - 6x) + 13

Step 2: Complete the square inside the parentheses
Coefficient of x is -6, so (-6/2) = -3
Square it: (-3)² = 9
Add and subtract 9 inside the parentheses
g(x) = 2(x² - 6x + 9 - 9) + 13
g(x) = 2(x² - 6x + 9) - 2(9) + 13
g(x) = 2(x - 3)² - 18 + 13

Step 3: Simplify
g(x) = 2(x - 3)² - 5

The function in vertex form is g(x) = 2(x - 3)² - 5
The vertex is (3, -5)
```

**Common mistake to avoid:** "Don't forget to multiply the constant term (the square of half the coefficient of x) by the coefficient a when you subtract it."

### 6. Finding the Vertex Using Completing the Square

**Simple explanation:** "Completing the square is a precise method to find the vertex of a quadratic function. Once we convert to vertex form f(x) = a(x - h)² + k, the vertex is at (h, k)."

**Example with interpretations:**
```
Find the vertex of f(x) = -3x² + 12x - 8

Step 1: Factor out -3
f(x) = -3(x² - 4x) - 8

Step 2: Complete the square inside the parentheses
Coefficient of x is -4, so (-4/2) = -2
Square it: (-2)² = 4
Add and subtract 4 inside the parentheses
f(x) = -3(x² - 4x + 4 - 4) - 8
f(x) = -3(x² - 4x + 4) + 12 - 8
f(x) = -3(x - 2)² + 4

Step 3: Identify the vertex
Since the vertex form is f(x) = a(x - h)² + k, we have h = 2 and k = 4
The vertex is (2, 4)

Step 4: Interpret the result
Since a = -3 < 0, the parabola opens downward
The vertex (2, 4) represents a maximum point
The maximum value of the function is 4, occurring at x = 2
```

**Practice activity:** "Find the vertex and determine if it's a maximum or minimum for:
1. f(x) = 2x² + 8x + 7
2. g(x) = -x² + 6x - 5
3. h(x) = 3x² - 6x + 5"

### 7. Solving Quadratic Equations by Completing the Square

**Simple explanation:** "We can solve a quadratic equation ax² + bx + c = 0 by completing the square to isolate x."

**Step-by-step process:**
1. Move the constant term to the right side: ax² + bx = -c
2. Divide all terms by a: x² + (b/a)x = -c/a
3. Complete the square on the left side
4. Add the square term to both sides
5. Rewrite the left as a perfect square
6. Take the square root of both sides
7. Solve for x

**Example with clear steps:**
```
Solve x² - 6x + 8 = 0 by completing the square

Step 1: Move the constant term to the right side
x² - 6x = -8

Step 2: Complete the square for x² - 6x
Coefficient of x is -6, so (-6/2) = -3
Square it: (-3)² = 9
Add 9 to both sides
x² - 6x + 9 = -8 + 9
(x - 3)² = 1

Step 3: Take the square root of both sides
x - 3 = ±1

Step 4: Solve for x
x = 3 ± 1
x = 4 or x = 2

Check: 
x = 4: (4)² - 6(4) + 8 = 16 - 24 + 8 = 0 ✓
x = 2: (2)² - 6(2) + 8 = 4 - 12 + 8 = 0 ✓
```

**Connection to quadratic formula:** "Completing the square is actually how the quadratic formula is derived. When we complete the square for the general form ax² + bx + c = 0, we end up with the quadratic formula."

### 8. Applications of Completing the Square

**Simple explanation:** "Completing the square helps us solve various practical problems involving quadratic functions."

**Example 1: Maximum height of a projectile**
```
A ball is thrown upward with an initial velocity of 40 ft/s from a height of 5 feet. The height h(t) after t seconds is given by h(t) = -16t² + 40t + 5. Find the maximum height.

Solution:
h(t) = -16t² + 40t + 5
h(t) = -16(t² - 2.5t) + 5
h(t) = -16(t² - 2.5t + (1.25)² - (1.25)²) + 5
h(t) = -16(t - 1.25)² + -16(-1.5625) + 5
h(t) = -16(t - 1.25)² + 25 + 5
h(t) = -16(t - 1.25)² + 30

The vertex form shows the maximum height is 30 feet, occurring at t = 1.25 seconds.
```

**Example 2: Minimum cost problem**
```
The cost of producing x items is C(x) = 2x² - 80x + 1000. Find the number of items that minimizes the cost.

Solution:
C(x) = 2x² - 80x + 1000
C(x) = 2(x² - 40x) + 1000
C(x) = 2(x² - 40x + 400 - 400) + 1000
C(x) = 2(x - 20)² - 800 + 1000
C(x) = 2(x - 20)² + 200

The vertex form shows the minimum cost occurs at x = 20 items.
```

## Common Misconceptions and How to Address Them

1. **"The coefficient of x² must be 1 to complete the square"**
   - Clarification: "We can complete the square for any quadratic expression, but when the coefficient isn't 1, we need to factor it out first"

2. **"Completing the square always gives us nice, integer values"**
   - Clarification: "Often we get fractions or decimals when completing the square. That's normal and doesn't mean you've made a mistake"

3. **"When we add a value to complete the square, we can just add it to one side"**
   - Clarification: "When solving equations, we must add the same value to both sides to maintain equality"

4. **"The vertex is always (b/2, f(b/2))"**
   - Clarification: "The x-coordinate of the vertex is -b/(2a), not just b/2. The formula only simplifies to b/2 when a = -1"

## Check for Understanding

After covering the material, ask these questions:

1. "What is the purpose of completing the square?"
2. "What makes an expression a perfect square trinomial?"
3. "What is the first step when completing the square for 3x² - 12x + 7?"
4. "Convert f(x) = x² + 6x + 10 to vertex form using completing the square."
5. "Solve x² + 8x + 12 = 0 by completing the square."

## Practice Problems

1. Complete the square for each expression:
   - x² + 10x
   - x² - 5x
   - 2x² - 16x

2. Convert each function to vertex form using completing the square:
   - f(x) = x² - 8x + 18
   - g(x) = 2x² + 12x + 15
   - h(x) = -3x² + 6x - 5

3. Find the vertex of each function:
   - f(x) = x² - 4x + 9
   - g(x) = -2x² + 8x - 3
   - h(x) = 3x² - 6x - 2

4. Solve each equation by completing the square:
   - x² + 6x + 5 = 0
   - 2x² - 4x - 3 = 0
   - x² - 6x + 9 = 0

5. A ball is thrown upward with an initial velocity of 32 ft/s from a height of 4 feet. The height h(t) after t seconds is given by h(t) = -16t² + 32t + 4.
   - Find the maximum height of the ball.
   - When does the ball reach its maximum height?
   - When does the ball hit the ground?

**Solutions:**
1. Completing the square:
   - x² + 10x + 25 = (x + 5)²
   - x² - 5x + 6.25 = (x - 2.5)²
   - 2(x² - 8x + 16) = 2(x - 4)²

2. Vertex forms:
   - f(x) = (x - 4)² + 2; vertex: (4, 2)
   - g(x) = 2(x + 3)² - 3; vertex: (-3, -3)
   - h(x) = -3(x - 1)² - 8; vertex: (1, -8)

3. Vertices:
   - f(x): vertex at (2, 5)
   - g(x): vertex at (2, 5)
   - h(x): vertex at (1, -5)

4. Equation solutions:
   - x = -5 or x = -1
   - x = -0.5 or x = 3
   - x = 3 (double root)

5. Ball problem:
   - Maximum height: 20 feet
   - Maximum height at t = 1 second
   - Ground impact at approximately t = 2.5 seconds

## Visual Learning Activities

1. **Geometric Square Completion**: Use algebra tiles to physically demonstrate completing the square.

2. **Vertex Form Cards**: Create cards with functions in standard form on one side and vertex form on the other. Practice converting back and forth.

3. **Parabola Matching**: Create cards with quadratic functions in standard form, vertex form, and graphs. Match the different representations.

4. **Digital Exploration**: Use Desmos to graph functions before and after completing the square to visually confirm the vertex location.

## Tips for Success

1. **Start with simple examples**: Begin with expressions where a = 1 and the numbers work out nicely.

2. **Show the connection**: Explicitly link completing the square to finding the vertex and solving equations.

3. **Use consistency in notation**: Always follow the same step-by-step approach to avoid confusion.

4. **Check your work**: Always verify your answers by substituting back into the original equation.

5. **Provide context**: Connect to real-world problems where appropriate to make the technique meaningful.

## Online Resources

- **Khan Academy**: Search "Completing the square" for video tutorials
- **PurpleMath**: Clear written explanations of the completing the square process
- **Desmos.com**: Graphical visualization of quadratic functions
- **GeoGebra.org**: Interactive demonstrations of completing the square

## Next Steps

Once you are comfortable with completing the square, you can move on to:
1. Working with radicals and radical equations
2. Solving more complex quadratic equations
3. The discriminant and its relationship to roots
4. Linear-quadratic systems and their applications

**Remember:** Completing the square isn't just an algebraic trick—it's your mathematical superpower! This technique unlocks the secrets hidden in every quadratic, revealing perfect patterns where others see only complexity. What looks like magic to your friends is simply your ability to transform the unsolvable into the obvious!
