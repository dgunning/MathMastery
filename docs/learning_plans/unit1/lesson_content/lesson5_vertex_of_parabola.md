# Vertex of a Parabola

## What You're Learning

The vertex is the turning point of a parabola — which unlocks the ability to find maximum and minimum values and solve real-world optimization problems

## Why This Matters

**Real-World Applications:**
- **Sports Engineering:** Every time you watch a basketball shot, football pass, or baseball trajectory, you're seeing the vertex principle in action! Sports analysts use vertex calculations to determine optimal shooting angles and predict where balls will land. The NFL employs mathematicians who calculate these parabolic motions for game strategy.

- **Civil Engineering:** When designing suspension bridges, the cables naturally form parabolic shapes where the vertex is the lowest point. Engineers must precisely calculate this vertex position to ensure proper weight distribution and structural integrity. The Golden Gate Bridge's iconic curve relies on these exact calculations.

- **Smartphone Technology:** Your phone's camera uses vertex calculations to determine the focal point when taking photos, especially in portrait mode. Tech companies like Apple and Samsung employ these algorithms for perfect focus every time you snap a picture.

- **Theme Park Design:** Roller coaster designers use parabolic motion and vertex calculations to create the perfect combination of thrilling drops and safe speeds. When you feel that moment of weightlessness at the top of a coaster hill, that's the vertex at work!

**Career Connection:** Skills in parabolic analysis and vertex calculations are specifically sought after in engineering, video game design, sports analytics, and architectural fields. These positions typically start at $70,000-$95,000 annually, with senior roles exceeding $120,000 at companies like Electronic Arts, Autodesk, and major sports franchises.

## Key Concepts

### 1. Understanding Parabolas and Quadratic Functions

**Simple explanation:** "A parabola is the U-shaped curve created when we graph a quadratic function, which has the form f(x) = ax² + bx + c. Every parabola has a special point called the vertex, which is either the lowest point (if the parabola opens upward) or the highest point (if it opens downward)."

**Key terms:**
- **Quadratic function:** f(x) = ax² + bx + c (where a ≠ 0)
- **Parabola:** The U-shaped graph of a quadratic function
- **Vertex:** The minimum or maximum point of the parabola
- **Axis of symmetry:** The vertical line passing through the vertex

**Visual aid:** Draw examples of parabolas, clearly marking the vertex:
```
    Parabola opens upward         Parabola opens downward
    (minimum point)                (maximum point)
    
         |                              |    
         |                              |    
         |                              |     •
         |                              |    / \
         |                             •|•  /   \
         |                           /  |  /     \
         |                         /    |        
         |         •              /     |        
         |        / \            /      |        
         |       /   \          /       |        
         |      /     \        /        |        
    -----•-----•------•-------•--------•|•-------•------
         |    /       vertex   \        |vertex   \
         |   /                  \       |          \
```

**Real-world example:** "Think of a basketball shot - the ball follows a parabolic path. The vertex is the highest point the ball reaches during its flight."

### 2. The Significance of the Vertex

**Simple explanation:** "The vertex is the most important point on a parabola because it tells us:
1. The minimum or maximum value of the function
2. Where the function changes direction
3. The location of the axis of symmetry"

**Applications of the vertex:**

1. **Gaming:** "In an angry birds type game, the vertex tells you the maximum height of your projectile and helps you aim accurately."

2. **Sports:** "For a football pass, the vertex determines how high the ball goes and whether it will clear the defenders."

3. **Business:** "For a company, if profit = revenue - cost, and both depend on quantity produced, the vertex tells you the quantity that maximizes profit."

4. **Architecture:** "Suspension bridges use parabolic curves where the vertex is critical to the design."

**Key insight:** "Knowing the vertex allows you to find the optimal value - whether it's the maximum height, minimum cost, or best performance point."

### 3. Finding the Vertex Using the Formula

**Simple explanation:** "For a quadratic function f(x) = ax² + bx + c, the x-coordinate of the vertex is found using the formula x = -b/(2a). Once we know the x-value, we plug it back into the original equation to find the y-coordinate."

**Step-by-step process:**
1. Identify a, b, and c in the quadratic function
2. Calculate x = -b/(2a) to find the x-coordinate of the vertex
3. Substitute this x-value into the original equation to find the y-coordinate
4. The vertex is the point (x, y)

**Example with clear steps:**
```
Find the vertex of f(x) = 2x² - 8x + 7

Step 1: Identify a = 2, b = -8, c = 7
Step 2: x = -b/(2a) = -(-8)/(2×2) = 8/4 = 2
Step 3: f(2) = 2(2)² - 8(2) + 7 = 2(4) - 16 + 7 = 8 - 16 + 7 = -1
Step 4: The vertex is (2, -1)
```

**Practice problems:**
1. Find the vertex of g(x) = -3x² + 12x - 5
2. Find the vertex of h(x) = x² + 6x + 8

**Visual confirmation:** "After finding the vertex algebraically, graph the function in Desmos.com to visually confirm your answer."

### 4. Finding the Vertex by Completing the Square

**Simple explanation:** "Another way to find the vertex is by rewriting the quadratic function in vertex form: f(x) = a(x - h)² + k, where (h, k) is the vertex."

**Step-by-step process:**
1. Factor out the leading coefficient a
2. Complete the square for the expression inside the parentheses
3. Rewrite in the form a(x - h)² + k
4. Identify the vertex as (h, k)

**Example with clear steps:**
```
Convert f(x) = 2x² - 12x + 13 to vertex form

Step 1: Factor out a = 2
f(x) = 2(x² - 6x) + 13

Step 2: Complete the square inside parentheses
First, take half the coefficient of x: -6/2 = -3
Square it: (-3)² = 9
Add and subtract 9 inside the parentheses:
f(x) = 2(x² - 6x + 9 - 9) + 13
f(x) = 2(x² - 6x + 9) - 2(9) + 13
f(x) = 2(x - 3)² - 18 + 13
f(x) = 2(x - 3)² - 5

Step 3: The function is now in the form a(x - h)² + k where a = 2, h = 3, k = -5

Step 4: The vertex is (3, -5)
```

**Interactive activity:** "Let's convert between standard form and vertex form for these functions:"
1. f(x) = x² - 8x + 12
2. g(x) = -2(x - 3)² + 5

### 5. Understanding the Vertex Form of Quadratic Functions

**Simple explanation:** "The vertex form of a quadratic function is f(x) = a(x - h)² + k, where:
- a determines whether the parabola opens upward (a > 0) or downward (a < 0) and how wide/narrow it is
- (h, k) is the vertex of the parabola"

**Visual aid:** "Draw several parabolas with different values of a, h, and k to show how each parameter affects the graph."

**Tech tip:** "In Desmos, try graphing y = a(x - h)² + k and use sliders for a, h, and k to see how changing each value transforms the graph."

**Making connections:** "The vertex form directly gives us the vertex (h, k), while the standard form requires calculation to find the vertex. Both forms are useful in different situations."

### 6. Using the Vertex to Find Minimum or Maximum Values

**Simple explanation:** "The y-coordinate of the vertex represents the minimum value of the function (if a > 0) or the maximum value (if a < 0)."

**Real-world application:** "A company's profit function might be P(x) = -2x² + 120x - 500, where x is the number of products manufactured. To maximize profit:"
```
Step 1: Identify a = -2, b = 120, c = -500
Step 2: x = -b/(2a) = -(120)/(2×(-2)) = -120/(-4) = 30
Step 3: P(30) = -2(30)² + 120(30) - 500 = -2(900) + 3600 - 500 = -1800 + 3600 - 500 = 1300
Step 4: Maximum profit is $1300 when 30 products are manufactured
```

**Activity: "Optimization Challenge"**
"You're designing a rectangular pen for your dog using 100 feet of fencing. The function that gives the area of the pen is A(x) = x(50 - x), where x is the width. What dimensions maximize the area?"
```
A(x) = x(50 - x) = 50x - x²
This is a quadratic function with a = -1, b = 50
The x-coordinate of the vertex is x = -b/(2a) = -50/(-2) = 25
The maximum area is A(25) = 25(25) = 625 square feet
The optimal dimensions are 25 feet × 25 feet
```

### 7. The Vertex and the Axis of Symmetry

**Simple explanation:** "The vertical line passing through the vertex is called the axis of symmetry. If you fold the graph along this line, the two sides of the parabola match perfectly."

**Visual demonstration:** "Draw a parabola on a piece of paper, then fold it along the axis of symmetry to show how the two sides align."

**Formula:** "The equation of the axis of symmetry is x = -b/(2a), which is the same as the x-coordinate of the vertex."

**Practical use:** "The axis of symmetry helps us understand that for any y-value (except the vertex), there are usually two x-values that give that result - one on each side of the axis of symmetry."

### 8. Finding Intercepts Using the Vertex

**Simple explanation:** "Once we know the vertex, finding the intercepts becomes easier."

**Finding y-intercept:**
"The y-intercept is where the parabola crosses the y-axis (at x = 0). Simply evaluate f(0) = c."

**Finding x-intercepts:**
"The x-intercepts are where the parabola crosses the x-axis (where f(x) = 0). 
1. If the vertex is above the x-axis (positive y) and a > 0, there are no x-intercepts.
2. If the vertex is on the x-axis (y = 0), there is exactly one x-intercept at the vertex.
3. If the vertex is below the x-axis (negative y) and a > 0, there are two x-intercepts."

**Example:**
"For f(x) = 2x² - 8x + 7 with vertex (2, -1):
1. The vertex is below the x-axis (y = -1)
2. Since a = 2 > 0, the parabola opens upward
3. Therefore, there are two x-intercepts
4. We can find them by solving 2x² - 8x + 7 = 0 using the quadratic formula or factoring"

## Check for Understanding

After covering the material, ask these questions:

1. "What is the vertex of a parabola and why is it important?"
2. "How do you find the vertex of f(x) = 3x² - 12x + 5?"
3. "If a parabola opens downward, what does the vertex represent?"
4. "How are the vertex form and standard form of a quadratic function related?"
5. "In the context of a projectile motion problem, what does the vertex represent?"

## Practice Problems

1. Find the vertex of each quadratic function:
   - f(x) = 2x² - 4x + 7
   - g(x) = -3x² + 12x - 5
   - h(x) = x² + 6x + 9

2. Convert each function to vertex form:
   - f(x) = x² - 6x + 8
   - g(x) = 2x² + 8x + 7

3. A ball is thrown upward from an initial height of 5 feet with an initial velocity of 32 feet per second. The height h(t) after t seconds is given by h(t) = -16t² + 32t + 5.
   - What is the maximum height reached by the ball?
   - At what time does the ball reach its maximum height?
   - When does the ball hit the ground?

4. The profit P(x) from selling x items is given by P(x) = -2x² + 80x - 100.
   - How many items should be sold to maximize profit?
   - What is the maximum profit?

5. A farmer has 200 meters of fencing to enclose a rectangular field. Express the area A as a function of the width x, and find the dimensions that maximize the area.

**Solutions:**
1. Vertices:
   - f(x): (1, 5)
   - g(x): (2, 7)
   - h(x): (-3, 0)

2. Vertex forms:
   - f(x) = (x - 3)² - 1
   - g(x) = 2(x + 2)² - 1

3. Ball problem:
   - Maximum height: 21 feet
   - Time at maximum height: 1 second
   - Ground impact at approximately 2.4 seconds

4. Profit problem:
   - Sell 20 items
   - Maximum profit: $700

5. Farm problem:
   - Area function: A(x) = x(100 - x) = 100x - x²
   - Maximum at x = 50, dimensions 50 × 50
   - Maximum area: 2500 square meters

## Visual Learning Activities

1. **Parabola Art Project**: Create a beautiful pattern using parabolas with different vertices and orientations.

2. **3D Parabola Model**: Build a physical model of a parabola with the vertex marked, using pipe cleaners or string.

3. **Vertex Challenge Game**: Create cards with quadratic functions. Students race to find the vertex, with points awarded for speed and accuracy.

4. **Parabolic Mirror Experiment**: Demonstrate how light focuses at the focal point of a parabolic reflector (connected to the vertex).

## Tips for Teaching Success

1. **Connect to physics**: Show how projectile motion problems rely on finding the vertex.

2. **Use technology**: Use Desmos or GeoGebra to visualize how changing coefficients affects the vertex location.

3. **Emphasize real applications**: Bridge design, satellite dishes, and headlight reflectors all use properties of the vertex.

4. **Start with vertex form**: Sometimes it's easier to start with vertex form to build intuition before moving to standard form.

5. **Link to problem-solving**: Show how optimization problems often involve finding the vertex of a quadratic function.

## Online Resources

- **Desmos.com**: Interactive quadratic function graphing with vertex marking
- **Khan Academy**: Search "Vertex of a parabola" for video tutorials
- **GeoGebra.org**: Interactive parabola explorations
- **PurpleMath**: Written explanations of vertex calculations

## Next Steps

Once you understand the vertex of a parabola, you can move on to:
1. Maximum and minimum problems (optimization)
2. Completing the square method for solving quadratic equations
3. Transformations of parabolas (shifting, stretching, reflecting)
4. Connections between the vertex and the discriminant

**Remember:** The vertex isn't just a point—it's the command center of the entire parabola! Whether designing bridges, analyzing projectiles, or optimizing profits, the vertex gives you the critical information in one powerful location. Spot it, calculate it, use it, and watch how quickly you can solve problems that leave others stumped!
