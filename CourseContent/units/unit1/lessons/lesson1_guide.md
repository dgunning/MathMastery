# Introduction to Functions

### Functions are mathematical relationships where each input has exactly one output

## Why This Matters

**Real-World Applications:**
- **App Development:** When you open Instagram or TikTok, functions determine what content appears in your feed. Software engineers at these companies (earning $130,000+) write functions that transform your preferences into personalized recommendations.

- **Video Game Design:** Games like Fortnite and Minecraft use functions to control everything from character movement to world generation. Game developers at companies like Epic Games and Roblox (earning $120,000+) create functions that translate player inputs into in-game actions.

- **Data Science & AI:** When Netflix recommends shows or Spotify creates playlists, they're using functions to analyze your viewing or listening patterns. Data scientists (earning $135,000+) build complex mathematical functions that predict your preferences.

- **Financial Technology:** Banking apps use functions to calculate interest, investment returns, and loan payments. Financial analysts (earning $95,000+) at companies like Robinhood and Chase rely on functions to model economic trends and optimize investment strategies.

**Career Connection:** Understanding functions is essential for high-growth careers in technology, engineering, data analysis, scientific research, and finance. Beyond the impressive salaries, these fields offer the opportunity to build tools that millions of people use daily. The mathematical relationships you're learning today form the foundation of algorithms that power our digital world.

## Key Concepts

### 1. What is a Function?

**Simple explanation:** A function is a special relationship where each input has exactly one output. Think of it as a machine that takes something in and gives exactly one thing out.

**Real-world example:** "When you press a specific button on a video game controller, it always produces the same action in the game. Press A, you jump. Press B, you run. Each button (input) results in exactly one action (output)."

**Visual aid:** Draw a simple "function machine" on paper:
```
    INPUT               FUNCTION MACHINE               OUTPUT
   (domain)                                            (range)
     x ----->           [f(x) = 2x + 3]  ------>  y = f(x)
```

**Key point to emphasize:** "The important part is that a function can never give two different answers for the same input. It's like a reliable recipe - same ingredients, same cooking time, same result every time."

### 2. Relations vs. Functions

**Simple explanation:** "All functions are relations (relationships between inputs and outputs), but not all relations are functions. A function has the special rule that each input gives exactly one output."

**Activity: "Is It a Function?" Game**

Materials needed:
- Paper and pencil OR 
- Computer with spreadsheet program

Instructions:
1. Create a table with the following examples (or make up your own):

| Relation | Description | Function? |
|----------|-------------|-----------|
| A | Your age → your height | Yes |
| B | Your shoe size → your name | No |
| C | Time of day → temperature outside | Yes |
| D | A person → their parents | No |
| E | Price of a game → sales tax amount | Yes |
| F | Your Xbox gamertag → your game level | Yes |
| G | A city → its elevation | Yes |
| H | A movie → its actors | No |

2. For each relation, ask:
   - "Can one input have multiple outputs?"
   - "If I give you the same input twice, will I always get the same output?"

3. Identify which are functions by applying the "one input → one output" rule.

### 3. The Vertical Line Test

**Simple explanation:** "This is a quick visual way to tell if a graph shows a function. If you can draw any vertical line that crosses the graph more than once, then it's not a function."

> **Example: Applying the Vertical Line Test**
> 
> **Solution Walkthrough**
> 
> #### Step 1: Understand the vertical line test
> - A vertical line represents a single x-value (input)
> - If a vertical line crosses a graph more than once, the same input gives multiple outputs
> - This violates the definition of a function (one input → one output)
> 
> #### Step 2: Analyze common graphs
> - **Parabola (y = x²)**: 
>   * Any vertical line crosses this graph exactly once
>   * Every x-value produces exactly one y-value
>   * Therefore, this is a function ✓
> 
> - **Circle (x² + y² = 9)**:
>   * A vertical line through the center crosses the circle twice
>   * The same x-value (0) gives two different y-values (+3 and -3)
>   * Therefore, this is not a function ✗
> 
> - **Horizontal line (y = 3)**:
>   * Any vertical line crosses this graph exactly once
>   * Every x-value produces the same output (y = 3)
>   * Therefore, this is a function ✓
> 
> - **Vertical line (x = 2)**:
>   * A vertical line only exists at x = 2 and includes all possible y-values
>   * The input x = 2 maps to infinitely many outputs
>   * Therefore, this is not a function ✗
> 
> #### Final Result
> - The vertical line test provides a quick visual method to determine if a graph represents a function
> - A graph represents a function if and only if no vertical line crosses the graph more than once

**Interactive activity:** 
1. Use the free website Desmos.com
2. Type these equations:
   - y = x²
   - x² + y² = 9 (a circle)
   - y = |x|
   - x = |y|
3. Drag a vertical line across each graph to see if it ever crosses more than once

**Key point:** "The vertical line test works because a vertical line represents the same x-value (input). If the line crosses the graph twice, that means one input gives two outputs, which breaks the function rule."

### 4. Domain and Range

**Simple explanation:**
- "The domain is all the possible input values (x-values) a function can accept"
- "The range is all the possible output values (y-values) a function can produce"

**Real-world example:**
"Think of ordering at a fast-food restaurant:
- The domain is everything on the menu (all possible orders)
- The range is all the food/drinks you might receive
- Each order (input) gives you one specific meal combination (output)"

> **Example: Identifying Domain and Range**
> 
> **Solution Walkthrough**
> 
> #### Step 1: Understand what domain and range represent
> - **Domain**: All valid input values (x-values) for a function
> - **Range**: All possible output values (y-values) that the function can produce
> - Every value in the domain must have a corresponding value in the range
> 
> #### Step 2: Analyze common functions and their domains/ranges
> - **Linear function (y = mx + b)**:
>   * Domain: All real numbers (no restrictions on inputs)
>   * Range: All real numbers (outputs can be any value)
>   * Example: f(x) = 2x + 3 has domain and range of all real numbers
> 
> - **Quadratic function (y = ax² + bx + c, where a ≠ 0)**:
>   * Domain: All real numbers (no restrictions on inputs)
>   * Range: Depends on direction of parabola
>   * For a > 0: Range is [vertex y-value, ∞)
>   * For a < 0: Range is (-∞, vertex y-value]
>   * Example: f(x) = x² has domain of all real numbers and range of [0, ∞)
> 
> - **Square root function (y = √x)**:
>   * Domain: [0, ∞) (can't take square root of negative numbers)
>   * Range: [0, ∞) (square root always produces non-negative values)
>   * Example: f(x) = √x has domain and range of [0, ∞)
> 
> #### Step 3: Identify domain and range in real-world contexts
> - **Video Game Character Level**:
>   * Function: Time played (h) → Character level (L)
>   * Domain: [0, ∞) hours (can't play negative hours)
>   * Range: {1, 2, 3, ..., 60} (discrete values from level 1 to maximum level)
>   * Restrictions: Character levels are whole numbers and have a maximum
> 
> - **Basketball Shot Probability**:
>   * Function: Distance from basket (d) → Probability of making shot (p)
>   * Domain: [0, 94] feet (length of a basketball court)
>   * Range: [0, 1] or [0%, 100%] (probabilities can't exceed 100%)
>   * Restriction: Beyond court length, probability becomes meaningless
> 
> #### Final Result
> - Domain and range help us understand what values make sense for a particular function
> - Physical and practical constraints often limit domains and ranges in real-world applications
> - Understanding these constraints helps us use functions to model realistic scenarios

**Activity: "Real Life Domain and Range"**

For each scenario, identify the domain and range:

1. **Video Game Character Level**
   - Function: Time played → Character level
   - Domain: 0 hours to unlimited hours
   - Range: Level 1 to maximum level (e.g., 60)
   
2. **YouTube Video Views**
   - Function: Days since posting → Number of views
   - Domain: 0 days to present
   - Range: 0 views to unlimited views
   
3. **Basketball Shots**
   - Function: Distance from basket → Probability of making the shot
   - Domain: 0 feet to court length
   - Range: 0% to 100%

**Discussion questions:**
- "Why can't your character be level -5?" (Domain restrictions)
- "Why can't you have -10 YouTube views?" (Range restrictions)
- "Why can't you have a 110% chance of making a basketball shot?" (Range restrictions)

### 5. Function Notation

**Simple explanation:** "Function notation is just a shorthand way to write functions. Instead of saying 'y equals 2 times x plus 3,' we can write f(x) = 2x + 3."

**Important points:**
- "f(x) means 'the output when the input is x'"
- "It's NOT f times x. It's 'f of x'"
- "You can use other letters too: g(x), h(x), etc."

**Practice: "What's the Output?"**

For the function f(x) = 2x + 3, evaluate the following:

> **Example 1: Find f(0)**
> 
> **Solution Walkthrough**
> 
> #### Step 1: Identify what we need to find
> - We need to evaluate the function f(x) = 2x + 3 when x = 0
> 
> #### Step 2: Substitute the input value
> - Replace x with 0 in the function: f(0) = 2(0) + 3
> 
> #### Step 3: Calculate the output
> - Simplify: f(0) = 0 + 3 = 3
> 
> #### Final Result
> - When the input is 0, the output of the function is 3, or f(0) = 3

> **Example 2: Find f(2)**
> 
> **Solution Walkthrough**
> 
> #### Step 1: Substitute the input value
> - Replace x with 2 in the function: f(2) = 2(2) + 3
> 
> #### Step 2: Calculate the output
> - Simplify: f(2) = 4 + 3 = 7
> 
> #### Final Result
> - When the input is 2, the output of the function is 7, or f(2) = 7

> **Example 3: Find f(-1)**
> 
> **Solution Walkthrough**
> 
> #### Step 1: Substitute the input value
> - Replace x with -1 in the function: f(-1) = 2(-1) + 3
> 
> #### Step 2: Calculate the output
> - Simplify: f(-1) = -2 + 3 = 1
> 
> #### Final Result
> - When the input is -1, the output of the function is 1, or f(-1) = 1

> **Example 4: If f(a) = 13, find a**
> 
> **Solution Walkthrough**
> 
> #### Step 1: Identify what we need to find
> - We know the output value is f(a) = 13
> - We need to find the input value a that gives this output
> 
> #### Step 2: Set up an equation using the function
> - Use the function formula: f(a) = 2a + 3
> - Set this equal to the known output: 2a + 3 = 13
> 
> #### Step 3: Solve for the input value
> - Subtract 3 from both sides: 2a = 10
> - Divide both sides by 2: a = 5
> 
> #### Step 4: Verify the solution
> - Check: f(5) = 2(5) + 3 = 10 + 3 = 13 ✓
> 
> #### Final Result
> - The input value that produces an output of 13 is a = 5

**Real-world application: Phone Plan Cost**

If C(h) represents the cost of using your phone for h hours, and C(h) = 10 + 5h dollars:

> **Example 1: What does C(0) mean?**
> 
> **Solution Walkthrough**
> 
> #### Step 1: Understand the function in context
> - C(h) represents the cost in dollars for h hours of phone usage
> - C(h) = 10 + 5h means there's a fixed cost of $10 plus $5 per hour used
> 
> #### Step 2: Evaluate C(0)
> - Substitute h = 0 into the function: C(0) = 10 + 5(0)
> - Simplify: C(0) = 10 + 0 = 10
> 
> #### Step 3: Interpret the result
> - C(0) = 10 means the cost is $10 when using the phone for 0 hours
> - This represents the monthly fee that you pay regardless of usage
> 
> #### Final Result
> - C(0) = $10 is the monthly base fee for the phone plan

> **Example 2: What does C(3) mean?**
> 
> **Solution Walkthrough**
> 
> #### Step 1: Evaluate C(3)
> - Substitute h = 3 into the function: C(3) = 10 + 5(3)
> - Simplify: C(3) = 10 + 15 = 25
> 
> #### Step 2: Interpret the result
> - C(3) = 25 means the cost is $25 when using the phone for 3 hours
> - This includes both the monthly fee and the hourly usage charge
> 
> #### Final Result
> - C(3) = $25 is the total cost for 3 hours of phone usage

> **Example 3: If C(h) = 40, how many hours did you use?**
> 
> **Solution Walkthrough**
> 
> #### Step 1: Set up an equation
> - We know that C(h) = 40 (the total cost is $40)
> - Using the function formula: 10 + 5h = 40
> 
> #### Step 2: Solve for h
> - Subtract 10 from both sides: 5h = 30
> - Divide both sides by 5: h = 6
> 
> #### Step 3: Verify the solution
> - Check: C(6) = 10 + 5(6) = 10 + 30 = 40 ✓
> 
> #### Final Result
> - If your phone bill is $40, you used the phone for 6 hours

### 6. Multiple Representations of Functions

Functions can be represented in 4 ways:

1. **Verbally (words):** "Add 3 to twice the input"
2. **Algebraically (equation):** f(x) = 2x + 3
3. **Numerically (table):**

   | x | f(x) |
   |---|------|
   | 0 | 3    |
   | 1 | 5    |
   | 2 | 7    |

4. **Graphically (graph):** [A straight line with slope 2 and y-intercept 3]

> **Example: Representing a Function in Multiple Ways**
> 
> **Solution Walkthrough**
> 
> #### Step 1: Choose a function to represent
> - Let's use the absolute value function: f(x) = |x|
> - This function gives the distance of x from zero on the number line
> 
> #### Step 2: Verbal representation (words)
> - The function can be described as: "The output is the positive distance of the input from zero"
> - Alternatively: "If the input is negative, multiply it by -1; otherwise, keep it as is"
> 
> #### Step 3: Algebraic representation (equation)
> - The standard form is: f(x) = |x|
> - This can also be written as a piecewise function:
>   * f(x) = x if x ≥ 0
>   * f(x) = -x if x < 0
> 
> #### Step 4: Numerical representation (table)
> - Create a table showing inputs and corresponding outputs:
> 
>   | x  | f(x) |
>   |----|------|
>   | -3 | 3    |
>   | -2 | 2    |
>   | -1 | 1    |
>   | 0  | 0    |
>   | 1  | 1    |
>   | 2  | 2    |
>   | 3  | 3    |
> 
> - Notice the pattern: negative inputs produce positive outputs equal to their magnitude
> 
> #### Step 5: Graphical representation
> - The graph of f(x) = |x| is V-shaped
> - It has a vertex at the origin (0,0)
> - For x < 0, the graph has a slope of -1
> - For x > 0, the graph has a slope of 1
> - The graph never goes below the x-axis (all outputs are non-negative)
> 
> #### Step 6: Analyze connections between representations
> - The V-shape in the graph corresponds to the two-part definition in the piecewise function
> - The symmetry in the table (same outputs for x and -x) reflects in the graph as symmetry about the y-axis
> - The verbal description explains why all outputs in the table are non-negative
> 
> #### Final Result
> - Each representation highlights different aspects of the same function
> - The verbal representation helps understand the function's meaning
> - The algebraic representation enables calculations and manipulations
> - The table shows specific input-output pairs for analysis
> - The graph provides a visual overview of the function's behavior

**Activity: "Four Ways to Show It"**
Pick a simple function like f(x) = |x| (absolute value) and show all four representations.

## Check for Understanding

After covering the material, ask these questions:

1. "What makes a relation a function?"
2. "What is the vertical line test checking for?"
3. "In your own words, what are domain and range?"
4. "If f(x) = 3x - 4, what is f(2)? What about f(-1)?"
5. "Give me an example of a function from everyday life."

## Tips for Success

1. **Connect to interests:** Use examples from gaming, sports, social media, or whatever you enjoy.
2. **Be patient:** Functions are abstract. It might take several attempts for the concept to click.
3. **Use visuals:** Draw pictures, use online tools, or create physical models.
4. **Take breaks:** If frustration builds, switch to another activity and come back later.
5. **Celebrate understanding:** When concepts click, acknowledge the achievement.

## Online Resources

- **Desmos.com**: Free online graphing calculator
- **Khan Academy**: Search "Intro to functions" for video tutorials
- **GeoGebra.org**: Interactive math tools for visualizing functions

## Next Steps

Once you understands these basics, you can move on to:
1. Function transformations (how changing the equation affects the graph)
2. Special functions (quadratic, exponential, etc.)
3. Function operations (adding, subtracting, multiplying functions)

**Remember:** The goal is understanding, not memorization. If you can explain the concepts in your own words and apply them to new situations, you're on the right track!
