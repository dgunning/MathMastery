# Determining a Quadratic Equation from its Roots: Parent Teaching Guide

## What You're Teaching

This guide provides everything you need to know how to create a quadratic equation when given its roots (solutions). This is essentially the reverse process of solving quadratics that we've covered in previous lessons.

## Key Concepts to Cover

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

**Example 1: Integer roots**
```
Create a quadratic equation with roots x = 3 and x = -5

Step 1: Write the factors
        (x - 3)(x - (-5)) = (x - 3)(x + 5)
        
Step 2: Expand using FOIL
        (x - 3)(x + 5)
        = x² + 5x - 3x - 15
        = x² + 2x - 15
        
Step 3: The equation is x² + 2x - 15 = 0
```

**Example 2: Fractional roots**
```
Create a quadratic equation with roots x = 2/3 and x = -1/4

Step 1: Write the factors
        (x - 2/3)(x - (-1/4)) = (x - 2/3)(x + 1/4)
        
Step 2: Expand using FOIL
        (x - 2/3)(x + 1/4)
        = x² + (1/4)x - (2/3)x - (2/3)(1/4)
        = x² + (1/4 - 2/3)x - (2/12)
        = x² - (5/12)x - (1/6)
        
Step 3: To clear fractions, multiply by 12
        12(x² - (5/12)x - (1/6)) = 0
        12x² - 5x - 2 = 0
```

**Example 3: Irrational roots**
```
Create a quadratic equation with roots x = √2 and x = -√2

Step 1: Write the factors
        (x - √2)(x - (-√2)) = (x - √2)(x + √2)
        
Step 2: Recognize the difference of squares pattern
        (x - √2)(x + √2) = x² - (√2)²
        = x² - 2
        
Step 3: The equation is x² - 2 = 0
```

**Key insight:** "Notice that when the roots are a and -a (opposites), you get a quadratic with no x-term."

### 3. Creating Equations with Complex or Repeated Roots

**Simple explanation:** "The same process works even if the roots are complex numbers or repeated roots."

**Example 1: Complex roots**
```
Create a quadratic equation with roots x = 2 + 3i and x = 2 - 3i

Step 1: Write the factors
        (x - (2 + 3i))(x - (2 - 3i))
        
Step 2: Expand
        (x - 2 - 3i)(x - 2 + 3i)
        = (x - 2)² - (3i)²
        = (x - 2)² - 9(-1)
        = (x - 2)² + 9
        = x² - 4x + 4 + 9
        = x² - 4x + 13
        
Step 3: The equation is x² - 4x + 13 = 0
```

**Example 2: Repeated root**
```
Create a quadratic equation with the repeated root x = 4

Step 1: Write the factors
        (x - 4)(x - 4) = (x - 4)²
        
Step 2: Expand
        (x - 4)² = x² - 8x + 16
        
Step 3: The equation is x² - 8x + 16 = 0
```

**Key insight:** "When complex roots appear in a quadratic equation, they always come in conjugate pairs. The resulting equation will have all real coefficients."

### 4. The Leading Coefficient

**Simple explanation:** "So far, we've been creating quadratic equations with a leading coefficient of 1. But we can create any equivalent quadratic equation by multiplying by a constant."

**Step-by-step process:**
1. Create the quadratic equation with a = 1
2. Multiply the entire equation by the desired value of a

**Example:**
```
Create a quadratic equation with roots x = 2 and x = 5, and a leading coefficient of 3

Step 1: Create the equation with a = 1
        (x - 2)(x - 5) = 0
        x² - 7x + 10 = 0
        
Step 2: Multiply by the desired leading coefficient
        3(x² - 7x + 10) = 0
        3x² - 21x + 30 = 0
```

**Key insight:** "Multiplying the entire equation by a constant doesn't change the solutions. Any equation in the family Ax² - 7Ax + 10A = 0 will have the same roots x = 2 and x = 5."

### 5. Working Backward - Finding the Form Given Specific Conditions

**Simple explanation:** "Sometimes we need to create a quadratic equation that satisfies specific conditions beyond just having certain roots."

**Example 1: With a specific value**
```
Find a quadratic equation with roots x = -3 and x = 4 that passes through the point (2, 10)

Step 1: Form the basic equation with a = 1
        (x + 3)(x - 4) = 0
        x² - x - 12 = 0
        
Step 2: This gives y = x² - x - 12, but we need y = 10 when x = 2
        Evaluate: 2² - 2 - 12 = 4 - 2 - 12 = -10
        
Step 3: We're off by 20 (need 10, got -10), so multiply by -1 and add 20
        y = -x² + x + 12 + 20
        y = -x² + x + 32
        
Step 4: The equation is -x² + x + 32 = 0 or x² - x - 32 = 0
```

**Example 2: With a specific coefficient**
```
Find a quadratic equation with roots x = 1/2 and x = -3 where the coefficient of x is 5

Step 1: Form the basic equation
        (x - 1/2)(x + 3) = 0
        x² + 3x - x/2 - 3/2 = 0
        x² + 5x/2 - 3/2 = 0
        
Step 2: The coefficient of x is 5/2, but we need 5
        Multiply the equation by 2
        2(x² + 5x/2 - 3/2) = 0
        2x² + 5x - 3 = 0
        
Step 3: The equation is 2x² + 5x - 3 = 0
```

### 6. The Vieta Formulas

**Simple explanation:** "Vieta's formulas give us the relationships between the roots of a quadratic equation and its coefficients."

**Key formulas:** "For a quadratic equation ax² + bx + c = 0 with roots r and s:
- r + s = -b/a (sum of roots)
- r × s = c/a (product of roots)"

**Example: Using Vieta's formulas**
```
For the equation 2x² - 7x + 3 = 0:
a = 2, b = -7, c = 3

Sum of roots = -b/a = -(-7)/2 = 7/2
Product of roots = c/a = 3/2

If r and s are the roots, then:
r + s = 7/2
r × s = 3/2
```

**Application: Creating an equation from the sum and product**
```
Create a quadratic equation with a = 1 where the sum of roots is 6 and the product of roots is 8

Step 1: Using Vieta's formulas
        r + s = -b/1 = 6, so b = -6
        r × s = c/1 = 8, so c = 8
        
Step 2: The equation is x² - 6x + 8 = 0

Step 3: Verify by factoring
        x² - 6x + 8 = 0
        (x - 2)(x - 4) = 0
        x = 2 or x = 4
        
Step 4: Check: 2 + 4 = 6 and 2 × 4 = 8 ✓
```

### 7. Applications and Word Problems

**Simple explanation:** "Creating quadratic equations from roots is useful in many real-world scenarios."

**Example 1: Area problem**
```
A rectangular garden has a length 3 meters more than its width. If the area is 70 square meters, find a quadratic equation whose roots give the possible dimensions.

Step 1: Let w = width, then w + 3 = length
Step 2: Area = length × width = 70
        w(w + 3) = 70
        w² + 3w - 70 = 0
        
The roots of this equation will give the width and the negative of the "length minus 3"
```

**Example 2: Number problem**
```
The product of two consecutive integers is 42. Find a quadratic equation whose roots are these two integers.

Step 1: Let x and x+1 be the consecutive integers
Step 2: Their product is 42
        x(x+1) = 42
        x² + x - 42 = 0
        
The roots of this equation will be the two consecutive integers
```

**Example 3: Projectile motion**
```
A ball is thrown upward from a height of 6 feet with an initial velocity. It hits the ground after 3 seconds. Find the quadratic equation that models the height of the ball.

Step 1: The height is 0 at t = 3 (hits the ground)
Step 2: The height is 0 at t = 0 (starts from ground)
Step 3: Form the equation h = a(t - 0)(t - 3)
Step 4: We know h = 6 when t = 0
        6 = a(0)(0 - 3) = -3a
        a = -2
Step 5: The height equation is h = -2t(t - 3) = -2t² + 6t
```

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
   - x = 6 and x = -2
   - x = 1/3 and x = 3/4
   - x = √5 and x = -√5
   - x = 4 (repeated root)

2. Create a quadratic equation with the given conditions:
   - Roots x = 2 and x = -3, with a leading coefficient of 5
   - Roots x = 1/2 and x = 2, passing through the point (1, 3)
   - Sum of roots = 8, product of roots = 15, with a = 1
   - Roots x = 3 + i and x = 3 - i

3. Find the quadratic equation with integer coefficients and a = 1 that has the following roots:
   - x = 2 + √3 and x = 2 - √3
   - x = -1/2 and x = 3/4
   - x = √2 and x = -√2

4. The product of two numbers is 24. If one number is 3 more than the other, find a quadratic equation whose roots are these numbers.

5. A rectangular frame has a perimeter of 26 inches. Find a quadratic equation whose roots represent the possible dimensions of the frame.

**Solutions:**
1. Creating equations:
   - (x - 6)(x + 2) = 0: x² - 4x - 12 = 0
   - (x - 1/3)(x - 3/4) = 0: x² - (1/3 + 3/4)x + (1/3)(3/4) = 0: x² - (13/12)x + 1/4 = 0, or 12x² - 13x + 3 = 0
   - (x - √5)(x + √5) = 0: x² - 5 = 0
   - (x - 4)² = 0: x² - 8x + 16 = 0

2. Specific conditions:
   - 5(x - 2)(x + 3) = 0: 5x² + 5x - 30 = 0
   - For roots 1/2 and 2, basic equation is (x - 1/2)(x - 2) = 0: x² - 5x/2 + 1 = 0
     Evaluate at (1, 3): 1² - 5(1)/2 + 1 = 1 - 2.5 + 1 = -0.5
     Need y = 3, so add 3.5: x² - 5x/2 + 1 + 3.5 = 0: x² - 5x/2 + 4.5 = 0, or 2x² - 5x + 9 = 0
   - Using Vieta: x² - 8x + 15 = 0
   - (x - (3 + i))(x - (3 - i)) = 0: (x - 3 - i)(x - 3 + i) = 0: (x - 3)² - i² = 0: x² - 6x + 9 + 1 = 0: x² - 6x + 10 = 0

3. Integer coefficients:
   - (x - (2 + √3))(x - (2 - √3)) = 0: (x - 2)² - (√3)² = 0: x² - 4x + 4 - 3 = 0: x² - 4x + 1 = 0
   - (x + 1/2)(x - 3/4) = 0: x² - x/4 - 3/8 = 0, multiply by 8: 8x² - 2x - 3 = 0
   - (x - √2)(x + √2) = 0: x² - 2 = 0

4. Number problem:
   - Let the numbers be x and x + 3
   - x(x + 3) = 24
   - x² + 3x - 24 = 0

5. Rectangle problem:
   - Let length = x, width = y
   - Perimeter: 2x + 2y = 26
   - y = (26 - 2x)/2 = 13 - x
   - Area: A = xy = x(13 - x) = 13x - x²
   - The roots of x² - 13x + A = 0 give the dimensions

## Visual Learning Activities

1. **Graphical Creation**: Use Desmos to plot points representing roots and create the corresponding parabola.

2. **Root-Coefficient Connection**: Create a table linking various pairs of roots with their corresponding coefficients.

3. **Quadratic Puzzle**: Give students the coefficients of quadratic equations and have them work backward to find the roots.

4. **3D Modeling**: Build physical models of parabolas that cross the x-axis at specific points.

## Tips for Teaching Success

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

**Remember: Creating quadratic equations from roots reinforces the connection between factors, roots, and the expanded form of an equation. This reciprocal relationship is a powerful mathematical concept that appears throughout algebra and calculus.
