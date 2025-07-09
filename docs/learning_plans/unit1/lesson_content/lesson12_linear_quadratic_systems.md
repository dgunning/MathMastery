# Solving Linear-Quadratic Systems

## What You're Learning

Linear-quadratic systems find intersection points between lines and curves

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

**Example 1: Line and parabola (using y = form)**
```
Solve the system:
y = 2x - 3
y = x² - 4

Step 1: The linear equation is already solved for y
        y = 2x - 3
        
Step 2: Substitute into the quadratic equation
        2x - 3 = x² - 4
        
Step 3: Rearrange to standard form
        0 = x² - 2x - 3 + 4
        0 = x² - 2x + 1
        
Step 4: Solve the quadratic equation
        x² - 2x + 1 = 0
        (x - 1)² = 0
        x = 1
        
Step 5: Substitute back to find y
        y = 2(1) - 3 = -1
        
Step 6: The solution is (1, -1)
        This represents a single point of intersection where the line is tangent to the parabola
```

**Example 2: Line and parabola (two intersection points)**
```
Solve the system:
y = x + 2
y = x² - 2

Step 1: The linear equation is already solved for y
        y = x + 2
        
Step 2: Substitute into the quadratic equation
        x + 2 = x² - 2
        
Step 3: Rearrange to standard form
        0 = x² - x - 4
        
Step 4: Solve the quadratic equation
        x = [-(-1) ± √(1 + 16)]/2
        x = [1 ± √17]/2
        x ≈ 2.56 or x ≈ -1.56
        
Step 5: Substitute back to find y
        For x ≈ 2.56: y = 2.56 + 2 ≈ 4.56
        For x ≈ -1.56: y = -1.56 + 2 ≈ 0.44
        
Step 6: The solutions are approximately (2.56, 4.56) and (-1.56, 0.44)
        These represent two points where the line intersects the parabola
```

**Example 3: General form equations**
```
Solve the system:
2x + y = 5
x² + y = 3

Step 1: Solve the linear equation for y
        y = 5 - 2x
        
Step 2: Substitute into the quadratic equation
        x² + (5 - 2x) = 3
        
Step 3: Simplify
        x² + 5 - 2x = 3
        x² - 2x + 2 = 0
        
Step 4: Solve the quadratic equation
        x = [2 ± √(4 - 8)]/2
        x = [2 ± √(-4)]/2
        
Step 5: Since the discriminant is negative, there are no real solutions
        This means the line and parabola do not intersect
```

**Key insight:** "The number of solutions to the quadratic equation tells us how many intersection points there are between the line and the parabola."

### 3. Elimination Method

**Simple explanation:** "The elimination method is an alternative approach where we manipulate the equations to eliminate one variable."

**Step-by-step process:**
1. Arrange both equations in the form ax + by + c = 0
2. Manipulate the equations to eliminate the y variable
3. Solve the resulting quadratic equation in x
4. Substitute back to find the corresponding y-values
5. Write the solutions as coordinate pairs (x, y)

**Example:**
```
Solve the system:
x + y = 5
x² + y = 13

Step 1: Both equations are already in an appropriate form

Step 2: Subtract the first equation from the second to eliminate y
        x² + y = 13
        x + y = 5
        -------------
        x² - x = 8
        
Step 3: Solve the quadratic equation
        x² - x - 8 = 0
        (x - 4)(x + 2) = 0
        x = 4 or x = -2
        
Step 4: Substitute back into x + y = 5 to find y
        For x = 4: y = 5 - 4 = 1
        For x = -2: y = 5 - (-2) = 7
        
Step 5: The solutions are (4, 1) and (-2, 7)
```

**When to use elimination:** "Elimination is particularly useful when:
- The linear equation is not easily solved for y
- Both equations are in general form
- You want to avoid fractions in your work"

### 4. Graphical Method

**Simple explanation:** "We can solve linear-quadratic systems graphically by plotting both equations and identifying the intersection points."

**Step-by-step process:**
1. Graph the linear equation (a straight line)
2. Graph the quadratic equation (a parabola)
3. Find the coordinates of the intersection point(s)

**Example with technology:**
```
Solve the system:
y = -3x + 4
y = x² - 2x + 1

Using Desmos or a graphing calculator:
1. Enter y = -3x + 4
2. Enter y = x² - 2x + 1
3. Use the intersection feature to find the points where they cross
   Intersection points: approximately (3, -5) and (1, 1)
```

**Benefits of graphical approach:**
- Provides visual understanding of the system
- Helps verify algebraic solutions
- Shows when a system has no solutions or a single solution

**Key insight:** "The graphical approach gives us a visual understanding of the system, but the algebraic methods typically provide more precise solutions."

### 5. Using the Discriminant to Analyze Solutions

**Simple explanation:** "We can use the discriminant to determine how many solutions a linear-quadratic system has without fully solving it."

**Step-by-step process:**
1. Express the system as a single quadratic equation (through substitution)
2. Calculate the discriminant b² - 4ac
3. Analyze the discriminant:
   - If b² - 4ac > 0: Two intersection points
   - If b² - 4ac = 0: One intersection point (tangent)
   - If b² - 4ac < 0: No intersection points

**Example:**
```
Analyze the system:
y = 2x + 1
y = x² - 4

Step 1: Substitute the linear equation into the quadratic
        2x + 1 = x² - 4
        
Step 2: Rearrange to standard form
        0 = x² - 2x - 5
        
Step 3: Identify a = 1, b = -2, c = -5
        
Step 4: Calculate the discriminant
        b² - 4ac = (-2)² - 4(1)(-5) = 4 + 20 = 24
        
Step 5: Since the discriminant is positive, the system has two solutions
```

**Connection to previous learning:** "This applies your knowledge of the discriminant from our earlier lesson on quadratic equations."

### 6. Special Cases

**Simple explanation:** "There are some special cases worth noting when solving linear-quadratic systems."

**Case 1: Horizontal line y = k**
```
For a system with:
y = k
y = ax² + bx + c

The x-coordinates of the intersection points are where:
k = ax² + bx + c
ax² + bx + (c - k) = 0

This gives us the equation of a horizontal line intersecting a parabola.
```

**Case 2: Vertical line x = h**
```
For a system with:
x = h
y = ax² + bx + c

The intersection point(s) are:
x = h
y = a(h)² + b(h) + c

This is a direct substitution giving us the exact intersection point(s).
```

**Case 3: Line through the vertex**
```
For a parabola y = a(x - h)² + k with vertex (h, k):
- If a line passes through the vertex, it will have exactly one intersection with the parabola at (h, k)
- Any other line parallel to this one will either have 0 or 2 intersections with the parabola
```

**Key insight:** "Understanding these special cases can simplify solving certain linear-quadratic systems."

### 7. Applications of Linear-Quadratic Systems

**Simple explanation:** "Linear-quadratic systems appear in many real-world scenarios where linear and quadratic relationships interact."

**Example 1: Break-even analysis**
```
A company's revenue function is linear: R = 50x
Their cost function is quadratic: C = x² + 10x + 100
When does the company break even (R = C)?

Step 1: Set up the system
        R = 50x
        C = x² + 10x + 100
        
Step 2: Set R = C
        50x = x² + 10x + 100
        
Step 3: Rearrange to standard form
        0 = x² - 40x + 100
        
Step 4: Solve
        x = [40 ± √(1600 - 400)]/2
        x = [40 ± √1200]/2
        x ≈ 27.4 or x ≈ 12.6
        
Step 5: Interpretation: The company breaks even when they produce and sell either approximately 13 units or 27 units
```

**Example 2: Projectile motion and obstacle**
```
A ball is thrown according to the height equation h = -16t² + 40t + 6
A horizontal bar is positioned at height h = 30 feet
When does the ball cross the bar?

Step 1: Set up the system
        h = -16t² + 40t + 6
        h = 30
        
Step 2: Substitute
        30 = -16t² + 40t + 6
        
Step 3: Rearrange
        0 = -16t² + 40t - 24
        0 = 16t² - 40t + 24
        
Step 4: Solve
        t = [40 ± √(1600 - 1536)]/32
        t = [40 ± √64]/32
        t = [40 ± 8]/32
        t = 1.5 or t = 1
        
Step 5: Interpretation: The ball crosses the height of 30 feet twice: once on the way up at t = 1 second, and once on the way down at t = 1.5 seconds
```

**Example 3: Geometry problem**
```
A rectangle has perimeter 20 units. Find the dimensions that maximize the area.

Step 1: Let width = x and length = y
        Perimeter equation: 2x + 2y = 20
        Area equation: A = xy
        
Step 2: Solve the perimeter equation for y
        y = (20 - 2x)/2 = 10 - x
        
Step 3: Substitute into area equation
        A = x(10 - x) = 10x - x²
        
Step 4: To maximize area, find the vertex of this parabola
        The axis of symmetry is x = -b/(2a) = -10/(2(-1)) = 5
        
Step 5: Find y when x = 5
        y = 10 - 5 = 5
        
Step 6: The maximum area occurs with dimensions 5 × 5, giving a square
```

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
1. Solving systems:
   - y = x + 2 and y = x² - 4
     Substituting: x + 2 = x² - 4
     Rearranging: x² - x - 6 = 0
     Factoring: (x - 3)(x + 2) = 0
     x = 3 or x = -2
     When x = 3: y = 5
     When x = -2: y = 0
     Solutions: (3, 5) and (-2, 0)

   - y = 2x - 1 and y = x² + 2x + 3
     Substituting: 2x - 1 = x² + 2x + 3
     Rearranging: 0 = x² + 0x + 4
     No real solutions (discriminant = 0² - 4(1)(4) = -16 < 0)

   - 2x + y = 4 and x² - y = 1
     From first: y = 4 - 2x
     Substituting: x² - (4 - 2x) = 1
     Simplifying: x² - 4 + 2x = 1
     Rearranging: x² + 2x - 5 = 0
     Using quadratic formula: x = [-2 ± √(4 + 20)]/2 = [-2 ± √24]/2 ≈ 1.45 or -3.45
     For x ≈ 1.45: y ≈ 4 - 2(1.45) ≈ 1.1
     For x ≈ -3.45: y ≈ 4 - 2(-3.45) ≈ 10.9
     Solutions: approximately (1.45, 1.1) and (-3.45, 10.9)

   - y = 3 and y = x² - 2x + 3
     Substituting: 3 = x² - 2x + 3
     Simplifying: 0 = x² - 2x
     Factoring: x(x - 2) = 0
     x = 0 or x = 2
     When x = 0 or x = 2, y = 3
     Solutions: (0, 3) and (2, 3)

2. Number of solutions:
   - y = 4x - 3 and y = x² + 2
     Substituting: 4x - 3 = x² + 2
     Rearranging: x² - 4x + 5 = 0
     Discriminant = (-4)² - 4(1)(5) = 16 - 20 = -4 < 0
     No real solutions

   - y = -2x + 5 and y = x² - 4x + 5
     Substituting: -2x + 5 = x² - 4x + 5
     Simplifying: 0 = x² - 2x
     Factoring: x(x - 2) = 0
     x = 0 or x = 2
     Two solutions

   - y = x - 1 and y = -x² + 3x + 2
     Substituting: x - 1 = -x² + 3x + 2
     Simplifying: 0 = -x² + 2x + 3
     Rearranging: x² - 2x - 3 = 0
     Discriminant = (-2)² - 4(1)(-3) = 4 + 12 = 16 > 0
     Two solutions

3. Ball problem:
   - 38 = -16t² + 48t + 6
   - -16t² + 48t - 32 = 0
   - t² - 3t + 2 = 0
   - (t - 2)(t - 1) = 0
   - t = 1 or t = 2
   - The ball crosses the bar at t = 1 second and t = 2 seconds

4. Break-even problem:
   - 80x = 2x² + 20x + 100
   - 0 = 2x² - 60x + 100
   - 0 = x² - 30x + 50
   - Using quadratic formula: x = [30 ± √(900 - 200)]/2 = [30 ± √700]/2 ≈ 28.2 or 1.8
   - The company breaks even at production levels of approximately 2 units and 28 units

5. Rectangle problem:
   - Area = xy = 36, so y = 36/x
   - Perimeter = 2x + 2y = 2x + 2(36/x) = 2x + 72/x
   - To minimize, take derivative: d/dx(2x + 72/x) = 2 - 72/x² = 0
   - Solving: 2 = 72/x², so x² = 36, x = 6
   - When x = 6, y = 36/6 = 6
   - The minimum perimeter is achieved with a 6 × 6 square

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
