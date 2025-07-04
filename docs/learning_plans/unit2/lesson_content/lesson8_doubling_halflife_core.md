# Applications - Doubling and Half-Life: Parent Teaching Guide

## What You're Teaching

This guide helps you teach your teenager about two important real-world applications of exponential functions: doubling (exponential growth) and half-life (exponential decay). These concepts appear frequently in science, finance, and many other fields.

## Key Concepts to Cover

### 1. The Basic Growth and Decay Models

**Simple explanation:** "Exponential growth and decay are modeled by functions of the form P(t) = P₀·b^t, where P₀ is the initial amount, b is the growth/decay factor, and t is time."

**Growth model (b > 1):**
- P(t) = P₀·b^t where b > 1
- P₀ is the initial amount (when t = 0)
- b is the growth factor (amount multiplied by each time period)
- For a growth rate of r, b = 1 + r (e.g., 5% growth means b = 1.05)

**Decay model (0 < b < 1):**
- P(t) = P₀·b^t where 0 < b < 1
- P₀ is the initial amount (when t = 0)
- b is the decay factor (amount multiplied by each time period)
- For a decay rate of r, b = 1 - r (e.g., 5% decay means b = 0.95)

### 2. Understanding Doubling Time

**Simple explanation:** "The doubling time is how long it takes for a quantity to double in size when growing exponentially."

**Key concepts:**
- For any exponential growth function P(t) = P₀·b^t, the doubling time d is the value of t when P(t) = 2·P₀
- This means: 2·P₀ = P₀·b^d
- Simplifying: 2 = b^d
- Taking the logarithm: d = log₂ / log b = ln(2) / ln(b)

**The doubling time formula:**
- d = ln(2) / ln(b) or d = log(2) / log(b)
- For a growth rate r, d = ln(2) / ln(1+r) ≈ 0.693 / r (when r is small)
- The "Rule of 72" approximation: d ≈ 72 / (r × 100) (when r is expressed as a percentage)

**Example calculation:**
"If money in an investment grows at 8% per year, the doubling time is:
- d = ln(2) / ln(1.08) ≈ 0.693 / 0.077 ≈ 9 years
- Using Rule of 72: d ≈ 72 / 8 = 9 years"

### 3. Understanding Half-Life

**Simple explanation:** "Half-life is how long it takes for a quantity to decrease to half of its original amount when decaying exponentially."

**Key concepts:**
- For any exponential decay function P(t) = P₀·b^t, the half-life h is the value of t when P(t) = P₀/2
- This means: P₀/2 = P₀·b^h
- Simplifying: 1/2 = b^h
- Taking the logarithm: h = ln(1/2) / ln(b) = -ln(2) / ln(b)

**The half-life formula:**
- h = ln(2) / ln(1/b) or h = ln(2) / -ln(b)
- For a decay rate r, h = ln(2) / ln(1/(1-r)) = ln(2) / -ln(1-r)

**Example calculation:**
"Carbon-14 has a half-life of about 5,730 years. If the decay factor b per year is:
- 1/2 = b^5730
- b = (1/2)^(1/5730) ≈ 0.99988
- The annual decay rate is about 0.012% per year"

### 4. Relationship Between Growth Rate and Doubling Time

**Simple explanation:** "There's an inverse relationship between growth rate and doubling time. The higher the growth rate, the shorter the doubling time."

**Key insights:**
- For continuous compound growth at rate r, doubling time is exactly d = ln(2)/r ≈ 0.693/r
- Doubling time × growth rate ≈ constant (0.693)
- If growth rate doubles, doubling time halves
- This relationship explains the "Rule of 72" approximation

**Visual representation:**
- Create a table showing growth rates and corresponding doubling times:
  * 1% growth → ~70 years
  * 2% growth → ~35 years
  * 3% growth → ~23 years
  * 5% growth → ~14 years
  * 10% growth → ~7 years

### 5. Relationship Between Decay Rate and Half-Life

**Simple explanation:** "Similar to growth, there's an inverse relationship between decay rate and half-life. The higher the decay rate, the shorter the half-life."

**Key insights:**
- For continuous decay at rate r, half-life is exactly h = ln(2)/r ≈ 0.693/r
- Half-life × decay rate ≈ constant (0.693)
- If decay rate doubles, half-life halves

**Examples from science:**
- Carbon-14: Half-life ≈ 5,730 years
- Uranium-238: Half-life ≈ 4.5 billion years
- Iodine-131: Half-life ≈ 8 days

### 6. Solving Doubling Time Problems

**Simple explanation:** "Doubling time problems typically ask you to find how long it will take for a quantity to double, or to use the doubling time to find the growth rate or future values."

**Problem types:**
1. **Finding doubling time given growth rate:**
   - Example: "Money grows at 6% annually. How long until it doubles?"
   - Solution: d = ln(2)/ln(1.06) ≈ 11.9 years

2. **Finding growth rate given doubling time:**
   - Example: "Population doubles every 25 years. What's the annual growth rate?"
   - Solution: 2 = (1+r)^25, so r = 2^(1/25) - 1 ≈ 0.028 or 2.8%

3. **Finding future values using doubling time:**
   - Example: "Investment doubles every 10 years. If you invest $1000, how much will you have in 35 years?"
   - Solution: Number of doublings = 35/10 = 3.5
   - Amount = $1000 × 2^3.5 ≈ $1000 × 11.3 ≈ $11,300

**Procedure for solving:**
1. Identify what you know (initial amount, rate, time) and what you need to find
2. Choose the appropriate formula:
   - Finding doubling time: d = ln(2)/ln(1+r)
   - Finding growth rate: r = 2^(1/d) - 1
   - Finding amount after t time: P(t) = P₀·(1+r)^t

### 7. Solving Half-Life Problems

**Simple explanation:** "Half-life problems typically ask you to find how much of a substance remains after a certain time, or to use measurements to determine the age of an object."

**Problem types:**
1. **Finding amount remaining after time t:**
   - Example: "Carbon-14 has a half-life of 5,730 years. What fraction remains after 17,190 years?"
   - Solution: Number of half-lives = 17,190/5,730 = 3
   - Fraction remaining = (1/2)^3 = 1/8 = 0.125

2. **Finding age using remaining amount:**
   - Example: "A fossil contains 20% of its original carbon-14. How old is it?"
   - Solution: 0.2 = (1/2)^(t/5730), so t/5730 = log(0.2)/log(0.5) ≈ 2.32
   - Age ≈ 2.32 × 5,730 ≈ 13,300 years

3. **Finding half-life using measurements:**
   - Example: "A sample decayed to 40% of its original amount in 30 years. What is its half-life?"
   - Solution: 0.4 = (1/2)^(30/h), so 30/h = log(0.4)/log(0.5) ≈ 1.32
   - Half-life h ≈ 30/1.32 ≈ 22.7 years

**Procedure for solving:**
1. Identify what you know (initial amount, remaining amount, time, half-life) and what you need to find
2. Express the problem in terms of the number of half-lives: n = t/h
3. Calculate the fraction remaining: f = (1/2)^n
4. Solve for the unknown variable

### 8. Real-World Applications of Doubling

**Simple explanation:** "Doubling appears in many real-world scenarios, from population growth to investment returns to technology advancement."

**Key applications:**
1. **Compound interest:**
   - Money doubling at different interest rates
   - The Rule of 72 for quick estimates

2. **Population growth:**
   - Human population doubling times
   - Bacterial growth in controlled environments
   - Ecological implications of rapid growth

3. **Technology advancement:**
   - Moore's Law: computer processing power doubles approximately every 2 years
   - Implications for technological development

4. **Viral spread:**
   - Infections in early pandemic stages
   - Social media content "going viral"

**Example context:**
"Understanding doubling time helps make informed decisions. If a city's population doubles every 30 years, planners must consider that in 60 years (two doubling periods), they'll need 4 times the current infrastructure capacity."

### 9. Real-World Applications of Half-Life

**Simple explanation:** "Half-life is crucial in many scientific fields, from nuclear physics to medicine, archaeology, and environmental science."

**Key applications:**
1. **Radiocarbon dating:**
   - Using carbon-14 decay to determine age of organic artifacts
   - Useful range: up to about 50,000 years

2. **Medical applications:**
   - Drug metabolism and dosing intervals
   - Radioisotopes for imaging and treatment
   - Example: Technetium-99m with 6-hour half-life used in medical scans

3. **Nuclear waste management:**
   - Planning disposal based on decay rates
   - Some isotopes have half-lives of thousands or millions of years

4. **Environmental monitoring:**
   - Tracking pollutants and their persistence
   - Evaluating environmental impact over time

**Example context:**
"A drug with a 4-hour half-life will have only 25% of the original dose active after 8 hours (two half-lives). This helps doctors determine appropriate dosing schedules."

## Common Misconceptions and How to Address Them

1. **"Doubling time is the same for all exponential growth"**
   - Clarification: "Doubling time depends on the growth rate. Different growth rates have different doubling times."

2. **"Half-life means half the substance is gone after that exact time period"**
   - Clarification: "Half-life is statistical. For large numbers of atoms, approximately half will decay in one half-life, but for small samples it's probabilistic."

3. **"The Rule of 72 works for all growth rates"**
   - Clarification: "The Rule of 72 is an approximation that works best for growth rates between 1% and 20%. For higher rates, it becomes less accurate."

4. **"After two half-lives, all of a substance is gone"**
   - Clarification: "After two half-lives, 1/4 (25%) remains. The amount approaches zero but never technically reaches it."

5. **"Exponential growth continues indefinitely in nature"**
   - Clarification: "Real-world growth eventually faces limiting factors. Pure exponential growth is a model that applies over limited time periods."

## Check for Understanding

After covering the material, ask these questions:
1. "If a population grows at 3% annually, approximately how long will it take to double?"
2. "After three half-lives, what fraction of a radioactive substance remains?"
3. "How does doubling time change if the growth rate increases?"
4. "Why is half-life important for nuclear waste management?"
5. "How can we use carbon-14 to determine the age of ancient artifacts?"

## Practice Problems

1. An investment grows at 6% per year compounded annually. How long will it take to double in value?

2. A radioactive element has a half-life of 15 days. If you start with 80 grams, how much will remain after 45 days?

3. A town's population doubles every 28 years. If the current population is 25,000, what will be the population in 70 years?

4. A bacterial colony grows exponentially, doubling every 5 hours. If there are initially 100 bacteria, how many will there be after 17 hours?

5. A pharmaceutical drug has a half-life of 6 hours in the human body. If a patient takes a 200 mg dose, how much will remain in their system after 15 hours?

6. Carbon-14 has a half-life of approximately 5,730 years. An ancient bone contains 30% of its original carbon-14. Approximately how old is the bone?

7. A city's annual population growth rate is 2.5%. Using the Rule of 72, estimate how long it will take for the population to double.

8. The value of a car depreciates by 15% each year. How long will it take for the car to lose half its value?

**Solutions:**

1. Using the formula d = ln(2)/ln(1.06):
   d ≈ 0.693/0.058 ≈ 11.9 years
   Alternatively, using the Rule of 72: d ≈ 72/6 = 12 years

2. First determine how many half-lives have passed:
   45 days ÷ 15 days = 3 half-lives
   After 3 half-lives, the remaining amount is:
   80 grams × (1/2)³ = 80 grams × 1/8 = 10 grams

3. First determine how many doubling periods will pass:
   70 years ÷ 28 years = 2.5 doubling periods
   Future population = 25,000 × 2^2.5 = 25,000 × 2² × √2
   = 25,000 × 4 × 1.414 ≈ 141,400 people

4. First determine how many doubling periods will pass:
   17 hours ÷ 5 hours = 3.4 doubling periods
   Future population = 100 × 2^3.4 ≈ 100 × 10.56 ≈ 1,056 bacteria

5. First determine how many half-lives have passed:
   15 hours ÷ 6 hours = 2.5 half-lives
   Amount remaining = 200 mg × (1/2)^2.5 = 200 mg × 0.25 × √0.5
   = 200 mg × 0.25 × 0.707 ≈ 35.4 mg

6. Setting up the equation:
   0.3 = (1/2)^(t/5730)
   Taking logarithm of both sides:
   ln(0.3) = (t/5730) × ln(0.5)
   t = 5730 × ln(0.3)/ln(0.5) ≈ 5730 × 1.737 ≈ 9,954 years

7. Using the Rule of 72:
   72 ÷ 2.5 = 28.8 years

8. Setting up the equation:
   0.5 = (0.85)^t
   Taking logarithm of both sides:
   ln(0.5) = t × ln(0.85)
   t = ln(0.5)/ln(0.85) ≈ -0.693/-0.163 ≈ 4.25 years

## Visual Learning Activities

1. **Doubling penny demonstration**: Start with 1 penny and double it each day for a month (calculated, not actual pennies!). Create a table and graph showing the dramatic growth.

2. **Half-life simulation**: Use coins or dice to model radioactive decay. Start with 100 coins, flip them all, and remove those that come up heads (representing atoms that have decayed). Repeat and plot results.

3. **Growth rate comparison**: Create a spreadsheet showing growth of $1000 at different interest rates over 50 years to visualize how small differences in rates lead to large differences over time.

4. **Logarithmic scale exploration**: Plot exponential growth/decay on both regular and logarithmic scales to show how exponential functions become linear when plotted logarithmically.

5. **Real data analysis**: Find historical data on population growth or radioactive decay and analyze it to determine actual doubling times or half-lives.

## Tips for Teaching Success

1. **Start with concrete examples** that relate to your teen's interests (money growth, technology advancement, etc.).

2. **Use visual aids** like graphs and tables to show the dramatic effects of exponential growth and decay.

3. **Emphasize practical applications** like investment planning or understanding science news.

4. **Connect math to science** by showing how these concepts apply across disciplines.

5. **Practice with real calculators** rather than just using the Rule of 72 approximation.

6. **Discuss limiting factors** that prevent unlimited exponential growth in real-world situations.

## Online Resources

- **Desmos.com**: Interactive graphing calculator for visualizing growth and decay
- **Khan Academy**: "Exponential growth and decay" video series
- **PhET Interactive Simulations**: "Nuclear Decay" simulation
- **Illuminations (NCTM)**: "Compound Interest Calculator"
- **Radiocarbon dating interactive tools**: For exploring archaeology applications

## Next Steps

Once your teen understands doubling time and half-life, they'll be ready to:
1. Apply these concepts to more complex financial scenarios (appreciation and depreciation)
2. Explore other growth and decay applications
3. Learn about logarithmic functions as the inverse of exponential functions
4. Study differential equations that describe rates of change in growth and decay

Remember: These concepts have powerful real-world implications and build on the exponential function foundations established in previous lessons. Mastering these applications helps students see the relevance of mathematics in science, finance, and decision-making.
