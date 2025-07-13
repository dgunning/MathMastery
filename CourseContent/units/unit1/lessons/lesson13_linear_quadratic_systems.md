# Solving Linear-Quadratic Systems

### Linear-quadratic systems find intersection points between lines and curves

## Why This Matters

**Real-World Applications:**
- **Robotics & Automation:** When programming robots to navigate around obstacles, engineers use linear-quadratic systems to determine where straight-line paths might intersect with curved boundaries. This math ensures delivery robots, autonomous vehicles, and manufacturing robots move efficiently without collisions.

- **Computer Gaming:** Game developers use these systems to calculate realistic interactions between objects. When a character (moving in a straight line) meets an object with a curved trajectory (like a bouncing ball), this exact math determines if, when, and where they'll intersect.

- **Financial Modeling:** Economists and financial analysts use linear-quadratic systems when analyzing the intersection of supply curves (often quadratic) and demand curves (often linear). These intersection points determine critical market equilibrium prices.

- **Environmental Science:** Scientists model pollution dispersal using these systems - tracking where linear paths of wind or water currents intersect with the quadratic spread of contaminants to predict affected areas and plan mitigation efforts.

**Career Connection:** Professionals in engineering, video game development, financial analysis, and environmental science use these intersection calculations daily. Companies like Tesla, Epic Games, Goldman Sachs, and the EPA hire specifically for these mathematical modeling skills, with starting salaries averaging $85,000-$110,000.

## Key Concepts

### 1. Understanding Linear-Quadratic Systems

**Simple explanation:** "A linear-quadratic system consists of two equations: one linear equation (in the form y = mx + b or ax + by = c) and one quadratic equation (in the form y = ax² + bx + c or similar). Solving the system means finding the point(s) where the line and parabola intersect."

**Key insight:** "Unlike linear systems, which have at most one solution, a linear-quadratic system can have:
- No solutions (if the line and parabola don't intersect)
- One solution (if the line is tangent to the parabola)
- Two solutions (if the line cuts through the parabola at two points)"

**Visual representation:**
```
    Two Solutions             One Solution             No Solutions
         |                          |                          |
         |                          |                          |
         |        /\                |         /\               |          /\
         |       /  \               |        /  \              |         /  \
    -----+------+--+------    ------+-------+-------    ------+--------------
         |     /    \              |       /  \              |      -------
         |    /      \             |      /    \             |     /
         Line crosses parabola   Line is tangent to parabola   Line doesn't intersect
           at two points              at one point                 parabola
```

**Connection to previous learning:** "This combines your knowledge of:
- Linear equations and their graphs
- Quadratic equations and their graphs
- Solving quadratic equations by various methods"

### 2. Substitution Method

**Simple explanation:** "The most common approach is the substitution method, where we substitute the expression for y from the linear equation into the quadratic equation to create a quadratic equation in one variable."

**Step-by-step process:**
1. Solve the linear equation for y (if not already in that form)
2. Substitute this expression into the quadratic equation
3. Solve the resulting quadratic equation
4. Find the corresponding y-values by substituting back into the linear equation
5. Write the solutions as coordinate pairs (x, y)

**Example 1: Line and parabola (tangent point)**

> **Problem Statement:**  
> Solve the system of equations:  
> $y = 2x - 3$  
> $y = x^2 - 4$
>
> #### Step 1: Identify the approach
> * We have a linear equation $y = 2x - 3$ and a quadratic equation $y = x^2 - 4$
> * Since both equations are already solved for $y$, we'll use substitution
> * The variable $y$ represents the same value in both equations, so we can set the expressions equal
>
> #### Step 2: Set up the equation by substitution
> * Since $y = 2x - 3$ and $y = x^2 - 4$, we can write:  
>   $2x - 3 = x^2 - 4$
> * Rearranging to standard form:  
>   $0 = x^2 - 2x - 3 + 4$  
>   $0 = x^2 - 2x + 1$
>
> #### Step 3: Solve the quadratic equation
> * We have $x^2 - 2x + 1 = 0$
> * This is a perfect square trinomial: $(x - 1)^2 = 0$
> * Therefore $x - 1 = 0$, which gives us $x = 1$
>
> #### Step 4: Find the corresponding y-value
> * Substitute $x = 1$ into either original equation
> * Using $y = 2x - 3$: $y = 2(1) - 3 = -1$
>
> #### Step 5: Verify the solution
> * We found the point $(1, -1)$
> * Check in first equation: $y = 2(1) - 3 = -1$ ✓
> * Check in second equation: $y = (1)^2 - 4 = 1 - 4 = -1$ ✓
> * The solution is confirmed: $(1, -1)$
>
> #### Geometric interpretation
> * Since we found exactly one solution, the line and parabola intersect at exactly one point
> * This means the line is tangent to the parabola at the point $(1, -1)$

**Example 2: Line and parabola (two intersection points)**

> **Problem Statement:**  
> Solve the system of equations:  
> $y = x + 2$  
> $y = x^2 - 2$
>
> #### Step 1: Identify the approach
> * We have a linear equation $y = x + 2$ and a quadratic equation $y = x^2 - 2$
> * Since both equations are already solved for $y$, we'll use substitution
> * We'll set the expressions equal and solve for $x$
>
> #### Step 2: Set up the equation by substitution
> * Since $y = x + 2$ and $y = x^2 - 2$, we can write:  
>   $x + 2 = x^2 - 2$
> * Rearranging to standard form:  
>   $0 = x^2 - x - 4$
>
> #### Step 3: Solve the quadratic equation
> * We have $x^2 - x - 4 = 0$ with $a = 1$, $b = -1$, and $c = -4$
> * Using the quadratic formula: $x = \frac{-b \pm \sqrt{b^2-4ac}}{2a}$
> * Substituting the values: $x = \frac{1 \pm \sqrt{1+16}}{2} = \frac{1 \pm \sqrt{17}}{2}$
> * Computing the values: $x \approx 2.56$ or $x \approx -1.56$
>
> #### Step 4: Find the corresponding y-values
> * For $x \approx 2.56$: $y = 2.56 + 2 \approx 4.56$
> * For $x \approx -1.56$: $y = -1.56 + 2 \approx 0.44$
>
> #### Step 5: Verify the solutions
> * For the point $(2.56, 4.56)$:
>   * First equation: $y = 2.56 + 2 \approx 4.56$ ✓
>   * Second equation: $y = (2.56)^2 - 2 \approx 6.56 - 2 \approx 4.56$ ✓
> * For the point $(-1.56, 0.44)$:
>   * First equation: $y = -1.56 + 2 \approx 0.44$ ✓
>   * Second equation: $y = (-1.56)^2 - 2 \approx 2.44 - 2 \approx 0.44$ ✓
>
> #### Geometric interpretation
> * We found two distinct solutions: $(2.56, 4.56)$ and $(-1.56, 0.44)$
> * These represent two points where the line intersects the parabola
> * This is the most common scenario when a line crosses through a parabola

**Example 3: System with no real solutions**

> **Problem Statement:**  
> Solve the system of equations:  
> $2x + y = 5$  
> $x^2 + y = 3$
>
> #### Step 1: Solve the linear equation for y
> * From the first equation $2x + y = 5$, we isolate $y$:
> * $y = 5 - 2x$
>
> #### Step 2: Substitute into the quadratic equation
> * We substitute $y = 5 - 2x$ into the second equation $x^2 + y = 3$:
> * $x^2 + (5 - 2x) = 3$
>
> #### Step 3: Solve the resulting quadratic equation
> * Expanding: $x^2 + 5 - 2x = 3$
> * Rearranging to standard form: $x^2 - 2x + 5 - 3 = 0$
### 6. Special Cases

**Simple explanation:** "There are some special cases worth noting when solving linear-quadratic systems."

**Special Case 1: Tangent line**

> **Problem Statement:**  
> Determine if the line $y = 2x + 3$ is tangent to the parabola $y = x^2 + 4x + 3$ by finding their points of intersection.
>
> #### Step 1: Set up the system of equations
> * We have two curves: a line $y = 2x + 3$ and a parabola $y = x^2 + 4x + 3$
> * To find intersection points, we set the $y$-values equal
>
> #### Step 2: Solve for points of intersection
> * Set the equations equal: $2x + 3 = x^2 + 4x + 3$
> * Rearrange to standard form: $0 = x^2 + 2x$
> * Factor: $x(x + 2) = 0$
> * Solutions: $x = 0$ or $x = -2$
>
> #### Step 3: Find the corresponding y-coordinates
> * When $x = 0$: $y = 2(0) + 3 = 3$
> * When $x = -2$: $y = 2(-2) + 3 = -4 + 3 = -1$
>
> #### Step 4: Verify the solutions
> * For the point $(0, 3)$:
>   * Line: $y = 2(0) + 3 = 3$ ✓
>   * Parabola: $y = 0^2 + 4(0) + 3 = 3$ ✓
> * For the point $(-2, -1)$:
>   * Line: $y = 2(-2) + 3 = -4 + 3 = -1$ ✓
>   * Parabola: $y = (-2)^2 + 4(-2) + 3 = 4 - 8 + 3 = -1$ ✓
>
> #### Step 5: Interpret the geometric meaning
> * The line intersects the parabola at exactly two distinct points: $(0, 3)$ and $(-2, -1)$
> * This means the line is a secant line, not a tangent line
> * A tangent line would touch the parabola at exactly one point
> * Note: To find a true tangent line to this parabola, we would need to use calculus to find the derivative at a specific point

**Special Case 2: Horizontal line**

> **Problem Statement:**  
> Determine how the horizontal line $y = -1$ intersects the parabola $y = x^2 - 4x + 3$.
>
> #### Step 1: Set up the system of equations
> * We have a horizontal line $y = -1$ and a parabola $y = x^2 - 4x + 3$
> * To find intersection points, we set the $y$-values equal
>
> #### Step 2: Solve for points of intersection
> * Set the equations equal: $-1 = x^2 - 4x + 3$
> * Rearrange to standard form: $0 = x^2 - 4x + 4$
> * Complete the square: $0 = (x - 2)^2$
> * Solution: $x = 2$ (double root)
>
> #### Step 3: Find the corresponding y-coordinate
> * When $x = 2$: $y = -1$
>
> #### Step 4: Verify the solution
> * For the point $(2, -1)$:
>   * Horizontal line: $y = -1$ ✓
>   * Parabola: $y = 2^2 - 4(2) + 3 = 4 - 8 + 3 = -1$ ✓
>
> #### Step 5: Interpret the geometric meaning
> * The equation had a double root at $x = 2$, which tells us the horizontal line $y = -1$ is tangent to the parabola
> * The line touches the parabola at exactly one point: $(2, -1)$
> * This point $(2, -1)$ is actually the vertex of the parabola
> * We can verify this by finding that the axis of symmetry is at $x = 2$ (from $x = -b/2a = -(-4)/2(1) = 2$)
>
> #### Mathematical insight
> * A horizontal line that is tangent to a parabola must touch it at the vertex
> * The equation having a perfect square $(x - 2)^2 = 0$ confirms that we have a tangent line with a double root

**Special Case 3: No real solutions**

> **Problem Statement:**  
> Determine if the line $y = -x + 1$ intersects the parabola $y = x^2 + 2x + 5$, and if so, where.
>
> #### Step 1: Set up the system of equations
> * We have a line $y = -x + 1$ and a parabola $y = x^2 + 2x + 5$
> * To find intersection points, we set the $y$-values equal
>
> #### Step 2: Solve for points of intersection
> * Set the equations equal: $-x + 1 = x^2 + 2x + 5$
> * Rearrange to standard form: $0 = x^2 + 3x + 4$
> * This is a quadratic equation that we need to solve
>
> #### Step 3: Apply the quadratic formula
> * Using the quadratic formula with $a = 1$, $b = 3$, and $c = 4$:
>   * $x = \frac{-3 \pm \sqrt{9 - 16}}{2} = \frac{-3 \pm \sqrt{-7}}{2}$
>
> #### Step 4: Analyze the discriminant
> * The discriminant is $b^2 - 4ac = 9 - 16 = -7$
> * Since the discriminant is negative, the quadratic equation has no real solutions
>
> #### Step 5: Interpret the geometric meaning
> * The line and parabola do not intersect in the real coordinate plane
> * The parabola lies entirely above the line
> * We can verify this by testing any point: the parabola's minimum value occurs at $x = -b/2a = -3/2$
>   * At $x = -3/2$: $y_{parabola} = (-3/2)^2 + 2(-3/2) + 5 = 9/4 - 3 + 5 = 9/4 + 2 = 13/4$
>   * At this same $x$-value: $y_{line} = -(-3/2) + 1 = 3/2 + 1 = 5/2 = 10/4 < 13/4$
>
> #### Mathematical insight
> * The line and parabola have no points of intersection in the real plane
> * This is reflected algebraically by the negative discriminant
> * Geometrically, this happens when the parabola opens upward and has its lowest point above the line, or opens downward with its highest point below the line

**Case 4: Vertical line**

> **Problem Statement:**  
> Find the intersection points between the vertical line $x = 2$ and the parabola $y = x^2 - 3x + 1$.
>
> #### Step 1: Understand the geometric situation
> * A vertical line $x = 2$ represents all points with x-coordinate equal to 2
> * The parabola $y = x^2 - 3x + 1$ is a curved shape
> * Their intersection occurs where the vertical line passes through the parabola
>
> #### Step 2: Solve for the intersection
> * Since $x = 2$ on the vertical line, we substitute this value into the parabola equation:
>   * $y = 2^2 - 3(2) + 1$
>   * $y = 4 - 6 + 1$
>   * $y = -1$
>
> #### Step 3: Write the solution as a coordinate pair
> * The intersection point is $(2, -1)$
>
> #### Step 4: Verify the solution
> * The point $(2, -1)$ lies on the vertical line $x = 2$ since its $x$-coordinate is 2 ✓
> * The point $(2, -1)$ lies on the parabola since $y = 2^2 - 3(2) + 1 = 4 - 6 + 1 = -1$ ✓
>
> #### Step 5: Interpret the result
> * A vertical line will always intersect a parabola in exactly one point, unless:
>   * The parabola opens horizontally (which is not a function of $x$)
>   * The vertical line is exactly at the axis of symmetry of a horizontally-opening parabola
> * This is because a parabola defined as $y = ax^2 + bx + c$ passes the vertical line test and is a function

**Key insight:** "Understanding these special cases can simplify solving certain linear-quadratic systems."

**Key insight:** "Understanding these special cases can simplify solving certain linear-quadratic systems."

### 7. Applications of Linear-Quadratic Systems

**Simple explanation:** "Linear-quadratic systems appear in many real-world scenarios where linear and quadratic relationships interact."

**Example 1: Break-even analysis**

> **Problem Statement:**  
> A company's revenue function is linear: $R = 50x$  
> Their cost function is quadratic: $C = x^2 + 10x + 100$  
> When does the company break even (R = C)?
>
> #### Step 1: Understand the business context
> * Revenue ($R$) is the money earned from selling products: $R = 50x$ where $x$ is the number of units
> * Cost ($C$) includes fixed costs plus variable costs: $C = x^2 + 10x + 100$
> * Break-even points occur when revenue equals cost: $R = C$
>
> #### Step 2: Set up the equation
> * Set the two expressions equal: $50x = x^2 + 10x + 100$
> * Rearrange to standard form: $x^2 - 40x + 100 = 0$
>
> #### Step 3: Solve the quadratic equation
> * We have $x^2 - 40x + 100 = 0$ with $a = 1$, $b = -40$, and $c = 100$
> * Using the quadratic formula: $x = \frac{40 \pm \sqrt{1600 - 400}}{2}$
> * Simplifying: $x = \frac{40 \pm \sqrt{1200}}{2}$
> * Computing: $x \approx 27.4$ or $x \approx 12.6$
>
> #### Step 4: Interpret the business meaning
> * The company breaks even at two different production levels:
>   * First break-even point: approximately 13 units
>   * Second break-even point: approximately 27 units
> * Between these points, the company makes a profit
> * Below the first point or above the second point, the company operates at a loss
>
> #### Step 5: Verify the solution
> * At $x = 13$:
>   * Revenue: $R = 50(13) = 650$
>   * Cost: $C = 13^2 + 10(13) + 100 = 169 + 130 + 100 = 399 + 100 = 499 + 169 = 668$ (slight rounding error)
> * At $x = 27$:
>   * Revenue: $R = 50(27) = 1350$
>   * Cost: $C = 27^2 + 10(27) + 100 = 729 + 270 + 100 = 1099$ (slight difference due to rounding)
>
> #### Real-world application
> * This analysis helps the company understand their minimum production needs
> * It also shows that producing too many units (beyond the second break-even point) will result in losses
> * The company should target production between the two break-even points to maximize profits

**Example 2: Projectile motion and obstacle**

> **Problem Statement:**  
> A ball is thrown according to the height equation $h = -16t^2 + 40t + 6$  
> A horizontal bar is positioned at height $h = 30$ feet  
> When does the ball cross the bar?
>
> #### Step 1: Understand the physics context
> * The ball follows a parabolic path described by $h = -16t^2 + 40t + 6$
>   * The $-16t^2$ term represents gravity's effect (acceleration of -32 ft/s²)
>   * The $40t$ term represents the initial upward velocity
>   * The $6$ term represents the initial height
> * We need to find when this height equals 30 feet
>
> #### Step 2: Set up the equation
> * Set the height equation equal to the bar height: $-16t^2 + 40t + 6 = 30$
> * Rearrange to standard form: $-16t^2 + 40t + 6 - 30 = 0$
> * Simplify: $-16t^2 + 40t - 24 = 0$
>
> #### Step 3: Solve the quadratic equation
> * Factor out -8: $-8(2t^2 - 5t + 3) = 0$
> * Divide both sides by -8: $2t^2 - 5t + 3 = 0$
> * Apply the quadratic formula with $a = 2$, $b = -5$, and $c = 3$:
>   * $t = \frac{5 \pm \sqrt{25 - 24}}{4}$
>   * $t = \frac{5 \pm \sqrt{1}}{4}$
>   * $t = \frac{5 \pm 1}{4}$
> * This gives us $t = 1.5$ or $t = 1$
>
> #### Step 4: Interpret the physical meaning
> * The ball crosses the height of 30 feet at two times:
>   * First crossing: $t = 1$ second (on the way up)
>   * Second crossing: $t = 1.5$ seconds (on the way down)
>
> #### Step 5: Verify the solution
> * At $t = 1$:
>   * $h = -16(1)^2 + 40(1) + 6 = -16 + 40 + 6 = 30$ feet ✓
> * At $t = 1.5$:
>   * $h = -16(1.5)^2 + 40(1.5) + 6$
>   * $h = -16(2.25) + 60 + 6$
>   * $h = -36 + 66 = 30$ feet ✓
>
> #### Visual interpretation
> * The ball starts at 6 feet, rises to a maximum height, then falls back down
> * The bar at 30 feet is crossed twice - once during the ascent and once during the descent
> * We can determine that the maximum height occurs at $t = 1.25$ seconds

**Example 3: Geometry problem**

> **Problem Statement:**  
> A rectangle has perimeter 20 units. Find the dimensions that maximize the area.
>
> #### Step 1: Define variables and constraints
> * Let's define our variables:
>   * Width = $x$
>   * Length = $y$
> * We know the perimeter equation: $2x + 2y = 20$
> * We want to maximize the area function: $A = xy$
>
> #### Step 2: Express one variable in terms of the other
> * From the perimeter equation, solve for $y$:
>   * $2y = 20 - 2x$
>   * $y = 10 - x$
>
> #### Step 3: Create a single-variable area function
> * Substitute the expression for $y$ into the area equation:
>   * $A = x(10 - x)$
>   * $A = 10x - x^2$
> * This is now a quadratic function in $x$ alone
>
> #### Step 4: Find the maximum value
> * For a quadratic function $A = -x^2 + 10x$, the maximum occurs at the vertex
> * The vertex occurs at $x = -b/(2a) = -10/(2(-1)) = 5$
> * When $x = 5$, the function value represents the maximum possible area
>
> #### Step 5: Calculate the dimensions
> * Width: $x = 5$
> * Length: $y = 10 - 5 = 5$
>
> #### Step 6: Verify and interpret the result
> * The optimal dimensions are $5 \times 5$, giving a square
> * Perimeter check: $2(5) + 2(5) = 20$ ✓
> * Maximum area: $A = 5 \times 5 = 25$ square units
>
> #### Mathematical insight
> * This result confirms the isoperimetric inequality: among all rectangles with the same perimeter, the square has the largest area
> * This principle has important applications in architecture, packaging, and conservation of resources

**Key insight:** "These applications show how linear-quadratic systems help solve optimization problems, motion problems, and economic scenarios."

## Common Misconceptions and How to Address Them

1. **"A linear-quadratic system always has two solutions"**
   - Clarification: "A linear-quadratic system can have 0, 1, or 2 solutions, depending on how the line and parabola intersect."

2. **"The elimination method doesn't work for linear-quadratic systems"**
   - Clarification: "Elimination can work well, especially when eliminating the y-variable to get a quadratic equation in x."

3. **"I can solve these systems using only linear system techniques"**
   - Clarification: "Linear-quadratic systems require techniques for solving quadratic equations after the substitution or elimination steps."

4. **"If I get complex solutions, I made a mistake"**
   - Clarification: "Complex solutions mathematically valid but indicate that the line and parabola don't intersect in the real coordinate plane."

5. **"The graphical method is always less accurate"**
   - Clarification: "While algebraic methods often give exact solutions, modern graphing technology can provide highly accurate numerical solutions."

## Check for Understanding

After covering the material, ask these questions:

1. "What are the three possible cases for the number of solutions in a linear-quadratic system?"
2. "How do you use the substitution method to solve a linear-quadratic system?"
3. "How does the discriminant help us analyze a linear-quadratic system?"
4. "When would a line and parabola intersect at exactly one point?"
5. "How can you tell from the equations whether a linear-quadratic system has no solutions without fully solving it?"

## Practice Problems

1. Solve each system:
   - y = x + 2 and y = x² - 4
   - y = 2x - 1 and y = x² + 2x + 3
   - 2x + y = 4 and x² - y = 1
   - y = 3 and y = x² - 2x + 3

2. Without fully solving, determine how many solutions each system has:
   - y = 4x - 3 and y = x² + 2
   - y = -2x + 5 and y = x² - 4x + 5
   - y = x - 1 and y = -x² + 3x + 2

3. A ball is thrown with the height equation h = -16t² + 48t + 6. A horizontal bar is at height h = 38 feet. At what times does the ball cross the bar?

4. A company's revenue function is R = 80x and its cost function is C = 2x² + 20x + 100. Find the production levels where the company breaks even.

5. A rectangle has area 36 square units. Express its perimeter as a function of its width x, and find the dimensions that minimize the perimeter.

**Solutions:**
1. **Practice Problem: Solving linear-quadratic systems**

   > **Problem 1a:**  
   > Solve the system of equations:  
   > $y = x + 2$  
   > $y = x^2 - 4$
   >
   > #### Step 1: Use substitution
   > * Since both equations express $y$ in terms of $x$, we can set them equal
   > * $x + 2 = x^2 - 4$
   >
   > #### Step 2: Rearrange to standard form
   > * $x + 2 = x^2 - 4$
   > * $0 = x^2 - x - 6$
   >
   > #### Step 3: Factor and solve
   > * $x^2 - x - 6 = 0$
   > * $(x - 3)(x + 2) = 0$
   > * Therefore, $x = 3$ or $x = -2$
   >
   > #### Step 4: Find the corresponding y-values
   > * For $x = 3$: $y = 3 + 2 = 5$
   > * For $x = -2$: $y = -2 + 2 = 0$
   >
   > #### Step 5: Verify and write the solutions
   > * Solutions: $(3, 5)$ and $(-2, 0)$
   > * We can verify that both points satisfy both original equations

   > **Problem 1b:**  
   > Solve the system of equations:  
   > $y = 2x - 1$  
   > $y = x^2 + 2x + 3$
   >
   > #### Step 1: Use substitution
   > * Set the expressions for $y$ equal: $2x - 1 = x^2 + 2x + 3$
   >
   > #### Step 2: Rearrange to standard form
   > * $2x - 1 = x^2 + 2x + 3$
   > * $0 = x^2 + 0x + 4$
   >
   > #### Step 3: Analyze and solve
   > * We have the equation $x^2 + 4 = 0$
   > * The discriminant is $b^2 - 4ac = 0^2 - 4(1)(4) = -16 < 0$
   > * Since the discriminant is negative, there are no real solutions
   >
   > #### Step 4: Interpret geometrically
   > * This means the line $y = 2x - 1$ and the parabola $y = x^2 + 2x + 3$ do not intersect in the real coordinate plane
   > * The parabola lies entirely above the line

   > **Problem 1c:**  
   > Solve the system of equations:  
   > $2x + y = 4$  
   > $x^2 - y = 1$
   >
   > #### Step 1: Solve the linear equation for y
   > * From the first equation: $y = 4 - 2x$
   >
   > #### Step 2: Substitute into the quadratic equation
   > * Replace $y$ in the second equation: $x^2 - (4 - 2x) = 1$
   >
   > #### Step 3: Solve the resulting equation
   > * Simplify: $x^2 - 4 + 2x = 1$
   > * Rearrange: $x^2 + 2x - 5 = 0$
   > * Using the quadratic formula with $a = 1$, $b = 2$, and $c = -5$:
   >   * $x = \frac{-2 \pm \sqrt{4 + 20}}{2} = \frac{-2 \pm \sqrt{24}}{2}$
   >   * $x \approx 1.45$ or $x \approx -3.45$
   >
   > #### Step 4: Find the corresponding y-values
   > * For $x \approx 1.45$: $y \approx 4 - 2(1.45) \approx 1.1$
   > * For $x \approx -3.45$: $y \approx 4 - 2(-3.45) \approx 10.9$
   >
   > #### Step 5: Verify and write the solutions
   > * Solutions: approximately $(1.45, 1.1)$ and $(-3.45, 10.9)$

   > **Problem 1d:**  
   > Solve the system of equations:  
   > $y = 3$  
   > $y = x^2 - 2x + 3$
   >
   > #### Step 1: Recognize the special case
   > * The first equation represents a horizontal line at $y = 3$
   > * We need to find where this line intersects the parabola $y = x^2 - 2x + 3$
   >
   > #### Step 2: Set up and solve
   > * Since $y = 3$ on both curves, we substitute into the second equation:
   >   * $3 = x^2 - 2x + 3$
   >   * $0 = x^2 - 2x$
   >
   > #### Step 3: Factor and solve
   > * $x^2 - 2x = 0$
   > * $x(x - 2) = 0$
   > * Therefore, $x = 0$ or $x = 2$
   >
   > #### Step 4: Find the complete solutions
   > * When $x = 0$: $y = 3$
   > * When $x = 2$: $y = 3$
   > * Solutions: $(0, 3)$ and $(2, 3)$
   >
   > #### Step 5: Interpret geometrically
   > * The horizontal line $y = 3$ intersects the parabola at two points
   > * The parabola has its vertex at $(1, 2)$, so both intersection points are at the same height

2. **Practice Problem: Determining the number of solutions**

   > **Problem 2a:**  
   > Without fully solving, determine how many solutions the system has:  
   > $y = 4x - 3$  
   > $y = x^2 + 2$
   >
   > #### Step 1: Set up the equation using substitution
   > * Set the two expressions for $y$ equal: $4x - 3 = x^2 + 2$
   >
   > #### Step 2: Rearrange to standard form
   > * $4x - 3 = x^2 + 2$
   > * $0 = x^2 - 4x + 5$
   >
   > #### Step 3: Calculate the discriminant
   > * For the quadratic $ax^2 + bx + c = 0$, the discriminant is $b^2 - 4ac$
   > * Here $a = 1$, $b = -4$, and $c = 5$
   > * Discriminant = $(-4)^2 - 4(1)(5) = 16 - 20 = -4$
   >
   > #### Step 4: Interpret the result
   > * Since the discriminant is negative, the quadratic equation has no real solutions
   > * Therefore, the line and parabola do not intersect
   > * The system has no real solutions

   > **Problem 2b:**  
   > Without fully solving, determine how many solutions the system has:  
   > $y = -2x + 5$  
   > $y = x^2 - 4x + 5$
   >
   > #### Step 1: Set up the equation using substitution
   > * Set the two expressions for $y$ equal: $-2x + 5 = x^2 - 4x + 5$
   >
   > #### Step 2: Simplify and rearrange
   > * $-2x + 5 = x^2 - 4x + 5$
   > * $-2x = x^2 - 4x$
   > * $0 = x^2 - 2x$
   >
   > #### Step 3: Factor and analyze
   > * $x^2 - 2x = 0$
   > * $x(x - 2) = 0$
   > * This gives $x = 0$ or $x = 2$
   > * Since we can find two distinct values of $x$, the system has two solutions
   >
   > #### Step 4: Confirm the number of solutions
   > * Without calculating the specific points, we've determined that this system has exactly two solutions
   > * This corresponds to the line intersecting the parabola at two distinct points

   > **Problem 2c:**  
   > Without fully solving, determine how many solutions the system has:  
   > $y = x - 1$  
   > $y = -x^2 + 3x + 2$
   >
   > #### Step 1: Set up the equation using substitution
   > * Set the two expressions for $y$ equal: $x - 1 = -x^2 + 3x + 2$
   >
   > #### Step 2: Rearrange to standard form
   > * $x - 1 = -x^2 + 3x + 2$
   > * $0 = -x^2 + 2x + 3$
   > * Multiplying by -1: $0 = x^2 - 2x - 3$
   >
   > #### Step 3: Calculate the discriminant
   > * Here $a = 1$, $b = -2$, and $c = -3$
   > * Discriminant = $(-2)^2 - 4(1)(-3) = 4 + 12 = 16$
   >
   > #### Step 4: Interpret the result
   > * Since the discriminant is positive, the quadratic equation has two distinct real solutions
   > * Therefore, the line and parabola intersect at two points
   > * The system has two solutions

3. **Practice Problem: Ball trajectory problem**

   > **Problem Statement:**  
   > A ball is thrown with the height equation $h = -16t^2 + 48t + 6$. A horizontal bar is at height $h = 38$ feet. At what times does the ball cross the bar?
   >
   > #### Step 1: Set up the equation
   > * We need to find when the height equals 38 feet
   > * Set $-16t^2 + 48t + 6 = 38$
   >
   > #### Step 2: Rearrange to standard form
   > * $-16t^2 + 48t + 6 - 38 = 0$
   > * $-16t^2 + 48t - 32 = 0$
   >
   > #### Step 3: Simplify by dividing by -16
   > * $t^2 - 3t + 2 = 0$
   >
   > #### Step 4: Factor and solve
   > * $(t - 2)(t - 1) = 0$
   > * Therefore, $t = 2$ or $t = 1$
   >
   > #### Step 5: Verify the solutions
   > * When $t = 1$: $h = -16(1)^2 + 48(1) + 6 = -16 + 48 + 6 = 38$ feet ✓
   > * When $t = 2$: $h = -16(2)^2 + 48(2) + 6 = -64 + 96 + 6 = 38$ feet ✓
   >
   > #### Step 6: Interpret the physical meaning
   > * The ball crosses the bar at $t = 1$ second (on its way up)
   > * The ball crosses the bar again at $t = 2$ seconds (on its way down)
   > * Between these times, the ball reaches its maximum height above the bar

4. **Practice Problem: Business break-even analysis**

   > **Problem Statement:**  
   > A company's revenue function is $R = 80x$ and its cost function is $C = 2x^2 + 20x + 100$. Find the production levels where the company breaks even.
   >
   > #### Step 1: Understand the business context
   > * Revenue function: $R = 80x$ (linear function of units produced)
   > * Cost function: $C = 2x^2 + 20x + 100$ (quadratic function with fixed costs)
   > * Break-even points occur when $R = C$ (revenue equals cost)
   >
   > #### Step 2: Set up the equation
   > * Set revenue equal to cost: $80x = 2x^2 + 20x + 100$
   >
   > #### Step 3: Rearrange to standard form
   > * $80x = 2x^2 + 20x + 100$
   > * $0 = 2x^2 - 60x + 100$
   > * Dividing by 2: $0 = x^2 - 30x + 50$
   >
   > #### Step 4: Solve using the quadratic formula
   > * Using the formula with $a = 1$, $b = -30$, and $c = 50$:
   >   * $x = \frac{30 \pm \sqrt{900 - 200}}{2} = \frac{30 \pm \sqrt{700}}{2}$
   >   * $x \approx 28.2$ or $x \approx 1.8$
   >
   > #### Step 5: Verify the solutions
   > * At $x = 2$ (rounding 1.8):
   >   * Revenue: $R = 80(2) = 160$
   >   * Cost: $C = 2(2)^2 + 20(2) + 100 = 8 + 40 + 100 = 148$ (close to 160)
   > * At $x = 28$ (rounding 28.2):
   >   * Revenue: $R = 80(28) = 2,240$
   >   * Cost: $C = 2(28)^2 + 20(28) + 100 = 2(784) + 560 + 100 = 1,568 + 660 = 2,228$ (close to 2,240)
   >
   > #### Step 6: Interpret the business meaning
   > * The company breaks even at approximately 2 units and 28 units
   > * Between these production levels, the company makes a profit
   > * Below 2 units or above 28 units, the company operates at a loss

5. **Practice Problem: Rectangle optimization**

   > **Problem Statement:**  
   > A rectangle has area 36 square units. Express its perimeter as a function of its width $x$, and find the dimensions that minimize the perimeter.
   >
   > #### Step 1: Define variables and constraints
   > * Let the width be $x$ and length be $y$
   > * Given: Area $= xy = 36$ square units
   > * Goal: Minimize the perimeter $P = 2x + 2y$
   >
   > #### Step 2: Express length in terms of width
   > * From the area constraint: $xy = 36$
   > * Solving for $y$: $y = \frac{36}{x}$
   >
   > #### Step 3: Create a perimeter function
   > * Substitute the expression for $y$ into the perimeter formula:
   >   * $P = 2x + 2y = 2x + 2(\frac{36}{x})$
   >   * $P = 2x + \frac{72}{x}$
   > * This is now a function of one variable $x$
   >
   > #### Step 4: Find the critical points for minimum perimeter
   > * To minimize, take the derivative and set equal to zero:
   >   * $\frac{dP}{dx} = 2 - \frac{72}{x^2} = 0$
   >
   > #### Step 5: Solve for the critical point
   > * $2 = \frac{72}{x^2}$
   > * $2x^2 = 72$
   > * $x^2 = 36$
   > * $x = 6$ (using the positive value since width must be positive)
   >
   > #### Step 6: Find the corresponding length
   > * When $x = 6$: $y = \frac{36}{6} = 6$
   >
   > #### Step 7: Verify and interpret the result
   > * The rectangle that minimizes perimeter has dimensions $6 \times 6$
   > * This is a square with sides of length 6
   > * Area check: $6 \times 6 = 36$ square units ✓
   > * Minimum perimeter: $P = 2(6) + 2(6) = 24$ units
   >
   > #### Mathematical insight
   > * Among all rectangles with the same area, the square has the minimum perimeter
   > * This is a special case of the isoperimetric inequality
   > * The result shows that the most efficient shape for enclosing a given area is a square (or more generally, a circle)

## Visual Learning Activities

1. **Graphical Exploration**: Use Desmos to create sliders for the coefficients in a linear-quadratic system and observe how the number of intersections changes.

2. **Geometric Construction**: Create paper models of lines and parabolas to physically demonstrate intersections.

3. **Solution Classification**: Provide various linear-quadratic systems and have students classify them by number of solutions before solving them.

4. **Real-World Modeling**: Use projectile motion to demonstrate how a ball's path intersects horizontal obstacles.

## Tips for Success

1. **Connect to previous learning**: Remind students that they're combining their knowledge of linear equations and quadratic equations.

2. **Emphasize multiple methods**: Show that substitution, elimination, and graphical methods all have their strengths and appropriate uses.

3. **Verify solutions**: Always substitute solutions back into both original equations to confirm they work.

4. **Provide context**: Use real-world applications to help students see the relevance of linear-quadratic systems.

5. **Build geometric intuition**: Use graphs to help students visualize why systems might have 0, 1, or 2 solutions.

## Online Resources

- **Desmos.com**: Interactive graphing calculator to visualize linear-quadratic systems
- **Khan Academy**: Video lessons on solving systems with a linear and quadratic equation
- **PurpleMath**: Clear written explanations of methods for solving linear-quadratic systems
- **GeoGebra.org**: Interactive demonstrations of the geometric interpretation of solutions

## Next Steps

Once you understand how to solve linear-quadratic systems, you can move on to:
1. Systems involving two quadratic equations
2. Linear-quadratic inequalities
3. Optimization problems using systems of equations
4. Applications in economics, physics, and engineering

**Remember:** Every time functions intersect, something amazing happens in the real world! These system-solving skills are your ticket to understanding everything from optimal pricing to rocket trajectories. Master this now, and you'll see intersections of math and reality everywhere you look!
