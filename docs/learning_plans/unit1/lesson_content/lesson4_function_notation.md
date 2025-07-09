# Functions and Function Notation: Parent Teaching Guide

## What You're Teaching

This guide provides everything you need to know about function notation and evaluating functions in a way that's engaging and practical. Each section includes:
- Clear explanations in everyday language
- Real-world examples that connect to your interests
- Step-by-step activities to practice concepts
- Tips for addressing common confusion points

## Key Concepts to Cover

### 1. Understanding Function Notation

**Simple explanation:** "Function notation is a shorthand way to write functions. Instead of saying 'y equals the expression with x,' we write f(x) to represent the output when x is the input."

**Key points to emphasize:**
- "f(x) is read as 'f of x' - it means 'the output of function f when the input is x'"
- "f(x) is NOT f times x - it's a completely different concept"
- "The letter f is just a name for the function. We could use g, h, p, or any letter"

**Visual explanation:**
```
       Input (x)                             Output
          |                                     |
          v                                     v
       2  ---→ [Function machine named f] ---→ f(2) = 7
                        f(x) = 3x + 1
```

**Real-world analogy:** "Think of a function as a vending machine. You put in money (the input), and you get a specific snack (the output). If the vending machine is function f, then f(2) means 'what you get when you put in $2.'"

### 2. Evaluating Functions at Specific Values

**Step-by-step process:**
1. Identify the function rule (the expression for f(x))
2. Replace every occurrence of the variable x with the specific value
3. Simplify the expression following order of operations

**Example with clear steps:**
```
If f(x) = 2x² - 3x + 4, find f(3)

Step 1: Replace x with 3 wherever x appears
f(3) = 2(3)² - 3(3) + 4

Step 2: Simplify following order of operations
f(3) = 2(9) - 3(3) + 4
f(3) = 18 - 9 + 4
f(3) = 13
```

**Practice together:** "Let's try a few examples with the function g(x) = |x - 5| + 3"
1. g(5) = |5 - 5| + 3 = 0 + 3 = 3
2. g(8) = |8 - 5| + 3 = |3| + 3 = 3 + 3 = 6
3. g(2) = |2 - 5| + 3 = |-3| + 3 = 3 + 3 = 6

**Gaming application:** "If S(t) represents your game score after t minutes, and S(t) = 200t - 50:"
- S(0) = 200(0) - 50 = -50 (You start with a penalty of 50 points)
- S(1) = 200(1) - 50 = 150 (After 1 minute, you have 150 points)
- S(5) = 200(5) - 50 = 950 (After 5 minutes, you have 950 points)

### 3. Using Function Notation in Word Problems

**Translating scenario to function notation:**
"Let's say you're streaming movies. The monthly cost C(h) depends on h, the number of hours you watch:
- Basic fee: $10
- Per hour fee: $2 per hour

The function would be: C(h) = 10 + 2h"

**Interpretation questions:**
- "What does C(5) represent?" (The cost when you watch 5 hours: $20)
- "What does C(0) represent?" (The cost when you watch 0 hours: $10, the basic fee)
- "If C(h) = 30, how many hours did you watch?" (Solve 10 + 2h = 30 → h = 10 hours)

**Sports example:**
"A basketball player's free throw success function P(d) gives the probability (as a decimal) of making a shot from distance d feet:
P(d) = 1 - 0.05d

- P(0) = 1 - 0(0.05) = 1 (100% chance when right at the basket)
- P(15) = 1 - 15(0.05) = 1 - 0.75 = 0.25 (25% chance from 15 feet away)
- If P(d) = 0.5, from what distance is there a 50% chance? (Solve 1 - 0.05d = 0.5 → d = 10 feet)"

### 4. Functions with Different Input Variables

**Simple explanation:** "The input variable doesn't have to be x. We can use any letter or symbol that makes sense for the situation."

**Examples with context:**
- T(h) - Temperature after h hours
- C(m) - Cost for m miles driven
- H(t) - Height of a drone after t seconds
- V(r) - Volume of a sphere with radius r

**Practice activity:** "Create a meaningful function for each input variable:"
- n - number of people
- a - age in years
- d - distance in kilometers
- t - time in minutes

### 5. Multiple Function Notations

**Simple explanation:** "We can have multiple functions in the same problem, each with its own name and rule."

**Example with technology theme:**
```
Let B(h) = 100 - 20h represent battery percentage after h hours
Let D(h) = 15h represent data used (in GB) after h hours

Find B(3) and D(3)
- B(3) = 100 - 20(3) = 100 - 60 = 40% battery remains
- D(3) = 15(3) = 45 GB of data used
```

**Combined functions activity:**
"For a road trip:
- G(m) = 0.05m gives gallons of gas used to drive m miles
- C(g) = 3.50g gives cost in dollars to buy g gallons

Find the cost to drive 200 miles by calculating C(G(200))"
Solution: G(200) = 0.05(200) = 10 gallons, then C(10) = 3.50(10) = $35

### 6. Piecewise Functions with Notation

**Simple explanation:** "Sometimes a function follows different rules depending on the input value. We call these piecewise functions."

**Example with clear notation:**
```
Consider a rideshare cost function C(m) for m miles:
        { 5            if 0 ≤ m < 2
C(m) =  { 5 + 2(m-2)   if 2 ≤ m < 10
        { 21 + 1.5(m-10) if m ≥ 10
```

**Step-by-step evaluation:**
"To find C(3):
1. Determine which piece applies: 2 ≤ 3 < 10, so use the middle formula
2. C(3) = 5 + 2(3-2) = 5 + 2(1) = 5 + 2 = 7"

**Phone plan example:**
"Your phone plan charges:
- $30 flat fee for up to 2GB data
- $10 per additional GB from 2GB to 5GB
- $15 per additional GB over 5GB

Write this as a piecewise function P(g) where g is gigabytes used, then find P(1), P(4), and P(7)"

### 7. Graphing Functions Using Function Notation

**Simple explanation:** "When graphing a function f(x), we plot points (x, f(x)) for different values of x."

**Example walkthrough:**
"To graph f(x) = 2x - 1:
1. Make a table of values:
   | x | f(x) = 2x - 1 | Point (x, f(x)) |
   |---|--------------|----------------|
   | -1 | f(-1) = 2(-1) - 1 = -3 | (-1, -3) |
   | 0 | f(0) = 2(0) - 1 = -1 | (0, -1) |
   | 1 | f(1) = 2(1) - 1 = 1 | (1, 1) |
   | 2 | f(2) = 2(2) - 1 = 3 | (2, 3) |

2. Plot these points on a coordinate plane
3. Connect the points with a smooth line"

**Technology integration:** "Use Desmos.com to graph functions and see how changing the formula affects the graph."

### 8. Finding Function Values from Graphs

**Simple explanation:** "To find f(a) from a graph, locate a on the x-axis, move vertically until you hit the function, then read the y-value."

**Practice activity:**
"Using the graph of f(x) provided:
1. What is f(2)? (Find x = 2, move up to the curve, read y-value)
2. What value(s) of x make f(x) = 0? (These are the x-intercepts)
3. What is the largest value of f(x) shown? At what x-value does it occur?"

**Real-world context:**
"If this graph shows the temperature T(h) throughout the day where h is hours after midnight:
- T(6) shows the temperature at 6 AM
- Finding when T(h) = 75 tells us when the temperature was 75 degrees
- The maximum value of T(h) shows the highest temperature of the day"

## Common Misconceptions and How to Address Them

1. **"f(x) means f times x"**
   - Clarification: "f(x) is a single symbol that represents an output value"
   - Visual: Show function as a mapping or machine, not multiplication
   
2. **"f(3+h) means f(3) + f(h)"**
   - Clarification: "f(3+h) means 'input the entire expression (3+h) into the function'"
   - Example: If f(x) = x², then f(3+h) = (3+h)² = 9 + 6h + h²
   
3. **"The value after f always has to be in parentheses"**
   - Clarification: "We typically write f(x), but sometimes you might see notations like y = f x, especially in physics"
   
4. **"Functions always use the letter f"**
   - Clarification: "Functions can be named with any letter: g(x), h(t), P(n), etc."

## Check for Understanding

After covering the material, ask these questions:

1. "If f(x) = 3x² - 4x + 2, what is f(-2)?"
2. "In the function C(h) = 15h + 20, what do C and h represent in a real-world context?"
3. "If P(t) gives the population after t years and P(5) = 1500, what does that mean?"
4. "For the piecewise function:
   ```
   g(x) = { x² if x ≤ 3
          { 9  if x > 3
   ```
   What is g(2)? What is g(5)?"
5. "How would you find f(4) from a graph of f(x)?"

## Practice Problems

1. If f(x) = 2x² - 5x + 3, find:
   - f(0)
   - f(2)
   - f(-1)

2. If g(x) = |x - 3| + 4, find:
   - g(3)
   - g(5)
   - g(0)

3. The cost C(n) in dollars to produce n custom t-shirts is C(n) = 50 + 8n.
   - What does C(10) represent?
   - What is the cost of producing 25 t-shirts?
   - How many t-shirts can be produced for $290?

4. For the piecewise function:
   ```
   h(x) = { 3x + 2   if x < 0
          { x² - 1    if 0 ≤ x < 3
          { 8         if x ≥ 3
   ```
   Calculate h(-2), h(1), and h(5)

5. The height (in meters) of a ball t seconds after being thrown is given by h(t) = -4.9t² + 15t + 2.
   - What is the initial height of the ball?
   - What is the height after 2 seconds?
   - When will the ball hit the ground? (Hint: find when h(t) = 0)

**Solutions:**
1. f(0) = 3, f(2) = 1, f(-1) = 10
2. g(3) = 4, g(5) = 6, g(0) = 7
3. C(10) = $130, C(25) = $250, n = 30 shirts
4. h(-2) = -4, h(1) = 0, h(5) = 8
5. Initial height = h(0) = 2 meters, h(2) = 21.4 meters, Ground impact at approximately t = 3.2 seconds

## Tips for Teaching Success

1. **Start with simple functions:** Begin with linear functions before moving to more complex ones.

2. **Use real contexts:** Connect function notation to scenarios you care about (gaming, sports, social media, money).

3. **Visualize the process:** Draw "function machines" that transform inputs to outputs.

4. **Address f(x) notation directly:** Many students struggle with this notation, so emphasize that it's just a way to show the relationship between input and output.

5. **Practice consistently:** Function notation requires repetition to become comfortable.

## Online Resources

- **Desmos.com**: Interactive graphing calculator - try entering functions using function notation
- **Khan Academy**: Search "Function Notation" for video tutorials
- **GeoGebra.org**: Interactive function activities and visualizations
- **PurpleMath**: Clear written explanations of function notation concepts

## Next Steps

Once you are comfortable with function notation, you can move on to:
1. **Function transformations** (how changing the formula affects the graph)
2. **Finding domains of more complex functions**
3. **Combining functions** (addition, subtraction, multiplication, composition)
4. **Exploring specific types of functions** (quadratic, exponential, etc.)

**Remember:** Function notation is a language for expressing mathematical relationships. The goal is for you to become fluent in this language so you can use it as a tool for problem-solving in future math courses and real-life applications.
