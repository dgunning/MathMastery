# Functions, Domain, and Range

### Functions connect inputs to outputs, while domain and range define their boundaries

## Why This Matters

**Real-World Applications:**
- **App Development & Programming:** Every mobile app you use is built on functions! When you tap a button on Instagram or TikTok, a function processes your input and returns exactly one output. Top software developers at companies like Apple and Google earn $150,000+ by mastering these concepts and translating them into code.

- **Data Science & Analytics:** Companies like Netflix and Amazon analyze massive datasets using functions to predict what you'll want to watch or buy next. Their recommendation algorithms use domain and range restrictions to make accurate predictions, turning mathematical concepts into billion-dollar businesses.

- **Game Development:** Video games use functions to control everything from character movement to scoring systems. When your character jumps in Minecraft or Fortnite, the game is calculating a position function where time is the input and screen position is the output.

- **Medical Diagnostics:** Healthcare professionals use functions to interpret test results and imaging. For example, the function relating body mass to recommended medication dosage has a carefully restricted domain and range to ensure patient safety.

**Career Connection:** Understanding functions opens doors to careers in programming ($110,000+), data science ($120,000+), financial analysis ($90,000+), engineering ($95,000+), and game development ($85,000+). These high-growth fields all rely on the ability to model relationships between inputs and outputs—exactly what functions do!

## Key Concepts

### 1. What is a Function?

**Simple explanation:** "A function is a special relationship between two sets of values where each input has exactly one output. Think of it as a rule or a machine that takes something in and gives exactly one thing out."

**Real-world examples:**
- "When you press a button on your game controller, it always performs the same action in the game."
- "The cost of data on your phone plan depends on how many gigabytes you use."
- "Your score in a video game depends on your actions and decisions."

**Visual aid:** Draw a simple "function machine" on paper:
```
    INPUT                 OUTPUT
   (domain)               (range)
     x ----> [f(x)] ----> y = f(x)
```

**Key point to emphasize:** "The important part is that a function can never give two different answers for the same input. It's like a reliable recipe - same ingredients, same cooking time, same result every time."

### 2. Relations vs. Functions

**Simple explanation:** "All functions are relations (relationships between inputs and outputs), but not all relations are functions. A function has the special rule that each input gives exactly one output."

**Activity: "Is It a Function?" Game**

Instructions:
1. Create a table with these examples (or make up your own relevant to your interests):

| Relation | Description | Function? |
|----------|-------------|-----------|
| A | Your age → your height | Yes |
| B | Your gaming username → your score | Yes |
| C | A song → its artists | No (some songs have multiple artists) |
| D | Time spent studying → test grade | Yes |
| E | Your phone number → your name | Yes |
| F | Your name → your phone number | No (two people can have the same name) |

2. For each relation, discuss:
   - "Can one input have multiple outputs?"
   - "If I give you the same input twice, will I always get the same output?"

3. Identify which are functions by applying the "one input → one output" rule.

### 3. Representing Functions

**Explain:** "Functions can be represented in four different ways, and each gives us different insights."

#### 1. Verbally (in words)
- "The cost of a rideshare trip is $2.50 plus $0.75 per mile."
- "A phone plan charges $20 monthly plus $15 per GB of data."

#### 2. Algebraically (as an equation)
- C(m) = 2.50 + 0.75m (where m is miles)
- P(g) = 20 + 15g (where g is gigabytes)

#### 3. Numerically (as a table of values)
```
Miles (m) | Cost C(m)
---------|--------
   0     | $2.50
   1     | $3.25
   2     | $4.00
   5     | $6.25
```

#### 4. Graphically (as a graph)
- Draw a simple linear graph representing the rideshare cost function.

**Activity:** "Pick another real-world function, like the score in a game based on enemies defeated, and represent it in all four ways."

### 4. The Vertical Line Test

**Simple explanation:** "This is a quick visual way to tell if a graph shows a function. If you can draw any vertical line that crosses the graph more than once, then it's not a function."

**Visual aid:** Draw these examples:

1. A straight line (y = 2x + 1): Function ✓
2. A parabola (y = x²): Function ✓ 
3. A circle (x² + y² = 9): Not a function ✗
4. A horizontal line (y = 3): Function ✓
5. A vertical line (x = 2): Not a function ✗

**Interactive activity:** 
1. Use the free website Desmos.com
2. Type these equations:
   - y = 2x + 1
   - y = x²
   - x² + y² = 9
   - y = |x|
   - x = |y|
3. Drag a vertical line across each graph to see if it ever crosses more than once

**Key point:** "The vertical line test works because a vertical line represents one specific x-value (input). If the line crosses the graph twice, that means one input gives two outputs, which breaks the function rule."

### 5. Domain and Range

**Simple explanation:**
- "The domain is all the possible input values (x-values) a function can accept"
- "The range is all the possible output values (y-values) a function can produce"

**Real-world example:**
"Think about a streaming music service:
- The domain is every song in their library (all possible inputs)
- The range is how many times each song has been played
- Each song (input) has exactly one play count (output), making this a function"

**Activity: "Exploring Domain and Range with Technology"**

Using Desmos.com or a graphing calculator:
1. Graph y = x² and identify:
   - Domain: all real numbers (−∞ to ∞)
   - Range: y ≥ 0 (0 to ∞)

2. Graph y = √x and identify:
   - Domain: x ≥ 0
   - Range: y ≥ 0

3. Graph y = 1/x and identify:
   - Domain: all real numbers except x = 0
   - Range: all real numbers except y = 0

**Real-life domain and range scenarios:**

1. **Video Game Level Progression**
   - Function: Hours played → Character level
   - Domain: 0 to unlimited hours
   - Range: Level 1 to maximum level (e.g., 60)
   
2. **Social Media Followers**
   - Function: Days since joining → Number of followers
   - Domain: 0 days to present
   - Range: 0 followers to billions
   
3. **Battery Life**
   - Function: Hours of use → Battery percentage remaining
   - Domain: 0 to maximum battery life
   - Range: 0% to 100%

**Discussion questions:**
- "Why can't battery percentage be 110%?" (Range restriction)
- "Why can't you have played a game for -5 hours?" (Domain restriction)
- "If f(x) = 1/x, why can't x be 0?" (Domain restriction)

### 6. Function Notation

**Simple explanation:** "Function notation gives us a compact way to write functions. Instead of saying 'y equals 2 times x plus 3,' we write f(x) = 2x + 3."

**Important points to emphasize:**
- "f(x) is read as 'f of x' or 'the value of f at x'"
- "f(x) is NOT f times x - it's a whole new symbol"
- "Different letters can be used too: g(x), h(x), F(t), etc."

**Practice: "Finding Function Values"**

For f(x) = 2x + 3:
1. Find f(0) [Answer: 3]
2. Find f(4) [Answer: 11]
3. Find f(-1) [Answer: 1]
4. If f(a) = 15, what is a? [Answer: 6]

**Gaming context:**
"If S(h) represents your game score after h hours of gameplay, and S(h) = 500h - 100:
- What does S(0) mean? (Score with 0 hours: -100, you start with negative points!)
- What does S(2) mean? (Score after 2 hours: 900)
- After how many hours will you reach a score of 1900? (Solve S(h) = 1900 → h = 4 hours)"

### 7. Evaluating Piecewise Functions

**Simple explanation:** "A piecewise function is like having different rules for different situations. Think of it like how streaming services charge different rates based on which subscription tier you choose."

**Example:**
```
       { 5           if 0 ≤ x < 2
f(x) = { 2x + 1      if 2 ≤ x < 5
       { x² - 10     if x ≥ 5
```

**Step-by-step walkthrough:**
"To find f(3):
1. Check which piece applies when x = 3
2. Since 2 ≤ 3 < 5, we use the middle piece: f(3) = 2(3) + 1 = 7"

**Tech tip:** "In Desmos, you can enter piecewise functions using curly braces and conditions:
f(x) = {5: 0 ≤ x < 2, 2x + 1: 2 ≤ x < 5, x^2 - 10: x ≥ 5}"

**Real-world example:**
"Your cell phone data plan charges:
- $30 for 0-2 GB of data
- $30 plus $10 for each additional GB from 2-5 GB
- $60 plus $15 for each additional GB over 5 GB

Write this as a piecewise function C(g) where g is gigabytes used."

## Check for Understanding

After covering the material, ask these questions:

1. "What makes a relation a function?"
2. "Draw a graph that passes the vertical line test and one that doesn't."
3. "What is the domain and range of f(x) = √(4-x)?"
4. "If g(x) = |x - 3|, what is g(5)? What about g(1)?"
5. "Give me a real-world example of a piecewise function from your own experience."
6. "What's the difference between the domain and range of a function?"

## Visual Learning Activities

1. **Function Machine Game**: Create cards with inputs. Student puts them in the "machine" (a box) and computes the output based on the function rule.

2. **Domain & Range Fishing**: Write various functions on paper "fish." Student "catches" a fish and identifies its domain and range.

3. **Vertical Line Test Challenge**: Create various graphs on paper. Student uses a piece of spaghetti or a ruler as the "vertical line" to test if each is a function.

4. **Real World Function Hunt**: Find examples of functions in daily life (temperature vs. time, speed vs. fuel consumption, etc.) and identify domain and range restrictions.

## Tips for Success

1. **Make it relevant:** Connect functions to things you care about—gaming, social media, sports, music.

2. **Use technology:** Desmos and GeoGebra make functions visual and interactive.

3. **Start concrete, then abstract:** Begin with real examples before diving into symbols and notation.

4. **Emphasize the "one output per input" rule:** This is the key insight that distinguishes functions.

5. **Connect to future topics:** Mention that functions are the foundation of higher math and many real applications.

## Online Resources

- **Desmos.com**: Free online graphing calculator - excellent for visualizing functions
- **Khan Academy**: Search for "Introduction to functions" for video tutorials
- **GeoGebra.org**: Interactive math tools with pre-made function activities
- **PurpleMath**: Clear written explanations of function concepts

## Next Steps

Once you understand these function basics, you can move on to:
1. **Function transformations** (shifting, stretching, reflecting graphs)
2. **Special functions** (quadratic, absolute value, exponential)
3. **Combining functions** (addition, subtraction, multiplication, composition)

**Remember:** Functions aren't just math—they're the language of the universe! Every time you understand a function, you're decoding how our world works. Nail these concepts now, and you'll see patterns everywhere—from physics to finance to your favorite games!
