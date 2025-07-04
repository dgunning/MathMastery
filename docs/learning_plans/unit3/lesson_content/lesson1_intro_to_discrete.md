# Unit 3: Discrete Functions

## Unit Overview
This unit introduces discrete functions, which model situations with distinct, separate values rather than continuous ones. Unlike the smooth curves of quadratic and exponential functions, discrete functions deal with countable, individual values—like the number of Instagram followers, game levels completed, or money saved in weekly installments.

Discrete functions are particularly relevant for understanding sequences, patterns, and financial applications. By mastering these concepts, your teenager will develop powerful mathematical tools for analyzing data patterns, making financial decisions, and solving problems that involve step-by-step changes rather than continuous movement.

## Learning Objectives
By the end of this unit, your teenager will be able to:
- Identify and create recursive sequences
- Work with arithmetic and geometric sequences and series
- Understand and apply Pascal's triangle
- Solve financial problems involving compound interest and annuities
- Make connections between sequences and real-world patterns
- Use technology to analyze and predict sequence behavior

## Lesson Structure

### Lesson 1: Introduction to Sequences and Recursive Patterns

#### What You're Teaching
Sequences are ordered lists of numbers that follow specific patterns. Unlike the continuous functions we've studied, sequences are discrete—they're defined only for specific input values (usually integers). Many real-world situations follow sequence patterns, from financial investments to biological growth.

This lesson builds on your teenager's understanding of patterns from earlier mathematics but formalizes the concepts with more precise notation and applications.

#### Core Content

- **Concept 1: Sequences vs. Continuous Functions**
  - **Simple explanation:** "A sequence is like a function, but it only accepts specific input values (like whole numbers) and gives you an ordered list of outputs. Think of it as a function that works only at specific points rather than a smooth curve."
  
  - **Visual representation:** Draw a comparison showing:
    ```
    Continuous function:        Discrete sequence:
    f(x) = 2x + 1               a_n = 2n + 1
    (smooth line)               (individual points)
    x can be any real number    n can only be integers
    ```
  
  - **Real-world example:** "Video game levels are discrete—you're on Level 1, then Level 2, then Level 3... You can't be on Level 2.5. Your score within each level might be continuous (any value), but the levels themselves are discrete."
  
  - **Common misconception:** "Many students try to connect all the points in a sequence with a line. While we sometimes do this to see the pattern better, remember that a sequence is only defined at specific points, not everywhere in between."

- **Concept 2: Recursive vs. Explicit Definitions**
  - **Simple explanation:** "There are two main ways to define sequences:
    1. Explicitly: Give a formula that calculates any term directly (a_n = 3n - 2)
    2. Recursively: Define how to find the next term based on previous terms (a_1 = 1, a_n = a_{n-1} + 3)"
  
  - **Key distinction:**
    - Explicit formula: "Plug and play" to find any term directly
    - Recursive formula: Must calculate all previous terms to find a specific term
  
  - **Visual aid:** Show the Fibonacci sequence (1, 1, 2, 3, 5, 8, 13, 21...) which is defined recursively as:
    ```
    a_1 = 1
    a_2 = 1
    a_n = a_{n-1} + a_{n-2} for n ≥ 3
    ```
  
  - **Technology connection:** "Video game developers often use recursive definitions to determine how many experience points are needed for each new level—it depends on the previous level's requirement plus some additional amount."

- **Concept 3: Arithmetic Sequences**
  - **Simple explanation:** "An arithmetic sequence adds the same value each time. If you think of your favorite song playlist, and you add exactly 3 new songs each month, the sequence of total songs follows an arithmetic pattern."
  
  - **Key properties:**
    - Common difference (d): The value added to each term
    - Explicit formula: a_n = a_1 + (n-1)d
    - Recursive formula: a_n = a_{n-1} + d
  
  - **Example:**
    ```
    Sequence: 5, 8, 11, 14, 17, ...
    a_1 = 5
    d = 3
    Explicit formula: a_n = 5 + (n-1)3 = 5 + 3n - 3 = 3n + 2
    ```
  
  - **Real-world application:** "Monthly subscription costs, regular savings deposits, or stacking items in equal layers all follow arithmetic sequences."

- **Concept 4: Geometric Sequences**
  - **Simple explanation:** "A geometric sequence multiplies by the same value each time. If your Instagram following grows by 30% each month, that's a geometric sequence because each month's total is 1.3 times the previous month's."
  
  - **Key properties:**
    - Common ratio (r): The value multiplied to each term
    - Explicit formula: a_n = a_1 × r^(n-1)
    - Recursive formula: a_n = a_{n-1} × r
  
  - **Example:**
    ```
    Sequence: 3, 6, 12, 24, 48, ...
    a_1 = 3
    r = 2
    Explicit formula: a_n = 3 × 2^(n-1)
    ```
  
  - **Visual aid:** Draw a geometric sequence as a set of rectangles, each with twice the area of the previous one.
  
  - **Common misconception:** "Many students confuse arithmetic and geometric sequences. Remember: arithmetic ADDS the same amount each time, geometric MULTIPLIES by the same amount each time."

#### Guided Activities

- **Activity 1: "Sequence Detective"**
  - **Materials needed:**
    - Paper and pencil
    - Calculator
    - Spreadsheet software (optional)
  
  - **Instructions:**
    1. Present the following sequences and have your teen identify whether they're arithmetic, geometric, or neither:
       - 4, 7, 10, 13, 16, ...
       - 5, 10, 20, 40, 80, ...
       - 1, 4, 9, 16, 25, ...
       - 3, 9, 27, 81, 243, ...
       - 1, 1, 2, 3, 5, 8, ...
    
    2. For each sequence that is arithmetic or geometric:
       - Find the common difference or ratio
       - Write both recursive and explicit formulas
       - Predict the 10th term
       - Verify by calculating term-by-term
    
    3. For sequences that are neither:
       - Try to identify the pattern
       - Write a formula if possible
       - Research what type of sequence it might be
  
  - **Expected outcomes:**
    - First sequence: Arithmetic with d = 3, a_n = 4 + (n-1)3 = 3n + 1
    - Second sequence: Geometric with r = 2, a_n = 5 × 2^(n-1)
    - Third sequence: Neither arithmetic nor geometric (it's quadratic: a_n = n²)
    - Fourth sequence: Geometric with r = 3, a_n = 3^n
    - Fifth sequence: Neither (it's the Fibonacci sequence)
  
  - **Discussion questions:**
    - "How can you quickly tell whether a sequence is arithmetic or geometric?"
    - "Why is an explicit formula more useful for finding distant terms?"
    - "Can you think of real situations that follow each type of pattern?"

- **Activity 2: "Build Your Own Recursive Art"**
  - **Materials needed:**
    - Graph paper
    - Colored pencils or markers
    - Ruler
  
  - **Instructions:**
    1. Start with a simple shape (square, triangle, etc.)
    2. Define a recursive rule for creating the next stage, such as:
       - "Draw the same shape at each vertex of the previous stage"
       - "Divide each shape into 4 equal parts and remove the center"
       - "Add a shape that's half the size of the previous shape"
    3. Follow the recursive rule for 4-5 iterations
    4. Count and record how many shapes appear at each stage
    5. Try to find patterns in the resulting sequence
  
  - **Expected outcome:**
    - A fractal-like pattern will emerge
    - The sequence of shapes will often follow interesting patterns (powers of numbers, triangular numbers, etc.)
  
  - **Extension:**
    - Research the Sierpinski triangle or Koch snowflake
    - Create art based on these famous mathematical recursions
  
  - **Real-world connection:** "Computer graphics for movies like Frozen use recursive algorithms to create realistic snow and ice patterns."

#### Real-World Applications

- **Social Media Growth**
  - Discuss how follower counts often follow geometric sequences initially
  - Model different growth rates (10% vs 50% monthly growth)
  - Calculate how long it would take to reach 1 million followers
  - Connection: "This is why influencers focus so much on growth rate rather than absolute numbers early on."

- **Financial Planning with Sequences**
  - Explore how regular deposits form an arithmetic sequence
  - Show how compound interest transforms this into a geometric-like series
  - Calculate the future value of different saving strategies
  - Connection: "This is exactly how retirement accounts work—regular contributions plus compound growth."

- **Video Game Progression Systems**
  - Analyze how games use sequences to structure player advancement
  - Examples: Experience points needed per level, weapon upgrade costs, achievement rewards
  - Discuss why games often use non-linear progression (quadratic or exponential sequences)
  - Connection: "Game designers carefully craft these sequences to keep players engaged but not frustrated."

#### Check for Understanding

- **Key Questions:**
  1. "What's the difference between discrete and continuous functions?"
  2. "How do arithmetic and geometric sequences differ?"
  3. "When would you use a recursive definition versus an explicit definition?"
  4. "How can you determine if a sequence is arithmetic, geometric, or neither?"

- **Practice Problems:**
  1. Write an explicit formula for the arithmetic sequence: 7, 11, 15, 19, ...
  2. Find the 8th term of the geometric sequence where a₁ = 6 and r = 1/2
  3. For the recursive sequence a₁ = 3, aₙ = 2aₙ₋₁ - 1, find the first 5 terms
  4. A theater has 30 seats in the first row, and each row behind has 2 more seats than the row in front. How many seats are in the 15th row?

- **Solutions:**
  1. a₁ = 7, d = 4, so aₙ = 7 + (n-1)4 = 7 + 4n - 4 = 4n + 3
  2. a₈ = 6 × (1/2)⁷ = 6 × (1/128) = 6/128 = 3/64 = 0.046875
  3. a₁ = 3, a₂ = 2(3) - 1 = 5, a₃ = 2(5) - 1 = 9, a₄ = 2(9) - 1 = 17, a₅ = 2(17) - 1 = 33
  4. a₁ = 30, d = 2, a₁₅ = 30 + (15-1)2 = 30 + 28 = 58 seats

#### Additional Resources

- **Interactive Tools:**
  - Desmos.com: "Sequence Plotter" activity
  - GeoGebra: "Recursive Sequences" applet
  - Excel/Google Sheets: Templates for generating and analyzing sequences

- **Videos:**
  - Khan Academy: "Introduction to Sequences"
  - 3Blue1Brown: "Fibonacci Numbers and the Golden Ratio"
  - Numberphile: "Pascal's Triangle"

- **Practice:**
  - Additional worksheet with various sequence problems
  - Online quiz to test understanding of different sequence types
  - Real-world sequence modeling exercises

## Unit Assessment Ideas

- **Financial Planning Project:**
  Create a realistic 10-year savings plan incorporating regular deposits, compound interest, and inflation adjustments.

- **Game Design Challenge:**
  Design a leveling system for a hypothetical video game using sequences to determine experience points needed per level.

- **Pattern Recognition Portfolio:**
  Collect and analyze 5-10 real-world examples of sequences from nature, technology, or everyday life.

## Tips for Teaching Success

- **Use spreadsheets:** They're perfect for generating sequence terms quickly and seeing patterns.

- **Connect visually:** Many teens understand sequences better when they can see the pattern visually represented.

- **Start concrete, move abstract:** Begin with physical objects or real examples before introducing formulas.

- **Compare and contrast:** Regularly revisit the differences between arithmetic and geometric sequences.

- **Be patient with recursive thinking:** Recursive definitions can be challenging at first—they require a different kind of logical thinking that develops with practice.
