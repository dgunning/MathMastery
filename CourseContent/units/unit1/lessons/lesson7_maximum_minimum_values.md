# Maximum and Minimum Values

### Maximum and minimum values represent the extreme points of quadratic functions

## Why This Matters

**Real-World Applications:**
- **Business & Economics:** Companies like Amazon and Walmart use maximum/minimum calculations to determine optimal pricing strategies that maximize profit. A difference of just a few cents in price can generate millions in additional revenue when optimized correctly.

- **Architecture & Construction:** Engineers use these calculations to design structures that maximize strength while minimizing materials. The stunning arch of the St. Louis Gateway Arch is a 630-foot-tall example of optimization mathematics at work.

- **Product Design:** From smartphone batteries that maximize energy storage to aerodynamic vehicles that minimize wind resistance, product designers rely on these mathematical principles to create superior products. Tesla uses quadratic optimization to maximize the range of their electric vehicles.

- **Sports Analytics:** Professional teams use maximum/minimum values to optimize player performance, from the perfect launch angle in baseball (approximately 32°) to ideal basketball shooting trajectories that maximize scoring probability.

**Career Connection:** Professionals who master optimization mathematics are highly sought after in fields like operations research ($92,000 average salary), financial analysis ($85,000+), data science ($120,000+), and engineering design ($90,000+). Companies like Google, JP Morgan, and Boeing specifically seek candidates with these optimization skills.

## Key Concepts to Cover

### 1. Maximum vs. Minimum Values in Quadratics

**Simple explanation:** "The vertex of a parabola represents either a maximum or minimum value, depending on whether the parabola opens downward or upward:
- If a > 0 (parabola opens upward): The vertex is the minimum value
- If a < 0 (parabola opens downward): The vertex is the maximum value"

**Visual aid:** Draw examples of upward and downward parabolas:
```
    a > 0                          a < 0
    Parabola opens upward          Parabola opens downward
    (vertex is minimum)            (vertex is maximum)
    
         |                              |    
         |       /|\                    |       ---
         |      / | \                   |      /   \
         |     /  |  \                  |     /     \
         |    /   |   \                 |    /       \
         |   /    |    \                |   /         \
    -----+--+-----+-----+------    -----+--+---------+--+-----
         |  /     |     \              |  /           \  \
         | /      |      \             | /             \  \
         |/       |       \            |/               \  \
         +        +        +           +                 \  \
              MINIMUM                        MAXIMUM      \  \
```

**Key insight:** "You can quickly determine if a quadratic function has a maximum or minimum by looking at the coefficient of x²:
- If the coefficient is positive, you have a minimum
- If the coefficient is negative, you have a maximum"

### 2. Finding Max/Min Values from Vertex Form

**Simple explanation:** "When a quadratic function is written in vertex form f(x) = a(x - h)² + k, the maximum or minimum value is simply k."

**Example with clear steps:**
```
For f(x) = -2(x - 3)² + 5:
- a = -2 (negative, so this is a maximum)
- h = 3, k = 5
- The maximum value is 5, occurring at x = 3
```

```
For g(x) = 4(x + 1)² - 7:
- a = 4 (positive, so this is a minimum)
- h = -1, k = -7
- The minimum value is -7, occurring at x = -1
```

**Practice activity:** "Convert these functions to vertex form and identify the maximum or minimum value:
1. f(x) = x² - 6x + 8
2. g(x) = -2x² + 8x - 3"

### 3. Finding Max/Min Values from Standard Form

**Simple explanation:** "For a quadratic function in standard form f(x) = ax² + bx + c, we find the max/min value by:
1. Finding the x-coordinate of the vertex: x = -b/(2a)
2. Substituting this x-value back into the function to find the y-value"

**Example with clear steps:**
```
Find the maximum value of f(x) = -3x² + 12x - 5

Step 1: a = -3, b = 12, c = -5
Step 2: The x-coordinate of the vertex is x = -b/(2a) = -(12)/(2×(-3)) = 12/6 = 2
Step 3: f(2) = -3(2)² + 12(2) - 5 = -3(4) + 24 - 5 = -12 + 24 - 5 = 7
Step 4: The maximum value is 7, occurring at x = 2
```

**Common mistake to avoid:** "Don't just calculate -b/(2a) and assume that's the maximum or minimum value. That's only the x-coordinate where the max/min occurs. You must substitute this value back into the original function to find the actual maximum or minimum y-value."

### 4. Real-World Applications of Max/Min Values

**Sports applications:**
**Find the maximum height**: When a basketball player shoots, the height of the ball after t seconds is given by h(t) = -16t² + 32t + 6, where h is in feet.

> **Solution Walkthrough**
> 
> #### Step 1: Identify the coefficients of the quadratic function
> - Looking at the function h(t) = -16t² + 32t + 6
> - a = -16 (coefficient of t²)
> - b = 32 (coefficient of t)
> - c = 6 (constant term)
> - Since a < 0, the parabola opens downward and has a maximum
>
> #### Step 2: Calculate the time at which the maximum height occurs
> - For a quadratic function, the maximum or minimum occurs at t = -b/(2a)
> - Substitute the values: t = -32/(2×(-16))
> - Simplify: t = -32/(-32) = 1 second
>
> #### Step 3: Calculate the maximum height
> - Substitute t = 1 into the height function
> - h(1) = -16(1)² + 32(1) + 6
> - h(1) = -16 + 32 + 6
> - h(1) = 22 feet
>
> #### Step 4: State the final answer
> - The ball reaches its maximum height of 22 feet after 1 second

**Business applications:**
**Maximize profit**: A company's profit function is P(x) = -2x² + 120x - 1000, where x is the number of items produced.

> **Solution Walkthrough**
> 
> #### Step 1: Identify the coefficients of the profit function
> - Looking at the function P(x) = -2x² + 120x - 1000
> - a = -2 (coefficient of x²)
> - b = 120 (coefficient of x)
> - c = -1000 (constant term)
> - Since a < 0, the parabola opens downward and has a maximum
>
> #### Step 2: Calculate the production level that maximizes profit
> - For a quadratic function, the maximum occurs at x = -b/(2a)
> - Substitute the values: x = -120/(2×(-2))
> - Simplify: x = -120/(-4) = 30 items
>
> #### Step 3: Calculate the maximum profit
> - Substitute x = 30 into the profit function
> - P(30) = -2(30)² + 120(30) - 1000
> - P(30) = -2(900) + 3600 - 1000
> - P(30) = -1800 + 3600 - 1000 = 800
>
> #### Step 4: State the final answer
> - The company should produce 30 items to maximize profit
> - The maximum profit is $800

**Technology applications:**
**Find the peak usage**: The number of daily active users (in millions) for a new app t months after launch is modeled by N(t) = -0.5t² + 6t + 2.

> **Solution Walkthrough**
> 
> #### Step 1: Identify the coefficients of the quadratic function
> - Looking at the function N(t) = -0.5t² + 6t + 2
> - a = -0.5 (coefficient of t²)
> - b = 6 (coefficient of t)
> - c = 2 (constant term)
> - Since a < 0, the parabola opens downward and has a maximum
>
> #### Step 2: Calculate the time at which usage reaches its peak
> - For a quadratic function, the maximum occurs at t = -b/(2a)
> - Substitute the values: t = -6/(2×(-0.5))
> - Simplify: t = -6/(-1) = 6 months
>
> #### Step 3: Calculate the maximum number of users
> - Substitute t = 6 into the usage function
> - N(6) = -0.5(6)² + 6(6) + 2
> - N(6) = -0.5(36) + 36 + 2
> - N(6) = -18 + 36 + 2 = 20
>
> #### Step 4: State the final answer
> - The app reaches its peak usage of 20 million daily active users after 6 months
> - After this point, the number of active users will begin to decline

### 5. Optimization Problems

**Simple explanation:** "Optimization means finding the best solution - often the maximum or minimum value of a function. Many real-world problems involve finding the optimal value."

**Area optimization example:**
**Optimization problem**: You have 100 feet of fencing to create a rectangular garden. What dimensions will maximize the area?

> **Solution Walkthrough**
> 
> #### Step 1: Express the area as a function of one variable
> - Let x = width of the rectangular garden
> - The perimeter equation: 2×width + 2×length = 100 feet of fencing
> - Solve for length: length = (100 - 2x)/2 = 50 - x
> - The area function: A(x) = width × length = x × (50 - x) = 50x - x²
>
> #### Step 2: Identify the type of function
> - A(x) = 50x - x² = -x² + 50x + 0
> - This is a quadratic function with a = -1, b = 50, c = 0
> - Since a < 0, the function has a maximum value
>
> #### Step 3: Find the width that maximizes area
> - The maximum occurs at x = -b/(2a)
> - Substitute: x = -50/(2×(-1)) = 25 feet for width
>
> #### Step 4: Calculate the corresponding length
> - Length = 50 - x = 50 - 25 = 25 feet
>
> #### Step 5: Calculate the maximum area
> - Maximum area = 25 feet × 25 feet = 625 square feet
>
> #### Step 6: State the final answer
> - The dimensions that maximize the garden area are 25 feet × 25 feet (a square)
> - This gives a maximum area of 625 square feet
> - Notice that for a fixed perimeter, a square always yields the maximum area

**Revenue optimization example:**
**Optimization problem**: A game developer finds that when they price their game at $10, they sell 5000 copies. For each $1 increase in price, they sell 250 fewer copies. What price maximizes revenue?

> **Solution Walkthrough**
> 
> #### Step 1: Set up variables and equations
> - Let x = price increase in dollars above the base price of $10
> - Actual price = 10 + x dollars
> - Quantity sold = 5000 - 250x copies (decreases by 250 copies per dollar increase)
>
> #### Step 2: Create the revenue function
> - Revenue = Price × Quantity sold
> - R(x) = (10 + x)(5000 - 250x)
> - R(x) = 50000 + 5000x - 2500x - 250x²
> - R(x) = 50000 + 2500x - 250x²
>
> #### Step 3: Identify the coefficients of the quadratic function
> - This is a quadratic function in the form R(x) = ax² + bx + c
> - a = -250 (coefficient of x²)
> - b = 2500 (coefficient of x)
> - c = 50000 (constant term)
> - Since a < 0, the parabola opens downward and has a maximum
>
> #### Step 4: Find the price increase that maximizes revenue
> - The maximum occurs at x = -b/(2a)
> - x = -2500/(2×(-250))
> - x = -2500/(-500) = 5 dollars
>
> #### Step 5: Calculate the optimal price and quantity
> - Optimal price = $10 + $5 = $15 per game
> - Quantity sold at this price = 5000 - 250(5) = 5000 - 1250 = 3750 copies
>
> #### Step 6: Calculate the maximum revenue
> - Maximum revenue = $15 × 3750 = $56,250
> - Alternatively: R(5) = 50000 + 2500(5) - 250(5)² = 50000 + 12500 - 250(25) = 50000 + 12500 - 6250 = $56,250
>
> #### Step 7: State the final answer
> - The game developer should price the game at $15 to maximize revenue
> - At this price, 3750 copies will be sold, generating a maximum revenue of $56,250

### 6. Interpreting the Meaning of Max/Min Values in Context

**Simple explanation:** "When solving real-world problems, the max/min value and its location have specific meanings in the context of the problem."

**Example interpretations:**

1. **Physics context:**
   - Function: Height of a projectile h(t) = -16t² + 64t + 6
   - Max value: 70 feet
   - Location: t = 2 seconds
   - Interpretation: "The projectile reaches its maximum height of 70 feet after 2 seconds"

2. **Business context:**
   - Function: Profit P(x) = -2x² + 80x - 300
   - Max value: $500
   - Location: x = 20 units
   - Interpretation: "The maximum profit of $500 occurs when 20 units are produced"

3. **Engineering context:**
   - Function: Strength of a beam S(x) = -0.5x² + 6x + 2
   - Max value: 20
   - Location: x = 6 meters from the wall
   - Interpretation: "The beam can support a maximum weight of 20 tons when measured 6 meters from the wall"

**Discussion questions:**
- "Why is the maximum or minimum important in this context?"
- "What would happen if we chose a different x-value than the optimal one?"
- "Are there any practical constraints that might affect our mathematical solution?"

### 7. Using Technology to Find Max/Min Values

**Simple explanation:** "Graphing calculators and online tools can help us visualize and verify maximum and minimum values."

**Using Desmos:**
1. Go to Desmos.com
2. Enter your quadratic function
3. Find the vertex using the "Points of Interest" feature
4. Verify visually if it's a maximum or minimum

**Using GeoGebra:**
1. Enter the function
2. Use the "Extremum" tool to find the max or min point
3. It will automatically calculate both coordinates of the vertex

**Comparison activity:** "Find the max/min value both algebraically and using technology, then compare your answers."

### 8. Checking Your Answer Makes Sense

**Simple explanation:** "Always verify your max/min solution by checking neighboring values. If it's truly a maximum, then values to the left and right should be smaller. If it's truly a minimum, values to the left and right should be larger."

**Example check:**
```
For f(x) = -2x² + 8x - 3 with calculated maximum at x = 2 where f(2) = 5:

Check points on either side:
f(1) = -2(1) + 8(1) - 3 = -2 + 8 - 3 = 3
f(3) = -2(9) + 8(3) - 3 = -18 + 24 - 3 = 3

Since f(2) = 5 is greater than both f(1) = 3 and f(3) = 3, our maximum is verified.
```

## Check for Understanding

After covering the material, ask these questions:

1. "How can you tell if a quadratic function has a maximum or minimum value?"
2. "What is the maximum value of f(x) = -x² + 6x - 5 and where does it occur?"
3. "If a company's profit function is P(x) = -3x² + 60x - 100, how many items should they produce to maximize profit?"
4. "In the optimization problem where we found the dimensions of a rectangle with maximum area, why did we get a square as the answer?"
5. "What is the relationship between the vertex of a parabola and its maximum or minimum value?"

## Practice Problems

1. Find the maximum or minimum value and where it occurs:
   - f(x) = 3x² - 12x + 7
   - g(x) = -x² + 8x - 12
   - h(x) = 2(x - 3)² + 5

2. A ball is thrown upward with an initial velocity of 64 feet per second from an initial height of 6 feet. The height h(t) after t seconds is given by h(t) = -16t² + 64t + 6.
   - What is the maximum height the ball reaches?
   - When does it reach that height?

3. The cost C(x) in dollars of producing x items is C(x) = 0.01x² + 2x + 100. The revenue R(x) in dollars from selling x items is R(x) = 20x - 0.05x². The profit P(x) is given by P(x) = R(x) - C(x).
   - Find the profit function P(x).
   - How many items should be produced to maximize profit?
   - What is the maximum profit?

4. A farmer has 200 meters of fencing to enclose a rectangular field. One side of the field runs along a river, so no fencing is needed on that side.
   - Find the dimensions of the field that maximize the enclosed area.
   - What is the maximum area?

5. A movie theater has found that when they charge $8 per ticket, they sell 250 tickets per showing. For each $0.50 increase in price, they sell 10 fewer tickets.
   - What ticket price maximizes revenue?
   - How many tickets are sold at this price?
   - What is the maximum revenue?

**Solutions:**
1. Function values:
   - f(x): Minimum value of -5 at x = 2
   - g(x): Maximum value of 4 at x = 4
   - h(x): Minimum value of 5 at x = 3

2. Ball problem:
   - Maximum height: 70 feet
   - Time at maximum height: 2 seconds

3. Profit problem:
   - P(x) = 20x - 0.05x² - (0.01x² + 2x + 100) = 18x - 0.06x² - 100
   - Maximum profit at x = 150 items
   - Maximum profit: $1,250

4. Field problem:
   - Dimensions: 50 meters × 50 meters
   - Maximum area: 2,500 square meters

5. Movie theater problem:
   - Optimal price: $12.50
   - Tickets sold: 160
   - Maximum revenue: $2,000

## Visual Learning Activities

1. **Max/Min Scavenger Hunt**: Find real-world examples of maximum or minimum situations in your home or neighborhood.

2. **Paper Folding Challenge**: Create the largest possible box from a sheet of paper by cutting squares from the corners and folding up the sides.

3. **Interactive Graph Exploration**: Use Desmos to explore how changing parameters affects the maximum or minimum value of a parabola.

4. **Optimization Game**: Create scenarios where students compete to find the most optimal solution to a problem.

## Tips for Success

1. **Start with the visual**: Make sure you can recognize a maximum versus a minimum visually before diving into calculations.

2. **Emphasize the process**: The steps for finding max/min values are the same regardless of context - find the vertex, then interpret.

3. **Connect to real life**: You are more engaged when you see how optimization applies to things you care about (gaming, sports, social media, etc.).

4. **Check answers**: Always verify their solutions by checking neighboring points.

5. **Use technology**: Graphing tools help build intuition about maximum and minimum values.

## Online Resources

- **Desmos.com**: Interactive graphing calculator with max/min visualization
- **Khan Academy**: Search "Maximum and minimum values of quadratic functions"
- **GeoGebra.org**: Interactive activities for optimization problems
- **PurpleMath**: Clear written explanations of max/min concepts

## Next Steps

Once you understand maximum and minimum values, you can move on to:
1. Completing the square as a method for solving quadratic equations
2. The discriminant and its relationship to the number of roots
3. Applications of quadratic functions to more complex real-world problems
4. Introduction to other types of functions and their max/min values

**Remember:** Max and min values aren't just mathematical extremes—they're the decision points that drive our world! From businesses maximizing profits to engineers minimizing material costs, these values determine success or failure. Master these skills now and you'll see optimization opportunities everywhere you look!
