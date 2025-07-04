# Content Conversion Strategy

## Current State Analysis

### Existing Content Structure
- **Format**: Markdown files with parent-teaching orientation
- **Size**: 14 lesson files, 200+ lines each
- **Structure**: Long-form explanations with multiple concepts per file
- **Audience**: Written for parents teaching teens

### Conversion Challenges
- **Atomization**: Break 200+ line lessons into 2-3 minute cards
- **Rewriting**: Change from parent-directed to student-directed language
- **Interaction**: Add interactive elements for engagement
- **Sequencing**: Maintain logical flow across micro-lessons

## Recommended Conversion Approach

### Phase 1: Enhanced Markdown (Immediate)
Keep markdown but add structured metadata for card organization:

```yaml
---
card_id: "func_001"
card_type: "concept_intro"
topic: "functions"
subtopic: "definition"
duration: 120
prerequisites: []
difficulty: 1
sequence: 1
---

# What is a Function?

A function is like a reliable machine - same input, same output every time.

## Example
When you press 'A' on your controller, you always jump.

## Try It
Is "your age → your height" a function? Why?

## Key Point
Each input has exactly ONE output.
```

### Phase 2: JSON Conversion (For App)
Convert enhanced markdown to structured JSON for app consumption:

```json
{
  "id": "func_001",
  "type": "concept_intro",
  "topic": "functions",
  "title": "What is a Function?",
  "duration": 120,
  "sequence": 1,
  "prerequisites": [],
  "content": {
    "explanation": "A function is like a reliable machine...",
    "example": "When you press 'A' on your controller...",
    "key_point": "Each input has exactly ONE output."
  },
  "interactive": {
    "type": "question",
    "prompt": "Is 'your age → your height' a function?",
    "options": ["Yes", "No"],
    "correct": 0,
    "explanation": "Yes, because each person has only one age and one height at any given time."
  }
}
```

## Card Types and Templates

### 1. Concept Introduction Card
```yaml
---
card_type: "concept_intro"
duration: 90
---
# [Concept Name]

[Simple explanation in teen language]

## Real-World Connection
[Relatable example using gaming/tech/sports]

## Visual
[Animation/diagram reference]

## Key Takeaway
[One sentence summary]
```

### 2. Worked Example Card
```yaml
---
card_type: "worked_example"
duration: 150
---
# [Problem Statement]

## Step-by-Step Solution
1. [Step 1 with explanation]
2. [Step 2 with explanation]
3. [Step 3 with explanation]

## Why This Works
[Connect to underlying concept]

## Your Turn
[Similar problem for practice]
```

### 3. Practice Card
```yaml
---
card_type: "practice"
duration: 180
---
# Try This Problem

[Problem statement]

## Hints Available
- [Hint 1]
- [Hint 2]
- [Hint 3]

## Success Criteria
[What constitutes correct answer]
```

### 4. Connection Card
```yaml
---
card_type: "connection"
duration: 90
---
# How This Connects

## To Previous Learning
[Link to prerequisite concepts]

## To Future Topics
[Preview of what's coming]

## To Real Life
[Practical applications]
```

## Automated Conversion Script

### Script Capabilities
1. **Parse existing markdown**: Extract sections, examples, problems
2. **Generate card sequences**: Break lessons into logical micro-lessons
3. **Rewrite language**: Convert parent-directed to student-directed
4. **Add interactivity**: Insert quiz questions and practice problems
5. **Create prerequisites**: Map dependencies between cards

### Script Workflow
```
Input: lesson2_advanced_factoring.md
    ↓
Parse sections and concepts
    ↓
Generate card sequence plan
    ↓
Create individual card files
    ↓
Add interactive elements
    ↓
Output: 25-30 card files
```

## Content Management System

### Directory Structure
```
content/
├── cards/
│   ├── unit1/
│   │   ├── 001_what_is_function.md
│   │   ├── 002_function_machine.md
│   │   ├── 003_function_vs_relation.md
│   │   └── ...
│   └── unit2/
├── media/
│   ├── animations/
│   ├── images/
│   └── videos/
└── sequences/
    ├── unit1_sequence.json
    └── unit2_sequence.json
```

### Sequence Management
Track card order and dependencies:
```json
{
  "unit": 1,
  "sequence": [
    {
      "card_id": "func_001",
      "prerequisites": [],
      "unlocks": ["func_002", "func_003"]
    },
    {
      "card_id": "func_002",
      "prerequisites": ["func_001"],
      "unlocks": ["func_004"]
    }
  ]
}
```

## Implementation Steps

### Step 1: Manual Conversion Template
1. Take one lesson (e.g., lesson1_guide.md)
2. Manually break into cards using templates
3. Validate learning flow and timing
4. Use as training data for script

### Step 2: Semi-Automated Script
1. Build parser for existing markdown
2. Generate card skeletons
3. Human review and refinement
4. Build interaction templates

### Step 3: Full Automation
1. NLP-based section identification
2. Automatic language conversion
3. Interactive element generation
4. Quality assurance pipeline

## Quality Assurance

### Card Validation
- **Duration**: 60-180 seconds per card
- **Complexity**: Single concept focus
- **Language**: Grade 10 reading level
- **Interactivity**: At least one engagement element

### Sequence Validation
- **Prerequisites**: All dependencies met
- **Flow**: Logical progression
- **Spacing**: Appropriate difficulty curve
- **Review**: Spaced repetition integration

## Benefits of This Approach

1. **Gradual Migration**: Can start with enhanced markdown
2. **Preservation**: Maintains original content structure
3. **Flexibility**: Easy to modify card sequences
4. **Automation**: Script handles bulk conversion
5. **Quality**: Manual review ensures pedagogical soundness

## Estimated Effort

- **Manual template creation**: 2-3 days
- **Script development**: 1-2 weeks
- **Content conversion**: 3-4 weeks
- **Quality review**: 1-2 weeks
- **Total**: 6-9 weeks for complete conversion