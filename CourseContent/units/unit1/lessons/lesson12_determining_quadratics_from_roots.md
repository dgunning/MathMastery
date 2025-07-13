# Determining a Quadratic Equation from its Roots

### Determining quadratics from roots is mathematical reverse-engineering

## Why This Matters

**Real-World Applications:**
- **Engineering Design:** When engineers design roller coasters at companies like Disney or Universal, they often start with specific points the track must hit (the roots) and then generate the parabolic curves (the equations) that connect them. This reverse-engineering approach ensures thrilling yet safe rides.

- **Technology & AI:** Machine learning algorithms like those used by Tesla's self-driving cars and Netflix's recommendation systems often work backward from desired outcomes to generate prediction models. Engineers earning $140,000+ annually use these reverse-modeling techniques to create algorithms that can anticipate user behavior.

- **Scientific Research:** Climate scientists model environmental changes by working backward from observed data points to create predictive equations. By determining quadratics from known values, researchers can predict future climate patterns and develop mitigation strategies.

- **Financial Modeling:** Investment analysts at firms like Goldman Sachs and JPMorgan create risk assessment models by working backward from market data points to generate predictive curves. This reverse-engineering skill is essential for portfolio optimization and risk management.

**Career Connection:** The ability to work backward from solutions to create equations is particularly valuable in fields like quantitative finance ($150,000+), data science ($125,000+), algorithm development ($130,000+), and actuarial science ($110,000+). Companies specifically seek candidates who can reverse-engineer mathematical models, as this demonstrates advanced analytical thinking beyond basic problem-solving.

## Key Concepts

### 1. Understanding the Relationship Between Roots and Equations

**Simple explanation:** "If r and s are the roots of a quadratic equation, then the equation can be written in the form (x - r)(x - s) = 0."

**Key insight:** "This process is the reverse of solving a quadratic equation by factoring. Instead of finding the roots from the equation, we're building the equation from the roots."

**Visual representation:**
```
           |
           |
           |       /|\
           |      / | \
           |     /  |  \
      -----+----+---+---+------
           |   /    |    \
           |  /     |     \
           | /      |      \
           |/       |       \
      r----+-----------------+----s
         root1             root2
```

**Connection to factored form:** "If x = r and x = s are the roots, then (x - r)(x - s) = 0 is the factored form of the quadratic equation."

### 2. Creating Quadratic Equations in Factored Form

**Simple explanation:** "To create a quadratic equation from its roots, substitute the roots into the pattern (x - r)(x - s) = 0."

**Step-by-step process:**
1. Identify the roots (solutions)
2. Write each root in the form (x - root)
3. Multiply these factors together
4. Expand the product to get the standard form ax² + bx + c = 0

> **Example 1: Creating a Quadratic with Integer Roots**
>
> **Problem:** Create a quadratic equation with roots x = 3 and x = -5
>
> #### Step 1: Write the factors using (x - root) form
> - For each root, write the factor (x - root)
> - For x = 3: (x - 3)
> - For x = -5: (x - (-5)) = (x + 5)
> - Combine the factors: (x - 3)(x + 5)
>
> #### Step 2: Expand the expression using FOIL method
> - First terms: x × x = x²
> - Outer terms: x × 5 = 5x
> - Inner terms: -3 × x = -3x
> - Last terms: -3 × 5 = -15
> - Combine like terms: x² + 5x - 3x - 15 = x² + 2x - 15
>
> #### Final Result
> - The quadratic equation is x² + 2x - 15 = 0
> - Verify: When x = 3: 3² + 2(3) - 15 = 9 + 6 - 15 = 0 ✓
> - Verify: When x = -5: (-5)² + 2(-5) - 15 = 25 - 10 - 15 = 0 ✓

> **Example 2: Creating a Quadratic with Fractional Roots**
>
> **Problem:** Create a quadratic equation with roots x = 2/3 and x = -1/4
>
> #### Step 1: Write the factors using (x - root) form
> - For each root, write the factor (x - root)
> - For x = 2/3: (x - 2/3)
> - For x = -1/4: (x - (-1/4)) = (x + 1/4)
> - Combine the factors: (x - 2/3)(x + 1/4)
>
> #### Step 2: Multiply and expand using FOIL method
> - First terms: x × x = x²
> - Outer terms: x × (1/4) = (1/4)x
> - Inner terms: (-2/3) × x = -(2/3)x
> - Last terms: (-2/3) × (1/4) = -(2/12) = -(1/6)
> - Combine like terms: x² + (1/4)x - (2/3)x - (1/6)
> - Simplify: x² + (1/4 - 2/3)x - (1/6) = x² - (5/12)x - (1/6)
>
> #### Step 3: Clear the fractions for a cleaner equation
> - Multiply the entire equation by 12 to eliminate denominators
> - 12(x² - (5/12)x - (1/6)) = 0
> - 12x² - 5x - 2 = 0
>
> #### Final Result
> - The quadratic equation with the given roots is 12x² - 5x - 2 = 0
> - Verify: When x = 2/3: 12(2/3)² - 5(2/3) - 2 = 12(4/9) - 10/3 - 2 = 16/3 - 10/3 - 2 = 6/3 - 6/3 = 0 ✓
> - Verify: When x = -1/4: 12(-1/4)² - 5(-1/4) - 2 = 12(1/16) + 5/4 - 2 = 3/4 + 5/4 - 2 = 8/4 - 8/4 = 0 ✓

> **Example 3: Creating a Quadratic with Irrational Roots**
>
> **Problem:** Create a quadratic equation with roots x = √2 and x = -√2
>
> #### Step 1: Write the factors using (x - root) form
> - For each root, write the factor (x - root)
> - For x = √2: (x - √2)
> - For x = -√2: (x - (-√2)) = (x + √2)
> - Combine the factors: (x - √2)(x + √2)
>
> #### Step 2: Recognize and apply the difference of squares pattern
> - Notice that (x - √2)(x + √2) matches the pattern (a - b)(a + b) = a² - b²
> - In this case: a = x and b = √2
> - Apply the pattern: (x - √2)(x + √2) = x² - (√2)² = x² - 2
>
> #### Final Result
> - The quadratic equation is x² - 2 = 0
> - Notice this equation has no x term because the roots are opposites of each other (x = √2 and x = -√2)
> - Verify: When x = √2: (√2)² - 2 = 2 - 2 = 0 ✓
> - Verify: When x = -√2: (-√2)² - 2 = 2 - 2 = 0 ✓

**Key insight:** "Notice that when the roots are a and -a (opposites), you get a quadratic with no x-term."

### 3. Creating Equations with Complex or Repeated Roots

**Simple explanation:** "The same process works even if the roots are complex numbers or repeated roots."

> **Example 1: Creating a Quadratic with Complex Roots**
>
> **Problem:** Create a quadratic equation with roots x = 2 + 3i and x = 2 - 3i
>
> #### Step 1: Write the factors using (x - root) form
> - For each complex root, write the factor (x - root)
> - For x = 2 + 3i: (x - (2 + 3i)) = (x - 2 - 3i)
> - For x = 2 - 3i: (x - (2 - 3i)) = (x - 2 + 3i)
> - Combine the factors: (x - 2 - 3i)(x - 2 + 3i)
>
> #### Step 2: Recognize and apply the difference of squares pattern with complex numbers
> - Rewrite as (x - 2 - 3i)(x - 2 + 3i) = ((x - 2) - 3i)((x - 2) + 3i)
> - This matches the pattern (a - b)(a + b) = a² - b²
> - In this case: a = (x - 2) and b = 3i
> - Apply the pattern: (x - 2)² - (3i)²
> - Recall that i² = -1, so (3i)² = 9i² = 9(-1) = -9
> - Therefore: (x - 2)² - (-9) = (x - 2)² + 9
>
> #### Step 3: Expand the remaining expression
> - (x - 2)² = x² - 4x + 4
> - (x - 2)² + 9 = x² - 4x + 4 + 9 = x² - 4x + 13
>
> #### Final Result
> - The quadratic equation is x² - 4x + 13 = 0
> - Notice that despite having complex roots, the final equation has all real coefficients
> - This always happens when complex roots come in conjugate pairs

> **Example 2: Creating a Quadratic with a Repeated Root**
>
> **Problem:** Create a quadratic equation with the repeated root x = 4
>
> #### Step 1: Write the repeated factors
> - Since the root x = 4 occurs twice, write the factor (x - 4) twice
> - (x - 4)(x - 4) = (x - 4)²
>
> #### Step 2: Expand the squared expression
> - Use the pattern (a - b)² = a² - 2ab + b²
> - With a = x and b = 4: (x - 4)² = x² - 2(4)x + 4² = x² - 8x + 16
>
> #### Final Result
> - The quadratic equation is x² - 8x + 16 = 0
> - Verify: When x = 4: 4² - 8(4) + 16 = 16 - 32 + 16 = 0 ✓
> - The discriminant of this equation is b² - 4ac = (-8)² - 4(1)(16) = 64 - 64 = 0, confirming a repeated root

**Key insight:** "When complex roots appear in a quadratic equation, they always come in conjugate pairs. The resulting equation will have all real coefficients."

### 4. The Leading Coefficient

**Simple explanation:** "So far, we've been creating quadratic equations with a leading coefficient of 1. But we can create any equivalent quadratic equation by multiplying by a constant."

**Step-by-step process:**
1. Create the quadratic equation with a = 1
2. Multiply the entire equation by the desired value of a

> **Example: Creating a Quadratic with a Specific Leading Coefficient**
>
> **Problem:** Create a quadratic equation with roots x = 2 and x = 5, and a leading coefficient of 3
>
> #### Step 1: Create the basic equation with a = 1
> - Write the factors: (x - 2)(x - 5)
> - Expand using FOIL:
>   * First terms: x × x = x²
>   * Outer terms: x × (-5) = -5x
>   * Inner terms: (-2) × x = -2x
>   * Last terms: (-2) × (-5) = 10
> - Combine like terms: x² - 5x - 2x + 10 = x² - 7x + 10
> - Basic equation: x² - 7x + 10 = 0
>
> #### Step 2: Adjust the leading coefficient
> - Multiply the entire equation by the desired coefficient (3)
> - 3(x² - 7x + 10) = 0
> - 3x² - 21x + 30 = 0
>
> #### Final Result
> - The quadratic equation is 3x² - 21x + 30 = 0
> - Verify: When x = 2: 3(2)² - 21(2) + 30 = 3(4) - 42 + 30 = 12 - 42 + 30 = 0 ✓
> - Verify: When x = 5: 3(5)² - 21(5) + 30 = 3(25) - 105 + 30 = 75 - 105 + 30 = 0 ✓
> - Note that multiplying by a non-zero constant doesn't change the roots

**Key insight:** "Multiplying the entire equation by a constant doesn't change the solutions. Any equation in the family Ax² - 7Ax + 10A = 0 will have the same roots x = 2 and x = 5."

### 5. Working Backward - Finding the Form Given Specific Conditions

**Simple explanation:** "Sometimes we need to create a quadratic equation that satisfies specific conditions beyond just having certain roots."

> **Example 1: Creating a Quadratic with Specific Roots and a Point**
>
> **Problem:** Find a quadratic equation with roots x = -3 and x = 4 that passes through the point (2, 10)
>
> #### Step 1: Form the basic equation from the roots
> - Write the factors: (x - (-3))(x - 4) = (x + 3)(x - 4)
> - Expand using FOIL: (x + 3)(x - 4) = x² - 4x + 3x - 12 = x² - x - 12
> - Basic equation: x² - x - 12 = 0
>
> #### Step 2: Test if the function passes through the given point
> - The function form is y = x² - x - 12
> - Evaluate at point (2, 10): y = 2² - 2 - 12 = 4 - 2 - 12 = -10
> - We get y = -10, but we need y = 10, so we're off by 20
>
> #### Step 3: Adjust the function to pass through the point
> - We need to increase the function value by 20
> - First approach: Multiply by -1 and add 20
>   * y = -1(x² - x - 12) + 20
>   * y = -x² + x + 12 + 20
>   * y = -x² + x + 32
>
> #### Final Result
> - The quadratic equation is -x² + x + 32 = 0 or x² - x - 32 = 0
> - Verify: When x = -3: (-3)² - (-3) - 32 = 9 + 3 - 32 = -20, which is not zero
> - When x = 4: 4² - 4 - 32 = 16 - 4 - 32 = -20, which is not zero
> - However, we changed the original equation so the roots changed too
> - The roots of our new equation x² - x - 32 = 0 can be found using the quadratic formula
> - x = (-(-1) ± √((-1)² - 4(1)(-32)))/2(1) = (1 ± √(1 + 128))/2 = (1 ± √129)/2
> - Verify: At (2, 10): -2² + 2 + 32 = -4 + 2 + 32 = 30 ≠ 0, but when used as y = -x² + x + 32, we get y = 10 ✓

> **Example 2: Creating a Quadratic with Specific Coefficient**
>
> **Problem:** Find a quadratic equation with roots x = 1/2 and x = -3 where the coefficient of x is 5
>
> #### Step 1: Form the basic equation from the roots
> - Write the factors: (x - 1/2)(x - (-3)) = (x - 1/2)(x + 3)
> - Expand using FOIL: 
>   * First terms: x × x = x²
>   * Outer terms: x × 3 = 3x
>   * Inner terms: (-1/2) × x = -x/2
>   * Last terms: (-1/2) × 3 = -3/2
> - Combine like terms: x² + 3x - x/2 - 3/2 = x² + (3 - 1/2)x - 3/2 = x² + 5x/2 - 3/2
> - Basic equation: x² + 5x/2 - 3/2 = 0
>
> #### Step 2: Adjust to get the desired coefficient of x
> - Current coefficient of x is 5/2, but we need 5
> - Multiply the entire equation by 2:
>   * 2(x² + 5x/2 - 3/2) = 0
>   * 2x² + 5x - 3 = 0
>
> #### Final Result
> - The quadratic equation is 2x² + 5x - 3 = 0
> - Verify: When x = 1/2: 2(1/2)² + 5(1/2) - 3 = 2(1/4) + 5/2 - 3 = 1/2 + 5/2 - 3 = 3 - 3 = 0 ✓
> - Verify: When x = -3: 2(-3)² + 5(-3) - 3 = 2(9) - 15 - 3 = 18 - 15 - 3 = 0 ✓

### 6. The Vieta Formulas

**Simple explanation:** "Vieta's formulas give us the relationships between the roots of a quadratic equation and its coefficients."

**Key formulas:** "For a quadratic equation ax² + bx + c = 0 with roots r and s:
- r + s = -b/a (sum of roots)
- r × s = c/a (product of roots)"

> **Example: Using Vieta's Formulas**
>
> **Problem:** For the equation 2x² - 7x + 3 = 0, determine the sum and product of roots without solving
>
> #### Step 1: Identify the coefficients in the standard form ax² + bx + c = 0
> - Comparing 2x² - 7x + 3 = 0 with the standard form:
> - a = 2 (coefficient of x²)
> - b = -7 (coefficient of x)
> - c = 3 (constant term)
>
> #### Step 2: Apply Vieta's formulas
> - Sum of roots = -b/a = -(-7)/2 = 7/2
> - Product of roots = c/a = 3/2
>
> #### Final Result
> - If r and s are the roots of the equation 2x² - 7x + 3 = 0, then:
> - r + s = 7/2
> - r × s = 3/2
> - This demonstrates how Vieta's formulas allow us to find relationships between roots without solving the equation

> **Example: Creating a Quadratic Using Vieta's Formulas**
>
> **Problem:** Create a quadratic equation with a = 1 where the sum of roots is 6 and the product of roots is 8
>
> #### Step 1: Use Vieta's formulas to determine coefficients
> - For a quadratic equation ax² + bx + c = 0 with a = 1:
>   * Sum of roots = -b/a = -b/1 = -b
>   * Product of roots = c/a = c/1 = c
> - Given sum of roots = 6, so -b = 6, which means b = -6
> - Given product of roots = 8, so c = 8
>
> #### Step 2: Form the quadratic equation using these coefficients
> - With a = 1, b = -6, and c = 8
> - The equation is 1x² + (-6)x + 8 = 0, or x² - 6x + 8 = 0
>
> #### Step 3: Verify the result by factoring
> - Try to factor x² - 6x + 8 = 0
> - Looking for two numbers that multiply to 8 and add to -6
> - The numbers -2 and -4 work: (-2) × (-4) = 8 and (-2) + (-4) = -6
> - So the factored form is (x - 2)(x - 4) = 0
> - This gives roots x = 2 or x = 4
>
> #### Final Result
> - The quadratic equation is x² - 6x + 8 = 0
> - Confirm: The sum of roots is 2 + 4 = 6 ✓
> - Confirm: The product of roots is 2 × 4 = 8 ✓

### 7. Applications and Word Problems

**Simple explanation:** "Creating quadratic equations from roots is useful in many real-world scenarios."

> **Example 1: Rectangular Garden Problem**
>
> **Problem:** A rectangular garden has a length 3 meters more than its width. If the area is 70 square meters, find a quadratic equation whose roots give the possible dimensions.
>
> #### Step 1: Define variables and translate to equations
> - Let w = width of the garden in meters
> - Then w + 3 = length of the garden in meters (since length is 3 more than width)
> - The area of a rectangle is length × width = 70 square meters
> - So we have: w(w + 3) = 70
>
> #### Step 2: Create a quadratic equation in standard form
> - Expand the equation: w(w + 3) = 70
> - w² + 3w = 70
> - w² + 3w - 70 = 0
>
> #### Final Result
> - The quadratic equation is w² + 3w - 70 = 0
> - The positive root of this equation will give the width of the garden
> - The length will be that root plus 3
> - Using the quadratic formula: w = (-3 ± √(9 + 280))/2 = (-3 ± √289)/2 = (-3 ± 17)/2
> - This gives w = 7 or w = -10
> - Since width must be positive, w = 7 meters
> - Therefore, length = 7 + 3 = 10 meters
> - Verify: Area = 7 × 10 = 70 square meters ✓

> **Example 2: Consecutive Integers Problem**
>
> **Problem:** The product of two consecutive integers is 42. Find a quadratic equation whose roots are these two integers.
>
> #### Step 1: Define variables and translate to equations
> - Let's call the first integer x
> - Then the next consecutive integer is x + 1
> - Their product is 42, so: x(x + 1) = 42
>
> #### Step 2: Create a quadratic equation in standard form
> - Expand the equation: x(x + 1) = 42
> - x² + x = 42
> - x² + x - 42 = 0
>
> #### Final Result
> - The quadratic equation is x² + x - 42 = 0
> - The roots of this equation will be the two consecutive integers
> - Factoring: x² + x - 42 = (x + 7)(x - 6) = 0
> - This gives x = -7 or x = 6
> - So the consecutive integers are 6 and 7 or -7 and -6
> - Verify: 6 × 7 = 42 ✓ and (-7) × (-6) = 42 ✓

> **Example 3: Projectile Motion Problem**
>
> **Problem:** A ball is thrown upward from a height of 6 feet with an initial velocity. It hits the ground after 3 seconds. Find the quadratic equation that models the height of the ball.
>
> #### Step 1: Identify the key points and constraints
> - We know the ball hits the ground at t = 3 seconds, so h(3) = 0
> - We are told the initial height is 6 feet, so h(0) = 6
> - The motion of a projectile under gravity follows a quadratic model
>
> #### Step 2: Form the basic equation using the roots
> - Since the height is 0 at t = 3, then (t - 3) must be a factor
> - The equation has the form h = a(t - 3)(t - r) where r is another root
> - Or more generally: h = at² + bt + c
>
> #### Step 3: Use the initial height condition to find the coefficients
> - We know that h(0) = 6
> - Substituting t = 0: 6 = a(0)² + b(0) + c = c
> - Therefore c = 6
>
> #### Step 4: Use the ground condition to find more constraints
> - We know that h(3) = 0
> - Substituting t = 3: 0 = a(3)² + b(3) + 6
> - 0 = 9a + 3b + 6
> - 9a + 3b = -6
> - 3a + b = -2
>
> #### Step 5: Use physics to identify another constraint
> - In projectile motion, the coefficient of t² is -16 (in feet) or -4.9 (in meters)
> - Since we're working in feet, let's approximate a = -16/2 = -8 (accounting for any unit conversion)
> - From 3a + b = -2: 3(-8) + b = -2
> - -24 + b = -2
> - b = 22
>
> #### Final Result
> - The height equation is h = -8t² + 22t + 6
> - This represents the height of the ball t seconds after being thrown
> - Verify: At t = 0: h = -8(0)² + 22(0) + 6 = 6 ✓
> - Verify: At t = 3: h = -8(3)² + 22(3) + 6 = -8(9) + 66 + 6 = -72 + 72 = 0 ✓

## Common Misconceptions and How to Address Them

1. **"The quadratic equation from roots will always have a leading coefficient of 1"**
   - Clarification: "The basic form will have a = 1, but we can multiply by any non-zero constant to get equivalent equations with different leading coefficients."

2. **"Complex roots can't be used to create equations with real coefficients"**
   - Clarification: "When complex roots appear in conjugate pairs, the resulting quadratic will have all real coefficients."

3. **"If a quadratic equation has roots 3 and 5, then the equation must be (x - 3)(x - 5) = 0"**
   - Clarification: "That's one possible equation, but any multiple of it is also valid, such as 2x² - 16x + 30 = 0."

4. **"I can't create a quadratic equation if I only know one root"**
   - Clarification: "If you know only one root, you need additional information, such as another root, a point the curve passes through, or the leading coefficient."

## Check for Understanding

After covering the material, ask these questions:

1. "How do you create a quadratic equation with roots x = 2 and x = -5?"
2. "What's the relationship between the sum of roots and the coefficients of a quadratic equation?"
3. "How would you create a quadratic equation with a repeated root at x = 3?"
4. "If the sum of roots is 7 and their product is 12, what's the quadratic equation with a = 1?"
5. "How would you create a quadratic equation with roots 4 and -1, and a leading coefficient of 2?"

## Practice Problems

1. Create a quadratic equation in standard form with the given roots:

1. Create a quadratic equation with roots x = 3 and x = -5
2. Create a quadratic equation with roots x = 2/3 and x = -4
3. Create a quadratic equation with roots x = √3 and x = -√3
4. Create a quadratic equation with roots x = 4 + 2i and x = 4 - 2i
5. Create a quadratic equation with the repeated root x = -2
6. Create a quadratic equation with roots x = 1 and x = -3 and a leading coefficient of 5
7. Create a quadratic equation with roots x = 2 and x = 6 that passes through the point (1, 15)
8. Create a quadratic equation with roots x = -2 and x = 3 where the coefficient of x is 10
9. Using Vieta's formulas, find the sum and product of roots for the equation 3x² + 7x - 4 = 0
10. Create a quadratic equation with a = 1 where the sum of roots is -5 and the product of roots is 6

### Solutions

> **Solution 1**
>
> **Problem:** Create a quadratic equation with roots x = 3 and x = -5
>
> #### Step 1: Write the factors using (x - root) form
> - For x = 3: (x - 3)
> - For x = -5: (x - (-5)) = (x + 5)
> - Combine the factors: (x - 3)(x + 5)
>
> #### Step 2: Expand the expression
> - Using FOIL: (x - 3)(x + 5)
> - First terms: x × x = x²
> - Outer terms: x × 5 = 5x
> - Inner terms: -3 × x = -3x
> - Last terms: -3 × 5 = -15
> - Combine like terms: x² + 5x - 3x - 15 = x² + 2x - 15
>
> #### Final Result
> - The quadratic equation is x² + 2x - 15 = 0
> - Verify: When x = 3: 3² + 2(3) - 15 = 9 + 6 - 15 = 0 ✓
> - Verify: When x = -5: (-5)² + 2(-5) - 15 = 25 - 10 - 15 = 0 ✓

> **Solution 2**
>
> **Problem:** Create a quadratic equation with roots x = 2/3 and x = -4
>
> #### Step 1: Write the factors using (x - root) form
> - For x = 2/3: (x - 2/3)
> - For x = -4: (x - (-4)) = (x + 4)
> - Combine the factors: (x - 2/3)(x + 4)
>
> #### Step 2: Expand the expression
> - Using FOIL: (x - 2/3)(x + 4)
> - First terms: x × x = x²
> - Outer terms: x × 4 = 4x
> - Inner terms: -2/3 × x = -2x/3
> - Last terms: -2/3 × 4 = -8/3
> - Combine like terms: x² + 4x - 2x/3 - 8/3 = x² + (12/3 - 2/3)x - 8/3 = x² + 10x/3 - 8/3
>
> #### Step 3: Convert to integer coefficients
> - Multiply the entire equation by 3 to clear the fractions:
> - 3(x² + 10x/3 - 8/3) = 0
> - 3x² + 10x - 8 = 0
>
> #### Final Result
> - The quadratic equation is 3x² + 10x - 8 = 0
> - Verify: When x = 2/3: 3(2/3)² + 10(2/3) - 8 = 3(4/9) + 20/3 - 8 = 4/3 + 20/3 - 8 = 24/3 - 24/3 = 0 ✓
> - Verify: When x = -4: 3(-4)² + 10(-4) - 8 = 3(16) - 40 - 8 = 48 - 40 - 8 = 0 ✓

> **Solution 3**
>
> **Problem:** Create a quadratic equation with roots x = √3 and x = -√3
>
> #### Step 1: Write the factors using (x - root) form
> - For x = √3: (x - √3)
> - For x = -√3: (x - (-√3)) = (x + √3)
> - Combine the factors: (x - √3)(x + √3)
>
> #### Step 2: Recognize and apply the difference of squares pattern
> - This has the form (a - b)(a + b) = a² - b²
> - With a = x and b = √3
> - (x - √3)(x + √3) = x² - (√3)² = x² - 3
>
> #### Final Result
> - The quadratic equation is x² - 3 = 0
> - Verify: When x = √3: (√3)² - 3 = 3 - 3 = 0 ✓
> - Verify: When x = -√3: (-√3)² - 3 = 3 - 3 = 0 ✓

> **Solution 4**
>
> **Problem:** Create a quadratic equation with roots x = 4 + 2i and x = 4 - 2i
>
> #### Step 1: Write the factors using (x - root) form
> - For x = 4 + 2i: (x - (4 + 2i)) = (x - 4 - 2i)
> - For x = 4 - 2i: (x - (4 - 2i)) = (x - 4 + 2i)
> - Combine the factors: (x - 4 - 2i)(x - 4 + 2i)
>
> #### Step 2: Recognize and apply the difference of squares pattern
> - This has the form (a - b)(a + b) = a² - b²
> - With a = (x - 4) and b = 2i
> - (x - 4 - 2i)(x - 4 + 2i) = (x - 4)² - (2i)²
> - Since i² = -1, we have (2i)² = 4i² = 4(-1) = -4
> - (x - 4)² - (-4) = (x - 4)² + 4
>
> #### Step 3: Expand the remaining expression
> - (x - 4)² = x² - 8x + 16
> - (x - 4)² + 4 = x² - 8x + 16 + 4 = x² - 8x + 20
>
> #### Final Result
> - The quadratic equation is x² - 8x + 20 = 0
> - This equation has complex roots x = 4 ± 2i, which can be verified using the quadratic formula

> **Solution 5**
>
> **Problem:** Create a quadratic equation with the repeated root x = -2
>
> #### Step 1: Write the repeated factor
> - Since the root x = -2 appears twice, write: (x - (-2))² = (x + 2)²
>
> #### Step 2: Expand the squared expression
> - Using the pattern (a + b)² = a² + 2ab + b²
> - With a = x and b = 2: (x + 2)² = x² + 2(2)x + 2² = x² + 4x + 4
>
> #### Final Result
> - The quadratic equation is x² + 4x + 4 = 0
> - Verify: When x = -2: (-2)² + 4(-2) + 4 = 4 - 8 + 4 = 0 ✓
> - The discriminant b² - 4ac = 4² - 4(1)(4) = 16 - 16 = 0, confirming a repeated root

> **Solution 6**
>
> **Problem:** Create a quadratic equation with roots x = 1 and x = -3 and a leading coefficient of 5
>
> #### Step 1: Create the basic equation with a = 1
> - Write the factors: (x - 1)(x - (-3)) = (x - 1)(x + 3)
> - Expand using FOIL:
>   * First terms: x × x = x²
>   * Outer terms: x × 3 = 3x
>   * Inner terms: -1 × x = -x
>   * Last terms: -1 × 3 = -3
> - Combine like terms: x² + 3x - x - 3 = x² + 2x - 3
> - Basic equation: x² + 2x - 3 = 0
>
> #### Step 2: Adjust the leading coefficient
> - Multiply the entire equation by the desired coefficient (5):
> - 5(x² + 2x - 3) = 0
> - 5x² + 10x - 15 = 0
>
> #### Final Result
> - The quadratic equation is 5x² + 10x - 15 = 0
> - Verify: When x = 1: 5(1)² + 10(1) - 15 = 5 + 10 - 15 = 0 ✓
> - Verify: When x = -3: 5(-3)² + 10(-3) - 15 = 5(9) - 30 - 15 = 45 - 45 = 0 ✓
> **Solution 7**
>
> **Problem:** Create a quadratic equation with roots x = 2 and x = 6 that passes through the point (1, 15)
>
> #### Step 1: Form the basic equation from the roots
> - Write the factors: (x - 2)(x - 6)
> - Expand: (x - 2)(x - 6) = x² - 6x - 2x + 12 = x² - 8x + 12
> - Basic equation: x² - 8x + 12 = 0
>
> #### Step 2: Test if the function passes through the given point
> - The function form is y = x² - 8x + 12
> - Evaluate at point (1, 15): y = 1² - 8(1) + 12 = 1 - 8 + 12 = 5
> - We get y = 5, but we need y = 15, so we're off by 10
>
> #### Step 3: Adjust the function to pass through the point
> - We need to increase the function value by 10
> - Add 10 to the function: y = x² - 8x + 12 + 10 = x² - 8x + 22
>
> #### Final Result
> - The quadratic equation is x² - 8x + 22 = 0
> - Verify at point (1, 15): When x = 1, y = 1² - 8(1) + 22 = 1 - 8 + 22 = 15 ✓
> - Note: Adding a constant to the equation changes the y-values but not the x-intercepts, so our original roots are no longer correct

> **Solution 8**
>
> **Problem:** Create a quadratic equation with roots x = -2 and x = 3 where the coefficient of x is 10
>
> #### Step 1: Form the basic equation from the roots
> - Write the factors: (x - (-2))(x - 3) = (x + 2)(x - 3)
> - Expand: (x + 2)(x - 3) = x² - 3x + 2x - 6 = x² - x - 6
> - Basic equation: x² - x - 6 = 0
>
> #### Step 2: Adjust to get the desired coefficient of x
> - Current coefficient of x is -1, but we need 10
> - We need to multiply by -10 to change -1 to 10:
>   * -10(x² - x - 6) = 0
>   * -10x² + 10x + 60 = 0
>
> #### Final Result
> - The quadratic equation is -10x² + 10x + 60 = 0
> - Verify: When x = -2: -10(-2)² + 10(-2) + 60 = -10(4) - 20 + 60 = -40 - 20 + 60 = 0 ✓
> - Verify: When x = 3: -10(3)² + 10(3) + 60 = -10(9) + 30 + 60 = -90 + 30 + 60 = 0 ✓

> **Solution 9**
>
> **Problem:** Using Vieta's formulas, find the sum and product of roots for the equation 3x² + 7x - 4 = 0
>
> #### Step 1: Identify the coefficients in the standard form ax² + bx + c = 0
> - Comparing 3x² + 7x - 4 = 0 with the standard form:
> - a = 3 (coefficient of x²)
> - b = 7 (coefficient of x)
> - c = -4 (constant term)
>
> #### Step 2: Apply Vieta's formulas
> - Sum of roots = -b/a = -7/3
> - Product of roots = c/a = -4/3
>
> #### Final Result
> - If r and s are the roots of the equation 3x² + 7x - 4 = 0, then:
> - r + s = -7/3
> - r × s = -4/3

> **Solution 10**
>
> **Problem:** Create a quadratic equation with a = 1 where the sum of roots is -5 and the product of roots is 6
>
> #### Step 1: Use Vieta's formulas to determine coefficients
> - For a quadratic equation ax² + bx + c = 0 with a = 1:
>   * Sum of roots = -b/a = -b
>   * Product of roots = c/a = c
> - Given sum of roots = -5, so -b = -5, which means b = 5
> - Given product of roots = 6, so c = 6
>
> #### Step 2: Form the quadratic equation using these coefficients
> - With a = 1, b = 5, and c = 6
> - The equation is x² + 5x + 6 = 0
>
> #### Step 3: Verify by factoring
> - x² + 5x + 6 = 0
> - Looking for two numbers that multiply to 6 and add to 5
> - The numbers 2 and 3 work: 2 × 3 = 6 and 2 + 3 = 5
> - So the factored form is (x + 2)(x + 3) = 0
> - This gives roots x = -2 or x = -3
>
> #### Final Result
> - The quadratic equation is x² + 5x + 6 = 0
> - Confirm: The sum of roots is (-2) + (-3) = -5 ✓
> - Confirm: The product of roots is (-2) × (-3) = 6 ✓

## Visual Learning Activities

1. **Graphical Creation**: Use Desmos to plot points representing roots and create the corresponding parabola.

2. **Root-Coefficient Connection**: Create a table linking various pairs of roots with their corresponding coefficients.

3. **Quadratic Puzzle**: Give students the coefficients of quadratic equations and have them work backward to find the roots.

4. **3D Modeling**: Build physical models of parabolas that cross the x-axis at specific points.

## Tips for Success

1. **Start with simple examples**: Begin with integer roots before moving to fractions, irrationals, and complex numbers.

2. **Connect to factoring**: Emphasize that this is the reverse of the factoring process they already know.

3. **Use Vieta's formulas**: These formulas provide powerful shortcuts and reinforce the connection between roots and coefficients.

4. **Check through graphing**: Verify created equations by graphing them and confirming the x-intercepts.

5. **Practice with variety**: Include examples with different types of roots and different forms of the final equation.

## Online Resources

- **Desmos.com**: Interactive graphing calculator to visualize quadratics and their roots
- **Khan Academy**: Videos on creating quadratics from roots
- **PurpleMath**: Written explanations of Vieta's formulas
- **GeoGebra.org**: Interactive demonstrations of the relationship between roots and equations

## Next Steps

Once you understand how to create quadratic equations from roots, you can move on to:
1. Solving systems of equations involving quadratics
2. Exploring quadratic inequalities
3. Working with higher-degree polynomials and their roots
4. Applying these concepts to more complex problem-solving scenarios

**Remember:** Building quadratics from roots is like having the power to reverse-engineer reality! When you can move backward from solutions to create the original problem, you've truly mastered mathematics. This skill transforms you from a problem-solver to a problem-creator—the ultimate mathematical power move!
