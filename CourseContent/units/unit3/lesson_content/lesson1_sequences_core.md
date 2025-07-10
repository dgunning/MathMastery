# Sequences: Parent Teaching Guide

## What You're Teaching

This guide helps you teach your teenager about sequences, which are ordered lists of numbers that follow specific patterns. Sequences form the foundation of discrete mathematics and have numerous applications in mathematics, computer science, and real-world scenarios.

## Key Concepts to Cover

### 1. Understanding Sequences

**Simple explanation:** "A sequence is an ordered list of numbers that follow a pattern. Each number in the sequence is called a 'term' and is often represented with subscript notation."

**Key terminology:**
- **Sequence:** Ordered list of numbers following a pattern
- **Term:** Individual number in a sequence
- **Index (n):** Position number of a term (often starting with n = 1)
- **General term (aₙ):** Formula to find any term in the sequence
- **Finite sequence:** Sequence with a specific end point
- **Infinite sequence:** Sequence that continues without end

**Notation:**
- Sequence notation: {a₁, a₂, a₃, ..., aₙ, ...}
- Individual terms: a₁ (first term), a₂ (second term), etc.
- General term formula: aₙ (formula in terms of n)

**Examples of sequences:**
- {2, 4, 6, 8, 10, ...} (even numbers)
- {1, 3, 5, 7, 9, ...} (odd numbers)
- {1, 4, 9, 16, 25, ...} (perfect squares)
- {1, 2, 6, 24, 120, ...} (factorials)

### 2. Arithmetic Sequences

**Simple explanation:** "An arithmetic sequence (or progression) is a sequence where each term differs from the previous term by a constant value called the 'common difference.'"

**Key properties:**
- Common difference (d) remains constant throughout the sequence
- d = aₙ₊₁ - aₙ for any value of n
- Each term can be found by adding the common difference to the previous term

**General term formula:**
- aₙ = a₁ + (n-1)d
  Where:
  - a₁: First term
  - d: Common difference
  - n: Position number

**Example generation:**
"Create an arithmetic sequence with a₁ = 5 and d = 3:
- a₁ = 5
- a₂ = 5 + 3 = 8
- a₃ = 8 + 3 = 11
- a₄ = 11 + 3 = 14
- a₅ = 14 + 3 = 17
- General term: aₙ = 5 + (n-1)3 = 5 + 3n - 3 = 3n + 2"

**Finding the common difference:**
"To find d in the sequence {7, 11, 15, 19, 23, ...}:
- d = a₂ - a₁ = 11 - 7 = 4
- Verify: a₃ - a₂ = 15 - 11 = 4 ✓"

**Finding a specific term:**
"Find the 20th term of the sequence {5, 9, 13, 17, ...}:
- First identify a₁ = 5 and d = 4
- Use formula: a₂₀ = 5 + (20-1)4 = 5 + 19(4) = 5 + 76 = 81"

### 3. Geometric Sequences

**Simple explanation:** "A geometric sequence (or progression) is a sequence where each term is multiplied by the same value, called the 'common ratio,' to get the next term."

**Key properties:**
- Common ratio (r) remains constant throughout the sequence
- r = aₙ₊₁/aₙ for any value of n
- Each term can be found by multiplying the previous term by the common ratio

**General term formula:**
- aₙ = a₁ × r^(n-1)
  Where:
  - a₁: First term
  - r: Common ratio
  - n: Position number

**Example generation:**
"Create a geometric sequence with a₁ = 3 and r = 2:
- a₁ = 3
- a₂ = 3 × 2 = 6
- a₃ = 6 × 2 = 12
- a₄ = 12 × 2 = 24
- a₅ = 24 × 2 = 48
- General term: aₙ = 3 × 2^(n-1)"

**Finding the common ratio:**
"To find r in the sequence {5, 15, 45, 135, ...}:
- r = a₂/a₁ = 15/5 = 3
- Verify: a₃/a₂ = 45/15 = 3 ✓"

**Finding a specific term:**
"Find the 8th term of the sequence {2, 6, 18, 54, ...}:
- First identify a₁ = 2 and r = 3
- Use formula: a₈ = 2 × 3^(8-1) = 2 × 3^7 = 2 × 2187 = 4374"

### 4. Identifying Sequence Types

**Simple explanation:** "Determining whether a sequence is arithmetic, geometric, or neither is essential for finding patterns and making predictions."

**Identification strategies:**
1. **Check for constant difference:**
   - If aₙ₊₁ - aₙ is constant, the sequence is arithmetic
   - Example: {4, 7, 10, 13, 16} has d = 3 → arithmetic

2. **Check for constant ratio:**
   - If aₙ₊₁/aₙ is constant, the sequence is geometric
   - Example: {2, 8, 32, 128} has r = 4 → geometric

3. **Check for other patterns:**
   - If neither constant difference nor ratio, look for other patterns
   - Example: {1, 4, 9, 16, 25} follows n² pattern → neither arithmetic nor geometric

**Example analysis:**
"Analyze the sequence {12, 6, 3, 1.5, 0.75, ...}:
- Difference test: 6-12 = -6, 3-6 = -3, 1.5-3 = -1.5, ... (not constant)
- Ratio test: 6/12 = 0.5, 3/6 = 0.5, 1.5/3 = 0.5, ... (constant)
- Conclusion: Geometric sequence with r = 0.5"

### 5. Finding the General Term

**Simple explanation:** "The general term formula allows us to find any term in the sequence without calculating all the terms before it."

**General approaches:**
1. **Recognize standard sequences:**
   - Arithmetic: aₙ = a₁ + (n-1)d
   - Geometric: aₙ = a₁ × r^(n-1)
   - Squares: aₙ = n²
   - Cubes: aₙ = n³

2. **Find patterns through differences:**
   - First differences constant → arithmetic (linear formula)
   - Second differences constant → quadratic formula
   - Third differences constant → cubic formula

3. **Create a system of equations:**
   - Substitute known terms and solve for parameters

**Example process:**
"Find the general term for {2, 5, 10, 17, 26, ...}:
1. Check differences:
   - First differences: 3, 5, 7, 9 (not constant)
   - Second differences: 2, 2, 2 (constant)
2. Since second differences are constant, try a quadratic formula: aₙ = an² + bn + c
3. Substitute n = 1, 2, 3:
   - a₁ = 2: a(1)² + b(1) + c = a + b + c = 2
   - a₂ = 5: a(2)² + b(2) + c = 4a + 2b + c = 5
   - a₃ = 10: a(3)² + b(3) + c = 9a + 3b + c = 10
4. Solve system to get a = 1, b = 0, c = 1
5. Therefore: aₙ = n² + 1"

### 6. Recursive vs. Explicit Formulas

**Simple explanation:** "Sequences can be defined either recursively (relating each term to previous terms) or explicitly (giving a direct formula for any term)."

**Recursive formulas:**
- Define how to get the next term from previous term(s)
- Require knowing previous terms to calculate the next
- Examples:
  - Arithmetic: aₙ₊₁ = aₙ + d, a₁ = first term
  - Geometric: aₙ₊₁ = aₙ × r, a₁ = first term
  - Fibonacci: aₙ₊₁ = aₙ + aₙ₋₁, a₁ = 1, a₂ = 1

**Explicit formulas:**
- Allow direct calculation of any term
- Do not require knowing previous terms
- Examples:
  - Arithmetic: aₙ = a₁ + (n-1)d
  - Geometric: aₙ = a₁ × r^(n-1)
  - Squares: aₙ = n²

**Converting between formats:**
"Converting the recursive formula aₙ₊₁ = aₙ + 5, a₁ = 3 to explicit form:
- This is arithmetic with a₁ = 3 and d = 5
- Therefore, aₙ = 3 + (n-1)5 = 3 + 5n - 5 = 5n - 2"

### 7. Applications of Sequences

**Simple explanation:** "Sequences appear in many real-world situations, from financial planning to population growth to physics."

**Common applications:**
1. **Financial planning:**
   - Savings plans with regular deposits
   - Loan payments
   - Compound interest calculations

2. **Physical phenomena:**
   - Free-falling objects (distance traveled in each second)
   - Bouncing balls (height of each bounce)
   - Pendulum swings (amplitude over time)

3. **Growth patterns:**
   - Population models
   - Cell division
   - Radioactive decay

4. **Computer algorithms:**
   - Sorting and searching algorithms
   - Computational complexity
   - Iterative processes

**Example problem:**
"A ball is dropped from 100 meters and bounces back to 80% of its previous height each time. Find the height of the 4th bounce:
- Initial height: 100 m
- First bounce: 100 × 0.8 = 80 m
- Second bounce: 80 × 0.8 = 64 m
- Third bounce: 64 × 0.8 = 51.2 m
- Fourth bounce: 51.2 × 0.8 = 40.96 m
This is a geometric sequence with a₁ = 80 and r = 0.8"

## Common Misconceptions and How to Address Them

1. **"The first term must always correspond to n = 1"**
   - Clarification: "While this is common, sequences can start with any index. Some sequences naturally start with n = 0 (like powers of 10) or even negative indices."

2. **"Arithmetic sequences always increase"**
   - Clarification: "Arithmetic sequences can increase (positive difference), decrease (negative difference), or remain constant (zero difference)."

3. **"Geometric sequences always grow exponentially"**
   - Clarification: "Geometric sequences with |r| < 1 actually decrease, and if r is negative, the terms alternate between positive and negative."

4. **"If a sequence has a pattern, it must be either arithmetic or geometric"**
   - Clarification: "Many important sequences follow different patterns, like quadratic sequences, cubic sequences, Fibonacci sequence, etc."

5. **"Explicit formulas are always better than recursive formulas"**
   - Clarification: "Both have their uses. Some sequences (like Fibonacci) are more naturally defined recursively, while others are easier to work with explicitly."

## Check for Understanding

After covering the material, ask these questions:
1. "What makes a sequence arithmetic or geometric?"
2. "How do you find the 50th term of an arithmetic sequence without calculating all previous terms?"
3. "Why might we prefer a recursive formula in some cases?"
4. "Can you give an example of a sequence that is neither arithmetic nor geometric?"
5. "How could you determine if a sequence is quadratic in nature?"

## Practice Problems

1. Determine whether each sequence is arithmetic, geometric, or neither:
   a) {3, 7, 11, 15, 19, ...}
   b) {5, 10, 20, 40, 80, ...}
   c) {1, 4, 9, 16, 25, ...}
   d) {2, 6, 18, 54, 162, ...}

2. Find the next two terms in each sequence:
   a) {5, 9, 13, 17, ...}
   b) {3, 6, 12, 24, ...}
   c) {2, 6, 12, 20, 30, ...}

3. Find the general term (aₙ) for each sequence:
   a) {7, 12, 17, 22, 27, ...}
   b) {3, 9, 27, 81, 243, ...}
   c) {2, 6, 12, 20, 30, ...}

4. Find the 15th term of the arithmetic sequence where a₁ = 4 and d = 6.

5. Find the 8th term of the geometric sequence where a₁ = 5 and r = -2.

6. The 4th term of an arithmetic sequence is 13, and the 10th term is 31. Find a₁ and d.

7. The 3rd term of a geometric sequence is 16, and the 6th term is 128. Find a₁ and r.

8. A ball is dropped from a height of 160 cm and bounces to 75% of its previous height each time. How high will it bounce on the 5th bounce?

**Solutions:**

1. a) Arithmetic (d = 4)
   b) Geometric (r = 2)
   c) Neither (follows n² pattern)
   d) Geometric (r = 3)

2. a) 21, 25 (arithmetic with d = 4)
   b) 48, 96 (geometric with r = 2)
   c) 42, 56 (quadratic sequence with aₙ = n² + n)

3. a) aₙ = 7 + (n-1)5 = 5n + 2
   b) aₙ = 3 × 3^(n-1) = 3^n
   c) aₙ = n² + n

4. a₁₅ = 4 + (15-1)6 = 4 + 84 = 88

5. a₈ = 5 × (-2)^(8-1) = 5 × (-2)^7 = 5 × -128 = -640

6. a₄ = a₁ + 3d = 13
   a₁₀ = a₁ + 9d = 31
   Solving: a₁ = 4, d = 3

7. a₃ = a₁ × r² = 16
   a₆ = a₁ × r⁵ = 128
   Dividing: r³ = 128/16 = 8
   Therefore: r = 2, a₁ = 4

8. Initial height: 160 cm
   First bounce: 160 × 0.75 = 120 cm
   Second bounce: 120 × 0.75 = 90 cm
   Third bounce: 90 × 0.75 = 67.5 cm
   Fourth bounce: 67.5 × 0.75 = 50.625 cm
   Fifth bounce: 50.625 × 0.75 = 37.97 cm

## Visual Learning Activities

1. **Number pattern cards:** Create cards with the first few terms of various sequences and have your teen identify the pattern and next terms.

2. **Physical sequence models:**
   - Stack blocks in an arithmetic pattern (1, 3, 5, 7, etc.)
   - Fold paper repeatedly to demonstrate a geometric sequence (1, 2, 4, 8, etc.)
   - Arrange pennies to form square numbers (1, 4, 9, 16, etc.)

3. **Bouncing ball experiment:** Drop a ball and measure the height of successive bounces to discover the geometric pattern.

4. **Growth visualization:** Use spreadsheets to graph different sequences and compare their growth rates.

5. **Sequence puzzles:** Create puzzles where missing terms in a sequence need to be identified.

## Tips for Teaching Success

1. **Start with familiar sequences** like counting numbers, even numbers, or powers of 2.

2. **Use visual patterns** whenever possible to make abstract sequences concrete.

3. **Connect to real-world examples** relevant to your teen's interests (sports statistics, social media growth, video game levels, etc.).

4. **Encourage pattern recognition** by asking your teen to discover the rule rather than telling them.

5. **Use technology** like spreadsheets or graphing calculators to explore sequences and verify formulas.

6. **Play with "What if?" scenarios:** "What if we doubled each term?" "What if we added 3 to each term?"

## Online Resources

- **Khan Academy**: "Sequences" and "Series" video lessons
- **Desmos.com**: Online graphing calculator for visualizing sequences
- **Fibonacci Sequence Explorer**: Interactive tool exploring the famous sequence
- **NRICH Mathematics**: Sequence puzzles and challenges
- **Geogebra**: Interactive applets for exploring arithmetic and geometric sequences

## Next Steps

Once your teen understands basic sequence concepts, they'll be ready to:
1. Learn about series (the sum of sequence terms)
2. Explore more complex sequences like Fibonacci
3. Understand recursive functions in greater depth
4. Apply sequences to problems in combinatorics
5. Study sequences in the context of calculus (limits of sequences)

Remember: Sequences are fundamental to many advanced mathematical concepts. A solid understanding will help your teen with future topics in discrete mathematics, calculus, and computer science.
