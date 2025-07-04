# The Sine Law: Parent Teaching Guide (Core Version)

## What You're Teaching

This guide helps you teach your teenager about the Sine Law (also called the Law of Sines), which is a fundamental relationship in trigonometry that allows us to solve non-right triangles. This extends trigonometry beyond right triangles and opens up many practical applications.

## Key Concepts to Cover

### 1. Introduction to the Sine Law

**Simple explanation:** "The Sine Law is a relationship that works for any triangle, not just right triangles. It tells us that the ratio of the length of any side to the sine of the angle opposite to it is the same for all three sides of a triangle."

**Mathematical statement:**
```
a/sin(A) = b/sin(B) = c/sin(C)
```
Where:
- a, b, and c are the lengths of the sides of the triangle
- A, B, and C are the angles opposite to sides a, b, and c, respectively

**Alternative forms:**
```
sin(A)/a = sin(B)/b = sin(C)/c
```
Or:
```
a : b : c = sin(A) : sin(B) : sin(C)
```

### 2. Derivation of the Sine Law

**Simple explanation:** "We can derive the Sine Law using the formula for the area of a triangle and the fact that the area can be calculated in multiple ways."

**Visual aid description:**
"Draw a triangle ABC with sides a, b, and c opposite to angles A, B, and C respectively. Draw the height h from vertex C to side c. Then:
- Area = (1/2) × c × h
- Also, h = a × sin(B)
- So Area = (1/2) × c × a × sin(B)
- Similarly, Area = (1/2) × a × b × sin(C)
- And Area = (1/2) × b × c × sin(A)
- Setting these equal and simplifying gives us the Sine Law."

### 3. When to Use the Sine Law

**Simple explanation:** "The Sine Law is most useful in two specific scenarios: when we know two angles and one side (AAS or ASA), or when we know two sides and the angle opposite to one of them (SSA)."

**Cases where the Sine Law is applicable:**
1. **AAS (Angle-Angle-Side):** Two angles and the side opposite to one of them
2. **ASA (Angle-Side-Angle):** Two angles and the side between them
3. **SSA (Side-Side-Angle):** Two sides and the angle opposite to one of them (the ambiguous case)

**Note:** "For SSS (three sides) or SAS (two sides and the included angle), the Cosine Law is more appropriate, which we'll cover in the next lesson."

### 4. Solving Triangles Using the Sine Law: AAS and ASA Cases

**Simple explanation:** "When we know two angles and one side, we can find the third angle using the fact that angles in a triangle sum to 180°. Then we can use the Sine Law to find the other sides."

**Step-by-step process:**
1. Find the third angle using the angle sum property: A + B + C = 180°
2. Use the Sine Law to find the unknown sides:
   - If side a is known: b = a × sin(B)/sin(A) and c = a × sin(C)/sin(A)
   - If side b is known: a = b × sin(A)/sin(B) and c = b × sin(C)/sin(B)
   - If side c is known: a = c × sin(A)/sin(C) and b = c × sin(B)/sin(C)

**Example 1:**
"In triangle ABC, angle A = 42°, angle B = 57°, and side a = 10 cm. Find the remaining side lengths.

1. First, find angle C: C = 180° - A - B = 180° - 42° - 57° = 81°
2. Use the Sine Law to find sides b and c:
   - b = a × sin(B)/sin(A) = 10 × sin(57°)/sin(42°) ≈ 10 × 0.8387/0.6691 ≈ 12.53 cm
   - c = a × sin(C)/sin(A) = 10 × sin(81°)/sin(42°) ≈ 10 × 0.9877/0.6691 ≈ 14.76 cm"

### 5. The Ambiguous Case (SSA)

**Simple explanation:** "When we know two sides and the angle opposite to one of them (SSA), we might have one solution, two solutions, or no solution. This is called the ambiguous case."

**Possible scenarios:**
1. **No solution:** When the given side opposite the angle is too short to reach the other side
2. **One solution:** When the given side opposite the angle is just long enough to create a right triangle
3. **Two solutions:** When the given side opposite the angle can create two different triangles

**Visual aid description:**
"Draw a diagram showing how, when given side a, side b, and angle A, there can be:
- No triangle if a < b × sin(A)
- One right triangle if a = b × sin(A)
- Two triangles if b × sin(A) < a < b
- One triangle if a ≥ b"

### 6. Solving the Ambiguous Case

**Simple explanation:** "To solve the ambiguous case, we first need to determine how many solutions exist, then use the Sine Law carefully."

**Step-by-step process:**
1. Given sides a and b, and angle A, calculate the value h = b × sin(A)
2. Compare a with h and b:
   - If a < h: No solution
   - If a = h: One solution (a right triangle)
   - If h < a < b: Two solutions
   - If a ≥ b: One solution
3. For each valid solution:
   - Calculate angle B using the Sine Law: sin(B) = b × sin(A)/a
   - Calculate angle C = 180° - A - B
   - Calculate side c using the Sine Law: c = a × sin(C)/sin(A)

**Example 2:**
"In triangle ABC, side a = 8 cm, side b = 12 cm, and angle A = 30°. Find all possible values for angles B and C, and side c.

1. Calculate h = b × sin(A) = 12 × sin(30°) = 12 × 0.5 = 6 cm
2. Since a = 8 cm and h = 6 cm, we have h < a < b, so there are two possible triangles
3. For the first solution:
   - sin(B) = b × sin(A)/a = 12 × sin(30°)/8 = 12 × 0.5/8 = 0.75
   - B = sin⁻¹(0.75) ≈ 48.6°
   - C = 180° - A - B = 180° - 30° - 48.6° = 101.4°
   - c = a × sin(C)/sin(A) = 8 × sin(101.4°)/sin(30°) ≈ 8 × 0.98/0.5 ≈ 15.7 cm
4. For the second solution:
   - B' = 180° - B = 180° - 48.6° = 131.4°
   - C' = 180° - A - B' = 180° - 30° - 131.4° = 18.6°
   - c' = a × sin(C')/sin(A) = 8 × sin(18.6°)/sin(30°) ≈ 8 × 0.32/0.5 ≈ 5.1 cm"

### 7. Applications of the Sine Law

**Simple explanation:** "The Sine Law has many practical applications in fields like navigation, surveying, physics, and engineering."

**Common applications:**
1. **Navigation:** Finding distances and bearings
2. **Surveying:** Measuring inaccessible distances
3. **Physics:** Analyzing forces and vectors
4. **Astronomy:** Calculating distances between celestial bodies
5. **Engineering:** Designing structures and analyzing stresses

**Example 3:**
"A surveyor wants to find the distance across a lake. From point A, the surveyor walks 250 meters to point B. The angle between the line of sight to point C (across the lake) and the path AB is 62° at point A and 73° at point B. Find the distance from A to C.

1. In triangle ABC, we know:
   - Side AB = 250 m
   - Angle at A = 62°
   - Angle at B = 73°
2. Find angle C: C = 180° - A - B = 180° - 62° - 73° = 45°
3. Use the Sine Law to find AC:
   - AC = AB × sin(B)/sin(C) = 250 × sin(73°)/sin(45°) ≈ 250 × 0.9563/0.7071 ≈ 338 m
4. The distance across the lake is approximately 338 meters."

### 8. The Sine Law and the Circumscribed Circle

**Simple explanation:** "There's an interesting connection between the Sine Law and the circumscribed circle of a triangle. The common value of a/sin(A) = b/sin(B) = c/sin(C) is actually equal to the diameter of the circle that passes through all three vertices of the triangle."

**Mathematical relationship:**
```
a/sin(A) = b/sin(B) = c/sin(C) = 2R
```
Where R is the radius of the circumscribed circle.

**Visual aid description:**
"Draw a triangle ABC with its circumscribed circle. Show that when an angle is inscribed in a circle, it subtends an arc whose measure is twice the angle. This leads to the relationship between the Sine Law and the diameter of the circumscribed circle."

## Common Misconceptions and How to Address Them

1. **"The Sine Law only works for acute triangles"**
   - Clarification: "The Sine Law works for any triangle—acute, right, or obtuse."

2. **"The Sine Law always gives a unique solution"**
   - Clarification: "In the SSA case, there can be no solution, one solution, or two solutions."

3. **"The Sine Law can solve any triangle"**
   - Clarification: "The Sine Law is most effective for AAS, ASA, and SSA cases. For SSS and SAS cases, the Cosine Law is more appropriate."

4. **"The ambiguous case is too complicated to understand"**
   - Clarification: "The ambiguous case can be visualized geometrically: if you fix one side and an angle, the other side can sometimes form two different triangles."

5. **"The Sine Law is just a theoretical concept with no practical use"**
   - Clarification: "The Sine Law has numerous practical applications in navigation, surveying, physics, and engineering."

## Check for Understanding

After covering the material, ask these questions:
1. "When is the Sine Law most useful for solving triangles?"
2. "What is the ambiguous case, and when does it occur?"
3. "How many solutions are possible when using the Sine Law with SSA?"
4. "How is the Sine Law related to the circumscribed circle of a triangle?"
5. "Can you think of a real-world problem that could be solved using the Sine Law?"

## Practice Problems

1. In triangle ABC, angle A = 35°, angle B = 65°, and side c = 15 cm. Find sides a and b.

2. In triangle PQR, angle P = 42°, side p = 8 cm, and side q = 12 cm. Find all possible values for angle Q and side r.

3. Two fire spotters are located 5 km apart along an east-west line. The first spotter sights a fire at an angle of 54° east of north. The second spotter sights the same fire at an angle of 68° west of north. How far is the fire from each spotter?

4. In triangle ABC, side a = 10 cm, side b = 15 cm, and angle A = 25°. Determine whether there are 0, 1, or 2 possible triangles, and find all possible values for angle B and side c.

5. A boat sails from a harbor on a bearing of 65° for 12 km. It then changes course to a bearing of 155° and sails for another 8 km. How far is the boat from the harbor, and what is the bearing from the harbor to the boat's final position?

**Solutions:**

1. In triangle ABC with angle A = 35°, angle B = 65°, and side c = 15 cm:
   - First, find angle C: C = 180° - A - B = 180° - 35° - 65° = 80°
   - Use the Sine Law to find sides a and b:
     - a = c × sin(A)/sin(C) = 15 × sin(35°)/sin(80°) ≈ 15 × 0.5736/0.9848 ≈ 8.73 cm
     - b = c × sin(B)/sin(C) = 15 × sin(65°)/sin(80°) ≈ 15 × 0.9063/0.9848 ≈ 13.80 cm

2. In triangle PQR with angle P = 42°, side p = 8 cm, and side q = 12 cm:
   - Calculate h = q × sin(P) = 12 × sin(42°) ≈ 12 × 0.6691 ≈ 8.03 cm
   - Since p = 8 cm and h = 8.03 cm, we have p < h, so there is no solution
   - This means no triangle can be formed with the given measurements

3. For the fire spotters problem:
   - Let's call the first spotter A, the second spotter B, and the fire F
   - In triangle ABF, we know:
     - Side AB = 5 km
     - Angle A = 54° (measured from north)
     - Angle B = 68° (measured from north)
   - Find angle F: F = 180° - A - B = 180° - 54° - 68° = 58°
   - Use the Sine Law to find sides AF and BF:
     - AF = AB × sin(B)/sin(F) = 5 × sin(68°)/sin(58°) ≈ 5 × 0.9272/0.8480 ≈ 5.47 km
     - BF = AB × sin(A)/sin(F) = 5 × sin(54°)/sin(58°) ≈ 5 × 0.8090/0.8480 ≈ 4.77 km
   - The fire is approximately 5.47 km from the first spotter and 4.77 km from the second spotter

4. In triangle ABC with side a = 10 cm, side b = 15 cm, and angle A = 25°:
   - Calculate h = b × sin(A) = 15 × sin(25°) ≈ 15 × 0.4226 ≈ 6.34 cm
   - Since h < a < b (6.34 < 10 < 15), there are two possible triangles
   - For the first solution:
     - sin(B) = b × sin(A)/a = 15 × sin(25°)/10 ≈ 15 × 0.4226/10 ≈ 0.6339
     - B = sin⁻¹(0.6339) ≈ 39.4°
     - C = 180° - A - B = 180° - 25° - 39.4° = 115.6°
     - c = a × sin(C)/sin(A) = 10 × sin(115.6°)/sin(25°) ≈ 10 × 0.9021/0.4226 ≈ 21.35 cm
   - For the second solution:
     - B' = 180° - B = 180° - 39.4° = 140.6°
     - C' = 180° - A - B' = 180° - 25° - 140.6° = 14.4°
     - c' = a × sin(C')/sin(A) = 10 × sin(14.4°)/sin(25°) ≈ 10 × 0.2487/0.4226 ≈ 5.89 cm

5. For the boat navigation problem:
   - Let's call the harbor H, the turning point P, and the final position F
   - In triangle HPF, we know:
     - Side HP = 12 km
     - Side PF = 8 km
     - Angle HPF = 155° - 65° = 90° (the change in bearing)
   - Use the Law of Cosines to find HF:
     - HF² = HP² + PF² - 2 × HP × PF × cos(HPF)
     - HF² = 12² + 8² - 2 × 12 × 8 × cos(90°)
     - HF² = 144 + 64 - 2 × 12 × 8 × 0
     - HF² = 208
     - HF = √208 ≈ 14.42 km
   - Use the Law of Sines to find angle PHF:
     - sin(PHF)/PF = sin(HPF)/HF
     - sin(PHF)/8 = sin(90°)/14.42
     - sin(PHF) = 8 × sin(90°)/14.42 = 8 × 1/14.42 ≈ 0.5548
     - PHF = sin⁻¹(0.5548) ≈ 33.6°
   - The bearing from H to F is 65° + 33.6° = 98.6°, or approximately 99° (east of north)
   - The boat is approximately 14.42 km from the harbor at a bearing of 99°

## Visual Learning Activities

1. **Triangle construction:** Use a protractor, ruler, and compass to construct triangles with given measurements and verify the Sine Law.

2. **Ambiguous case demonstration:** Create a physical model with adjustable sides and angles to demonstrate the different possibilities in the SSA case.

3. **Circumscribed circle exploration:** Draw triangles, construct their circumscribed circles, and verify the relationship between the Sine Law and the diameter of the circle.

4. **Navigation simulation:** Set up a model landscape and use the Sine Law to determine distances to inaccessible points.

5. **Interactive applet:** Use GeoGebra or a similar program to create an interactive applet that demonstrates the Sine Law and allows students to manipulate triangle dimensions.

## Tips for Teaching Success

1. **Start with visual understanding** before introducing the formula.

2. **Use real-world examples** that teens can relate to, like navigation or measuring distances.

3. **Pay special attention to the ambiguous case** and use visual aids to make it clear.

4. **Practice systematically** with different triangle configurations (AAS, ASA, SSA).

5. **Connect to previous knowledge** about right triangles and show how the Sine Law extends trigonometry.

6. **Use technology appropriately** to visualize and verify solutions.

## Online Resources

- **GeoGebra:** Interactive applets demonstrating the Sine Law
- **Khan Academy:** Videos and practice problems on the Law of Sines
- **Desmos:** Graphing calculator with trigonometric functions
- **PhET Simulations:** Interactive simulations for trigonometry concepts
- **Purple Math:** Clear explanations of the Sine Law with examples

## Next Steps

Once your teen understands the Sine Law, they'll be ready to:
1. Learn the Cosine Law for solving triangles when given SSS or SAS
2. Apply both laws to solve more complex problems in two dimensions
3. Extend to three-dimensional problems involving non-right triangles
4. Study more advanced applications in physics, engineering, and navigation
5. Connect trigonometry to vectors and other areas of mathematics

Remember: The Sine Law is a powerful tool that extends trigonometry beyond right triangles and has numerous practical applications in the real world.
