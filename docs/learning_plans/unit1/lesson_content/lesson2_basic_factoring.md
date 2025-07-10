# Basic Factoring Techniques

### Factoring breaks down expressions into their simplest building blocks

## Why This Matters

**Real-World Applications:**
- **Computer Programming:** When optimizing code, programmers use factoring to simplify complex calculations. Tech companies like Google and Microsoft employ this math to make their software run faster and use less memory.

- **Financial Analysis:** Investment analysts factor polynomial models to better understand economic trends and predict market behaviors. This skill enables them to identify critical points where investment decisions should be made.

- **Game Development:** Video game physics engines rely on factoring to solve equations that determine how objects move and interact. This math ensures realistic motion in games like Fortnite and Call of Duty.

- **Engineering Design:** Architects and civil engineers use factoring when analyzing forces on structures. By simplifying complex equations through factoring, they can identify weak points and ensure buildings and bridges are safe.

**Career Connection:** Professionals in software development, quantitative finance, data science, and engineering regularly apply these factoring skills. Entry-level positions in these fields typically start at $75,000-$95,000, with senior roles often exceeding $150,000 annually.

## Key Concepts

### 1. What is Factoring?

**Simple explanation:** "Factoring is the process of breaking down an expression into simpler parts that, when multiplied together, give the original expression. It's like finding the DNA of a mathematical expression."

**Key insight:** "Factoring is the opposite of multiplication. When you multiply (x+2)(x+3), you get x²+5x+6. Factoring is working backward from x²+5x+6 to find (x+2)(x+3)."

**Real-world analogy:** "Think of factoring like breaking a large bill into smaller denominations. $100 can be expressed as five $20 bills, ten $10 bills, or other combinations. Similarly, x²+5x+6 can be expressed as (x+2)(x+3)."

### 2. Greatest Common Factor (GCF)

**Simple explanation:** "The Greatest Common Factor is the largest factor that divides evenly into all terms of an expression."

**Step-by-step process:**
1. Find the GCF of the coefficients (the number parts)
2. Find the GCF of the variables (the letter parts)
3. Combine them to form the overall GCF
4. Factor out the GCF from each term

**Example 1:**
```
Factor: 6x³ + 9x² - 15x

Step 1: GCF of coefficients: 6, 9, and 15 → 3
Step 2: GCF of variables: x³, x², and x → x
Step 3: Overall GCF: 3x
Step 4: 3x(2x² + 3x - 5)
```

**Example 2:**
```
Factor: 8y⁴ - 20y² + 12y

Step 1: GCF of coefficients: 8, 20, and 12 → 4
Step 2: GCF of variables: y⁴, y², and y → y
Step 3: Overall GCF: 4y
Step 4: 4y(2y³ - 5y + 3)
```

### 3. Factoring Special Patterns

**Simple explanation:** "Certain algebraic expressions follow patterns that make them easier to factor. Recognizing these patterns is like having shortcuts."

#### a. Difference of Squares: a² - b² = (a + b)(a - b)

**Example:**
```
Factor: x² - 16

This is a difference of squares where a = x and b = 4
x² - 16 = (x + 4)(x - 4)
```

**Example with variables:**
```
Factor: 25y² - 49z²

This is a difference of squares where a = 5y and b = 7z
25y² - 49z² = (5y + 7z)(5y - 7z)
```

#### b. Perfect Square Trinomials

**Pattern 1:** a² + 2ab + b² = (a + b)²

**Example:**
```
Factor: x² + 6x + 9

This matches the pattern where a = x and b = 3
x² + 6x + 9 = (x + 3)²
```

**Pattern 2:** a² - 2ab + b² = (a - b)²

**Example:**
```
Factor: 4y² - 12y + 9

This matches the pattern where a = 2y and b = 3
4y² - 12y + 9 = (2y - 3)²
```

### 4. Factoring Simple Trinomials (ax² + bx + c where a = 1)

**Simple explanation:** "When the coefficient of x² is 1, we need to find two numbers that multiply to give c and add up to b."

**Step-by-step process:**
1. Find two numbers that multiply to give c
2. Check if they add up to b
3. Write the factored form as (x + p)(x + q) where p and q are the numbers you found

**Example 1:**
```
Factor: x² + 5x + 6

Step 1: Find factors of 6: 1×6 = 6, 2×3 = 6
Step 2: Check which pair adds to 5: 2+3 = 5 ✓
Step 3: x² + 5x + 6 = (x + 2)(x + 3)
```

**Example 2:**
```
Factor: x² - x - 6

Step 1: Find factors of -6: 2×(-3) = -6, (-2)×3 = -6
Step 2: Check which pair adds to -1: 2+(-3) = -1 ✓
Step 3: x² - x - 6 = (x + 2)(x - 3)
```

**Example 3:**
```
Factor: x² - 7x + 12

Step 1: Find factors of 12: 1×12 = 12, 2×6 = 12, 3×4 = 12
Step 2: Check which pair adds to -7: (-3)+(-4) = -7 ✓
Step 3: x² - 7x + 12 = (x - 3)(x - 4)
```

### 5. Factoring by Grouping (Four Terms)

**Simple explanation:** "Factoring by grouping is a technique for factoring expressions with four terms by pairing them up."

**Step-by-step process:**
1. Group the terms into two pairs
2. Factor out the GCF from each group
3. Factor out the common binomial factor

**Example 1:**
```
Factor: xy + 3x + 2y + 6

Step 1: Group terms: (xy + 3x) + (2y + 6)
Step 2: Factor out GCF from each group: x(y + 3) + 2(y + 3)
Step 3: Factor out common binomial: (y + 3)(x + 2)
```

**Example 2:**
```
Factor: x³ - 3x² - 4x + 12

Step 1: Group terms: (x³ - 3x²) + (-4x + 12)
Step 2: Factor out GCF from each group: x²(x - 3) - 4(x - 3)
Step 3: Factor out common binomial: (x - 3)(x² - 4)
Step 4: Further factor if possible: (x - 3)(x + 2)(x - 2)
```

### 6. Factoring Strategy

**General approach to factoring:**
1. Always check for a GCF first
2. Count the terms:
   - For 2 terms: Check for difference of squares
   - For 3 terms: Try factoring as a trinomial
   - For 4 terms: Try factoring by grouping
3. Always verify your answer by multiplying the factors

**Visual aid:** "Draw a decision tree for factoring that starts with 'Check for GCF' and branches based on the number of terms."

## Practice Problems

1. Factor: 5x² - 15x

2. Factor: x² - 25

3. Factor: x² + 8x + 16

4. Factor: x² + 3x - 18

5. Factor: 2ax + 2ay + bx + by

6. Factor: x³ - 4x

7. Factor: x² - 10x + 25 - y²

8. Factor: 3x² + 15x - 42

**Solutions:**
1. 5x(x - 3)

2. (x + 5)(x - 5)

3. (x + 4)²

4. (x + 6)(x - 3)

5. (2a + b)(x + y)

6. x(x² - 4) = x(x + 2)(x - 2)

7. (x - 5)² - y² = (x - 5 + y)(x - 5 - y)

8. 3(x² + 5x - 14) = 3(x + 7)(x - 2)

## Tips for Success

1. **Practice systematically:** Work through different types of factoring problems to build recognition skills.

2. **Always check for the GCF first:** This simplifies the remaining factoring.

3. **Verify your answers:** Always multiply your factors to check that you get the original expression.

4. **Look for patterns:** Train yourself to recognize special forms like difference of squares and perfect square trinomials.

5. **Draw connections:** Remember that factoring helps solve equations, simplify fractions, and find intercepts of graphs.

## Online Resources

- **Khan Academy:** Videos on basic factoring techniques
- **PurpleMath:** Clear written explanations of factoring methods
- **Desmos.com:** Graphing calculator to verify factors visually

## Next Steps

Once you understand these basic factoring techniques, you're ready to move on to:
1. Advanced factoring methods (lesson 3)
2. Solving quadratic equations using factoring
3. Simplifying rational expressions using factoring

**Remember:** Mastering basic factoring now will make advanced math much easier later. It's like learning the alphabet before trying to write essays!
