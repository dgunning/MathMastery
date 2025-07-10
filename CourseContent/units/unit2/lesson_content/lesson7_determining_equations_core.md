# Determining the Equation of an Exponential Function: Parent Teaching Guide

## What You're Teaching

This guide helps you teach your teenager how to find the equation of an exponential function from various forms of information, such as graphs, points, or word problems. This is a critical skill that bridges abstract concepts with practical applications.

## Key Concepts to Cover

### 1. Forms of Exponential Functions

**Simple explanation:** "Exponential functions can be written in different forms depending on the information we have and what we want to emphasize."

**Standard form:** f(x) = a·b^(k(x-d)) + c
- a: vertical stretch factor
- b: base of the exponential
- k: horizontal stretch factor
- d: horizontal shift
- c: vertical shift

**Growth/decay form:** f(x) = a·b^x + c
- Used when we know the base (growth/decay rate)

**Point-slope form:** f(x) = a·b^(x-x₀) + c
- Used when we know a point the function passes through

### 2. Finding Equations from Key Features

**Simple explanation:** "If we know certain key features of an exponential function, we can determine its equation."

**From asymptote and point:**
1. The horizontal asymptote gives us the vertical shift (c).
2. Any point on the curve gives us an equation to solve for the remaining parameters.

**Example:**
"If an exponential function has a horizontal asymptote at y = 3 and passes through the point (2, 11), we can write:
- f(x) = a·b^x + 3
- At point (2, 11): 11 = a·b^2 + 3
- Therefore: a·b^2 = 8
- We need another condition to find both a and b."

**From two points:**
1. Write the function as f(x) = a·b^x + c
2. Substitute the two points to create a system of equations
3. Solve for a, b, and c

**From y-intercept and another point:**
1. The y-intercept (0, y₀) gives: y₀ = a·b^0 + c = a + c
2. Another point (x₁, y₁) gives: y₁ = a·b^(x₁) + c
3. Solve the system of equations for a, b, and c

### 3. Finding Equations from Two Points (No Asymptote Known)

**Simple explanation:** "When we have two points on an exponential curve, we can find the equation by setting up and solving a system of equations."

**Method:**
1. Write the equation in the form f(x) = a·b^x + c
2. Substitute the two points to create two equations
3. We need a third condition: if no asymptote is given, we need a third point
4. Alternatively, if we know it's a pure exponential, we can set c = 0

**Example:**
"For an exponential function passing through (0, 5) and (2, 17) with no vertical shift:
- f(x) = a·b^x
- At (0, 5): 5 = a·b^0 = a
- At (2, 17): 17 = a·b^2 = 5·b^2
- Therefore: b^2 = 17/5
- b = √(17/5) ≈ 1.844
- The equation is f(x) = 5·(1.844)^x"

### 4. Finding Exponential Growth/Decay Functions

**Simple explanation:** "Many real-world exponential functions follow the form P(t) = P₀·b^t, where P₀ is the initial value and b is the growth or decay factor."

**Key values:**
- Growth factor (b > 1): Amount multiplied by each unit of time
- Decay factor (0 < b < 1): Amount multiplied by each unit of time
- Growth rate (r): Percentage increase per unit time, where b = 1 + r
- Decay rate (r): Percentage decrease per unit time, where b = 1 - r

**Method:**
1. Identify P₀ (the initial value when t = 0)
2. Determine whether it's growth (increasing) or decay (decreasing)
3. Find the growth/decay factor or rate from the given information
4. Substitute into P(t) = P₀·b^t

**Example:**
"A population of 1000 bacteria doubles every 3 hours. Find the exponential function.
- Initial value: P₀ = 1000
- After 3 hours: P(3) = 2000 = 1000·b^3
- Therefore: b^3 = 2
- b = ∛2 ≈ 1.26
- The function is P(t) = 1000·(1.26)^t, where t is in hours"

### 5. Finding Equations from Graphs

**Simple explanation:** "We can determine an exponential equation by identifying key features from its graph."

**Method:**
1. Identify the horizontal asymptote (gives c)
2. Find the y-intercept (gives information about a)
3. Find another point on the curve
4. Set up and solve equations to determine the parameters

**Example:**
"From a graph, we observe:
- Horizontal asymptote at y = 2
- y-intercept at (0, 6)
- The point (3, 3) lies on the curve

Step 1: Write f(x) = a·b^x + 2
Step 2: At (0, 6): 6 = a·b^0 + 2 = a + 2, so a = 4
Step 3: At (3, 3): 3 = 4·b^3 + 2
Step 4: 1 = 4·b^3, so b^3 = 0.25, and b = ∛0.25 = 0.63
Step 5: The equation is f(x) = 4·(0.63)^x + 2"

### 6. Using Transformations to Find Equations

**Simple explanation:** "If we can identify the transformations applied to a parent function, we can write the equation directly."

**Method:**
1. Start with the parent function f(x) = b^x
2. Identify each transformation from the graph
3. Apply the transformations to the equation in the correct order

**Example:**
"We see that the graph looks like f(x) = 2^x, but:
- It's shifted right 1 unit
- It's stretched vertically by a factor of 3
- It's shifted down 4 units

So our equation is g(x) = 3·2^(x-1) - 4"

### 7. Finding Exponential Regression Equations

**Simple explanation:** "When we have a set of data points that appear to follow an exponential pattern, we can find a function that best fits those points."

**Method:**
1. Plot the data points
2. If they appear to follow an exponential pattern, use technology to find the regression equation
3. Interpret the equation in context

**Using technology:**
- Graphing calculator: ExpReg feature
- Spreadsheet software: GROWTH or EXP functions
- Online calculators: Input data points to get the best-fit equation

**Example:**
"Given data points (0,3), (1,9), (2,20), (3,52):
1. Using technology, we find the regression equation f(x) = 3.2·(2.7)^x
2. This means we start with about 3.2 and multiply by 2.7 each time x increases by 1
3. We can predict that when x = 4, f(4) ≈ 3.2·(2.7)^4 ≈ 140.6"

### 8. Using Logarithms to Find Equations

**Simple explanation:** "Logarithms are powerful tools that can help us solve for unknown exponents when finding exponential equations."

**Method for finding b when we know points (x₁,y₁) and (x₂,y₂):**
1. Set up the equation y = a·b^x
2. Substitute both points to get two equations
3. Divide one equation by the other to eliminate a
4. Take the logarithm of both sides to solve for b

**Example:**
"A function passes through (2, 18) and (5, 486):
1. Write y = a·b^x
2. Substitute: 18 = a·b^2 and 486 = a·b^5
3. Divide: 486/18 = b^(5-2), so 27 = b^3
4. Therefore: b = ∛27 = 3
5. Substitute back: 18 = a·3^2, so a = 18/9 = 2
6. The equation is f(x) = 2·3^x"

## Common Misconceptions and How to Address Them

1. **"Two points are always enough to determine an exponential function"**
   - Clarification: "We need two points to determine a pure exponential function f(x) = a·b^x. But if the function has a vertical shift, we need three points or additional information like the asymptote."

2. **"The y-intercept of an exponential function is always at (0, 1)"**
   - Clarification: "Only the parent function f(x) = b^x has a y-intercept at (0, 1). Transformed functions can have different y-intercepts."

3. **"All exponential growth functions grow at the same rate"**
   - Clarification: "Different bases result in different growth rates. A function with base 10 grows much faster than one with base 2."

4. **"Exponential regression always gives a perfect fit"**
   - Clarification: "Regression finds the 'best fit' function, but real data rarely follows a perfect exponential pattern. Always check how well the function fits the data."

## Check for Understanding

After covering the material, ask these questions:
1. "How many points do we need to determine an exponential function with a vertical shift?"
2. "How do we find the base of an exponential function if we know two points it passes through?"
3. "What information can we get from the horizontal asymptote of an exponential function?"
4. "How does knowing the y-intercept help us find the equation of an exponential function?"
5. "If a population grows by 5% each year, what is the growth factor in the exponential model?"

## Practice Problems

1. Find the equation of an exponential function that passes through the points (0, 4) and (2, 36).

2. A culture of bacteria starts with 500 cells and triples every 5 hours. Write an exponential function that models the number of bacteria after t hours.

3. Find the equation of an exponential function with a horizontal asymptote at y = -2 and passing through the point (3, 14).

4. An exponential function passes through the points (-1, 2), (0, 6), and (1, 18). Find its equation.

5. A radioactive substance decays to 70% of its original amount after 10 years. If the initial amount is 50 grams, write a function that gives the amount remaining after t years.

**Solutions:**

1. Using f(x) = a·b^x:
   - At (0, 4): 4 = a·b^0 = a, so a = 4
   - At (2, 36): 36 = 4·b^2, so b^2 = 9, and b = 3
   - The equation is f(x) = 4·3^x

2. Using the growth formula P(t) = P₀·b^t:
   - P₀ = 500 (initial amount)
   - We need to find b such that P(5) = 3·500 = 1500
   - 1500 = 500·b^5, so b^5 = 3, and b = ∛3 ≈ 1.246
   - The equation is P(t) = 500·(1.246)^t
   - Alternatively, we can write P(t) = 500·3^(t/5)

3. Using f(x) = a·b^x + c:
   - From the asymptote, c = -2
   - At (3, 14): 14 = a·b^3 - 2, so a·b^3 = 16
   - We need more information to find a and b separately
   - If this is a pure exponential with base e, then b = e and a·e^3 = 16, so a = 16/e^3 ≈ 0.8
   - The equation would be f(x) = 0.8·e^x - 2

4. Using f(x) = a·b^x + c:
   - We have three points, so we can set up three equations:
     - At (-1, 2): 2 = a·b^(-1) + c = a/b + c
     - At (0, 6): 6 = a·b^0 + c = a + c
     - At (1, 18): 18 = a·b^1 + c = a·b + c
   - From the second equation: c = 6 - a
   - Substitute into the first: 2 = a/b + 6 - a
   - Simplify: a/b - a = -4, or a(1/b - 1) = -4
   - From the third equation: a·b + c = 18
   - Substitute c = 6 - a: a·b + 6 - a = 18
   - Simplify: a·b - a = 12, or a(b - 1) = 12
   - Solving these equations: a = 6, b = 3, c = 0
   - The equation is f(x) = 6·3^x

5. Using the decay formula A(t) = A₀·b^t:
   - A₀ = 50 (initial amount)
   - After 10 years, A(10) = 0.7·50 = 35
   - 35 = 50·b^10, so b^10 = 0.7, and b = (0.7)^(1/10) ≈ 0.965
   - The equation is A(t) = 50·(0.965)^t
   - The decay rate is about 3.5% per year

## Visual Learning Activities

1. **Plotting points and curve fitting**: Plot given points and sketch possible exponential curves that pass through them.

2. **Asymptote identification**: Look at various exponential graphs and identify their horizontal asymptotes.

3. **Function transformation hunt**: Given an exponential graph, identify the transformations needed to get from the parent function to the given graph.

4. **Real-world growth visualization**: Create a spreadsheet that shows exponential growth for different bases and compare them visually.

5. **Match the graph**: Provide several exponential equations and graphs, and have your teen match each equation to its graph.

## Tips for Teaching Success

1. **Start with pure exponentials** before introducing functions with vertical shifts.

2. **Use technology effectively** for visualization and regression analysis.

3. **Connect to real-world examples** like compound interest, population growth, or radioactive decay.

4. **Emphasize the systematic approach**: Identify what you know, set up appropriate equations, and solve methodically.

5. **Provide scaffolding** by working through examples step-by-step before having your teen try problems independently.

6. **Review prerequisite skills** like solving systems of equations and using logarithms when needed.

## Online Resources

- **Desmos.com**: Interactive graphing calculator and regression tools
- **Khan Academy**: "Finding exponential equations" video series
- **GeoGebra**: Interactive applets for visualizing exponential functions
- **Illustrative Mathematics**: Rich problem contexts for exponential modeling
- **Purplemath**: Step-by-step explanations of finding exponential functions

## Next Steps

Once your teen understands how to determine exponential functions, they'll be ready to:
1. Apply these skills to real-world problem solving
2. Study applications like doubling time and half-life
3. Explore financial applications like compound interest and depreciation
4. Learn about logarithmic functions as inverses of exponential functions

Remember: The ability to find an exponential equation from various types of information is a powerful skill that connects abstract mathematics with real-world applications and prepares students for higher-level mathematical modeling.
