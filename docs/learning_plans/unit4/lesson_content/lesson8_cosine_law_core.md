# The Cosine Law: Parent Teaching Guide (Core Version)

## What You're Teaching

This guide helps you teach your teenager about the Cosine Law (also called the Law of Cosines), which is a fundamental relationship in trigonometry that allows us to solve non-right triangles. Together with the Sine Law, it provides a complete toolkit for solving any triangle.

## Key Concepts to Cover

### 1. Introduction to the Cosine Law

**Simple explanation:** "The Cosine Law relates the lengths of the sides of a triangle to the cosine of one of its angles. It's especially useful when we know three sides of a triangle (SSS) or two sides and the included angle (SAS)."

**Mathematical statements:**
```
a² = b² + c² - 2bc·cos(A)
b² = a² + c² - 2ac·cos(B)
c² = a² + b² - 2ab·cos(C)
```
Where:
- a, b, and c are the lengths of the sides of the triangle
- A, B, and C are the angles opposite to sides a, b, and c, respectively

**Connection to the Pythagorean Theorem:**
"Notice that if angle C is 90° (a right angle), then cos(C) = 0, and the formula becomes c² = a² + b², which is the Pythagorean Theorem. This shows that the Cosine Law is a generalization of the Pythagorean Theorem for any triangle, not just right triangles."

### 2. Derivation of the Cosine Law

**Simple explanation:** "We can derive the Cosine Law using coordinate geometry or by applying the Pythagorean Theorem with some clever additions."

**Visual aid description:**
"Draw a triangle ABC with sides a, b, and c opposite to angles A, B, and C respectively. Draw a height h from vertex C to side c, creating two right triangles. Using the Pythagorean Theorem in these right triangles and combining the results leads to the Cosine Law."

### 3. When to Use the Cosine Law

**Simple explanation:** "The Cosine Law is most useful in two specific scenarios: when we know all three sides (SSS), or when we know two sides and the included angle (SAS)."

**Cases where the Cosine Law is applicable:**
1. **SSS (Side-Side-Side):** All three sides are known
2. **SAS (Side-Angle-Side):** Two sides and the included angle are known

**Note:** "For AAS, ASA, or SSA cases, the Sine Law is often more appropriate, as we covered in the previous lesson."

### 4. Solving Triangles Using the Cosine Law: SSS Case

**Simple explanation:** "When we know all three sides of a triangle, we can use the Cosine Law to find any of the angles."

**Step-by-step process:**
1. Rearrange the Cosine Law to solve for the cosine of the angle:
   - cos(A) = (b² + c² - a²)/(2bc)
   - cos(B) = (a² + c² - b²)/(2ac)
   - cos(C) = (a² + b² - c²)/(2ab)
2. Use the inverse cosine function to find the angle
3. Check that the angles sum to 180°

**Example 1:**
"In triangle ABC, side a = 8 cm, side b = 12 cm, and side c = 15 cm. Find all three angles.

1. Use the Cosine Law to find angle A:
   - cos(A) = (b² + c² - a²)/(2bc) = (12² + 15² - 8²)/(2 × 12 × 15)
   - cos(A) = (144 + 225 - 64)/(360) = 305/360 ≈ 0.8472
   - A = cos⁻¹(0.8472) ≈ 32.0°

2. Use the Cosine Law to find angle B:
   - cos(B) = (a² + c² - b²)/(2ac) = (8² + 15² - 12²)/(2 × 8 × 15)
   - cos(B) = (64 + 225 - 144)/(240) = 145/240 ≈ 0.6042
   - B = cos⁻¹(0.6042) ≈ 52.8°

3. Find angle C using the angle sum property:
   - C = 180° - A - B = 180° - 32.0° - 52.8° = 95.2°

4. Verify using the Cosine Law:
   - cos(C) = (a² + b² - c²)/(2ab) = (64 + 144 - 225)/(2 × 8 × 12)
   - cos(C) = -17/192 ≈ -0.0885
   - C = cos⁻¹(-0.0885) ≈ 95.1° (slight difference due to rounding)"

### 5. Solving Triangles Using the Cosine Law: SAS Case

**Simple explanation:** "When we know two sides and the included angle, we can use the Cosine Law to find the third side, then use either the Sine Law or the Cosine Law to find the remaining angles."

**Step-by-step process:**
1. Use the Cosine Law to find the unknown side:
   - If sides b, c, and angle A are known: a² = b² + c² - 2bc·cos(A)
   - If sides a, c, and angle B are known: b² = a² + c² - 2ac·cos(B)
   - If sides a, b, and angle C are known: c² = a² + b² - 2ab·cos(C)
2. Once all three sides are known, use the SSS case to find the remaining angles

**Example 2:**
"In triangle ABC, side b = 10 cm, side c = 14 cm, and angle A = 45°. Find side a and angles B and C.

1. Use the Cosine Law to find side a:
   - a² = b² + c² - 2bc·cos(A) = 10² + 14² - 2 × 10 × 14 × cos(45°)
   - a² = 100 + 196 - 280 × 0.7071 ≈ 100 + 196 - 198 = 98
   - a = √98 ≈ 9.9 cm

2. Now that we know all three sides, use the Cosine Law to find angle B:
   - cos(B) = (a² + c² - b²)/(2ac) = (98 + 196 - 100)/(2 × 9.9 × 14)
   - cos(B) = 194/(277.2) ≈ 0.7 
   - B = cos⁻¹(0.7) ≈ 45.6°

3. Find angle C using the angle sum property:
   - C = 180° - A - B = 180° - 45° - 45.6° = 89.4°"

### 6. Using the Cosine Law to Find Area

**Simple explanation:** "The Cosine Law can also be used to find the area of a triangle when we know two sides and the included angle."

**Area formula:**
```
Area = (1/2) × a × b × sin(C)
```
Where a and b are two sides of the triangle, and C is the included angle.

**Example 3:**
"Find the area of a triangle with sides a = 8 cm, b = 12 cm, and included angle C = 60°.

Area = (1/2) × a × b × sin(C) = (1/2) × 8 × 12 × sin(60°) = 48 × 0.866 ≈ 41.57 cm²"

### 7. Applications of the Cosine Law

**Simple explanation:** "The Cosine Law has many practical applications in fields like navigation, surveying, physics, and engineering."

**Common applications:**
1. **Navigation:** Finding distances and bearings
2. **Surveying:** Measuring inaccessible distances
3. **Physics:** Analyzing forces and vectors
4. **Engineering:** Designing structures and analyzing stresses
5. **Astronomy:** Calculating distances between celestial bodies

**Example 4:**
"Two ships leave a harbor at the same time. Ship A travels at 20 knots on a bearing of 40°, while Ship B travels at 15 knots on a bearing of 130°. How far apart are the ships after 3 hours?

1. After 3 hours:
   - Ship A has traveled 3 × 20 = 60 nautical miles
   - Ship B has traveled 3 × 15 = 45 nautical miles
   - The angle between their paths is 130° - 40° = 90°

2. Use the Cosine Law to find the distance d between them:
   - d² = 60² + 45² - 2 × 60 × 45 × cos(90°)
   - d² = 3600 + 2025 - 2 × 60 × 45 × 0
   - d² = 5625
   - d = 75 nautical miles

3. The ships are 75 nautical miles apart after 3 hours."

### 8. Choosing Between the Sine Law and Cosine Law

**Simple explanation:** "Knowing when to use the Sine Law versus the Cosine Law is important for efficiently solving triangle problems."

**Decision guide:**
1. **Use the Sine Law when:**
   - You know two angles and one side (AAS or ASA)
   - You know two sides and the angle opposite to one of them (SSA)

2. **Use the Cosine Law when:**
   - You know all three sides (SSS)
   - You know two sides and the included angle (SAS)

**Example 5:**
"For each scenario, determine whether to use the Sine Law or the Cosine Law:

a) A triangle has sides of lengths 5 cm, 7 cm, and 9 cm.
   - All three sides are known (SSS), so use the Cosine Law.

b) A triangle has an angle of 35°, another angle of 65°, and a side of length 10 cm opposite to the 35° angle.
   - Two angles and one side are known (AAS), so use the Sine Law.

c) A triangle has two sides of lengths 8 cm and 12 cm, with an included angle of 50°.
   - Two sides and the included angle are known (SAS), so use the Cosine Law.

d) A triangle has two sides of lengths 6 cm and 9 cm, with an angle of 40° opposite to the 6 cm side.
   - Two sides and the angle opposite to one of them are known (SSA), so use the Sine Law."

## Common Misconceptions and How to Address Them

1. **"The Cosine Law is just the Pythagorean Theorem"**
   - Clarification: "The Cosine Law is a generalization of the Pythagorean Theorem that works for any triangle, not just right triangles. It reduces to the Pythagorean Theorem when one angle is 90°."

2. **"The Cosine Law can solve any triangle"**
   - Clarification: "While the Cosine Law is versatile, it's most efficient for SSS and SAS cases. For other cases, the Sine Law might be more appropriate."

3. **"The Cosine Law always gives a unique solution"**
   - Clarification: "Unlike the ambiguous case in the Sine Law, the Cosine Law typically gives a unique solution for the scenarios where it's most commonly used."

4. **"The Cosine Law is too complicated to remember"**
   - Clarification: "Think of it as an extension of the Pythagorean Theorem: c² = a² + b² - 2ab·cos(C). The last term is the adjustment for non-right triangles."

5. **"The Cosine Law is just a theoretical concept with no practical use"**
   - Clarification: "The Cosine Law has numerous practical applications in navigation, surveying, physics, and engineering."

## Check for Understanding

After covering the material, ask these questions:
1. "When is the Cosine Law most useful for solving triangles?"
2. "How does the Cosine Law relate to the Pythagorean Theorem?"
3. "What information do you need to apply the Cosine Law?"
4. "How do you decide whether to use the Sine Law or the Cosine Law?"
5. "Can you think of a real-world problem that could be solved using the Cosine Law?"

## Practice Problems

1. In triangle ABC, side a = 12 cm, side b = 15 cm, and side c = 20 cm. Find all three angles.

2. In triangle PQR, side p = 8 cm, side r = 10 cm, and angle Q = 60°. Find side q and angles P and R.

3. Two hikers start at the same point. One hikes 5 km on a bearing of 30°, while the other hikes 7 km on a bearing of 120°. How far apart are they?

4. Find the area of a triangle with sides 9 cm, 12 cm, and 15 cm.

5. A parallelogram has adjacent sides of lengths 8 cm and 12 cm, with an included angle of 65°. Find the lengths of the diagonals of the parallelogram.

**Solutions:**

1. In triangle ABC with side a = 12 cm, side b = 15 cm, and side c = 20 cm:
   - Use the Cosine Law to find angle A:
     - cos(A) = (b² + c² - a²)/(2bc) = (15² + 20² - 12²)/(2 × 15 × 20)
     - cos(A) = (225 + 400 - 144)/(600) = 481/600 ≈ 0.8017
     - A = cos⁻¹(0.8017) ≈ 36.7°
   - Use the Cosine Law to find angle B:
     - cos(B) = (a² + c² - b²)/(2ac) = (12² + 20² - 15²)/(2 × 12 × 20)
     - cos(B) = (144 + 400 - 225)/(480) = 319/480 ≈ 0.6646
     - B = cos⁻¹(0.6646) ≈ 48.3°
   - Find angle C using the angle sum property:
     - C = 180° - A - B = 180° - 36.7° - 48.3° = 95.0°

2. In triangle PQR with side p = 8 cm, side r = 10 cm, and angle Q = 60°:
   - Use the Cosine Law to find side q:
     - q² = p² + r² - 2pr·cos(Q) = 8² + 10² - 2 × 8 × 10 × cos(60°)
     - q² = 64 + 100 - 160 × 0.5 = 164 - 80 = 84
     - q = √84 ≈ 9.17 cm
   - Use the Cosine Law to find angle P:
     - cos(P) = (q² + r² - p²)/(2qr) = (84 + 100 - 64)/(2 × 9.17 × 10)
     - cos(P) = 120/(183.4) ≈ 0.6543
     - P = cos⁻¹(0.6543) ≈ 49.1°
   - Find angle R using the angle sum property:
     - R = 180° - P - Q = 180° - 49.1° - 60° = 70.9°

3. For the hikers problem:
   - Let's call the starting point O, the first hiker's position A, and the second hiker's position B
   - In triangle OAB, we know:
     - Side OA = 5 km
     - Side OB = 7 km
     - Angle AOB = 120° - 30° = 90°
   - Use the Cosine Law to find side AB:
     - AB² = OA² + OB² - 2 × OA × OB × cos(AOB)
     - AB² = 5² + 7² - 2 × 5 × 7 × cos(90°)
     - AB² = 25 + 49 - 70 × 0 = 74
     - AB = √74 ≈ 8.6 km
   - The hikers are approximately 8.6 km apart

4. For the triangle with sides 9 cm, 12 cm, and 15 cm:
   - First, find one of the angles using the Cosine Law:
     - Let's call the sides a = 9 cm, b = 12 cm, and c = 15 cm
     - cos(C) = (a² + b² - c²)/(2ab) = (81 + 144 - 225)/(2 × 9 × 12)
     - cos(C) = 0/216 = 0
     - C = cos⁻¹(0) = 90°
   - This is a right triangle (with a right angle at C)
   - Area = (1/2) × a × b = (1/2) × 9 × 12 = 54 cm²

5. For the parallelogram problem:
   - Let's call the adjacent sides a = 8 cm and b = 12 cm, with included angle C = 65°
   - For a parallelogram, the diagonals d₁ and d₂ can be found using:
     - d₁² = a² + b² + 2ab·cos(C)
     - d₂² = a² + b² - 2ab·cos(C)
   - Calculate d₁:
     - d₁² = 8² + 12² + 2 × 8 × 12 × cos(65°)
     - d₁² = 64 + 144 + 192 × 0.4226 = 208 + 81.14 = 289.14
     - d₁ ≈ 17.0 cm
   - Calculate d₂:
     - d₂² = 8² + 12² - 2 × 8 × 12 × cos(65°)
     - d₂² = 64 + 144 - 81.14 = 126.86
     - d₂ ≈ 11.3 cm
   - The diagonals of the parallelogram are approximately 17.0 cm and 11.3 cm

## Visual Learning Activities

1. **Triangle construction:** Use a protractor, ruler, and compass to construct triangles with given measurements and verify the Cosine Law.

2. **Physical model:** Create a physical model with adjustable sides and angles to demonstrate how the Cosine Law works.

3. **Vector addition:** Use vectors to demonstrate the Cosine Law in the context of force problems.

4. **Interactive applet:** Use GeoGebra or a similar program to create an interactive applet that demonstrates the Cosine Law and allows students to manipulate triangle dimensions.

5. **Real-world measurement:** Set up a field exercise where students use the Cosine Law to determine distances that cannot be measured directly.

## Tips for Teaching Success

1. **Start with visual understanding** before introducing the formula.

2. **Connect to the Pythagorean Theorem** to show how the Cosine Law is a generalization.

3. **Use real-world examples** that teens can relate to, like navigation or measuring distances.

4. **Practice systematically** with different triangle configurations (SSS, SAS).

5. **Compare and contrast with the Sine Law** to help students understand when to use each.

6. **Use technology appropriately** to visualize and verify solutions.

## Online Resources

- **GeoGebra:** Interactive applets demonstrating the Cosine Law
- **Khan Academy:** Videos and practice problems on the Law of Cosines
- **Desmos:** Graphing calculator with trigonometric functions
- **PhET Simulations:** Interactive simulations for trigonometry concepts
- **Purple Math:** Clear explanations of the Cosine Law with examples

## Next Steps

Once your teen understands the Cosine Law, they'll be ready to:
1. Combine the Sine Law and Cosine Law to solve more complex problems
2. Apply both laws to solve real-world problems in two dimensions
3. Extend to three-dimensional problems involving non-right triangles
4. Study more advanced applications in physics, engineering, and navigation
5. Connect trigonometry to vectors and other areas of mathematics

Remember: The Cosine Law, together with the Sine Law, provides a complete toolkit for solving any triangle, making it an essential concept in trigonometry and its applications.
