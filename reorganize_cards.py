#!/usr/bin/env python3
import os
import json
import shutil
import re

# Base directories
base_dir = "/Users/dwight/Projects/MathMastery"
cards_dir = os.path.join(base_dir, "CourseContent/cards/unit_1")
temp_dir = os.path.join(base_dir, "temp_cards_reorganization")

# Create temp directory if it doesn't exist
if not os.path.exists(temp_dir):
    os.makedirs(temp_dir)

# Define lesson mappings - what needs to move where
# Format: Current lesson number => New lesson number
lesson_mappings = {
    # Lesson 1 stays as is
    "1": "1",  
    # Lesson 2 (Advanced Factoring) moves to Lesson 3
    "2": "3",  
    # Lesson 3 (Functions, Domain) moves to Lesson 4
    "3": "4",  
    # And so on...
    "4": "5",
    "5": "6",
    "6": "7",
    "7": "8",
    "8": "9",
    "9": "10",
    "10": "11",
    "11": "12",
    "12": "13",
}

# Define lesson titles for easier reference
lesson_titles = {
    "1": "Introduction to Functions",
    "2": "Basic Factoring Techniques",
    "3": "Advanced Factoring Methods",
    "4": "Functions, Domain, and Range",
    "5": "Functions and Function Notation",
    "6": "Vertex of a Parabola",
    "7": "Maximum and Minimum Values",
    "8": "Completing the Square",
    "9": "Working with Radicals",
    "10": "Solving Quadratic Equations",
    "11": "The Discriminant",
    "12": "Determining a Quadratic Equation from its Roots",
    "13": "Solving Linear-Quadratic Systems",
    "14": "Unit 1 Review and Practice Test",
    "15": "Unit 1 Review and Practice Test (Part 2)",
}

# Create new lesson directories in the temp folder
print("Creating temporary lesson directories...")
for i in range(1, 16):  # Lessons 1-15
    lesson_dir = os.path.join(temp_dir, f"lesson_{i}")
    if not os.path.exists(lesson_dir):
        os.makedirs(lesson_dir)

# Copy lesson 1 files as is - they're already correctly aligned
print("Copying Lesson 1 files (no changes needed)...")
for filename in os.listdir(os.path.join(cards_dir, "lesson_1")):
    src = os.path.join(cards_dir, "lesson_1", filename)
    dst = os.path.join(temp_dir, "lesson_1", filename)
    if os.path.isfile(src):
        shutil.copy2(src, dst)

# Process lesson 2-12 files - these need to be moved to new lesson numbers
for old_lesson in range(2, 13):
    old_lesson_str = str(old_lesson)
    new_lesson_str = lesson_mappings[old_lesson_str]
    old_dir = os.path.join(cards_dir, f"lesson_{old_lesson_str}")
    
    print(f"Moving Lesson {old_lesson_str} files to Lesson {new_lesson_str}...")
    
    # Skip if the source directory doesn't exist
    if not os.path.exists(old_dir):
        print(f"  Warning: Source directory {old_dir} doesn't exist")
        continue
    
    # Process each file in the old lesson directory
    for filename in os.listdir(old_dir):
        if not os.path.isfile(os.path.join(old_dir, filename)):
            continue
            
        # Copy and rename the file
        old_path = os.path.join(old_dir, filename)
        
        # For sequence files, just update the lesson_name
        if filename == f"lesson_{old_lesson_str}_sequence.json":
            with open(old_path, 'r') as f:
                sequence_data = json.load(f)
                
            # Update lesson name to match the new lesson number
            sequence_data["lesson_name"] = lesson_titles[new_lesson_str]
            
            # Save to new location
            new_filename = f"lesson_{new_lesson_str}_sequence.json"
            new_path = os.path.join(temp_dir, f"lesson_{new_lesson_str}", new_filename)
            
            with open(new_path, 'w') as f:
                json.dump(sequence_data, f, indent=2)
            
            print(f"  Updated sequence file: {new_path}")
            
        # For card files, update the internal IDs too
        elif re.match(r"unit_1_lesson_\d+_card_\d+\.json", filename):
            with open(old_path, 'r') as f:
                card_data = json.load(f)
            
            # Update card internal references
            old_id = card_data["id"]
            new_id = old_id.replace(f"lesson_{old_lesson_str}", f"lesson_{new_lesson_str}")
            card_data["id"] = new_id
            card_data["lesson_id"] = f"lesson_{new_lesson_str}"
            
            # Create new filename and path
            new_filename = filename.replace(f"lesson_{old_lesson_str}", f"lesson_{new_lesson_str}")
            new_path = os.path.join(temp_dir, f"lesson_{new_lesson_str}", new_filename)
            
            # Save updated card data
            with open(new_path, 'w') as f:
                json.dump(card_data, f, indent=2)
                
            print(f"  Updated card file: {new_path}")

# Create template files for Lesson 2 (Basic Factoring)
print("\nCreating template files for Lesson 2 (Basic Factoring)...")
lesson2_dir = os.path.join(temp_dir, "lesson_2")

# Create sequence file
sequence_file = os.path.join(lesson2_dir, "lesson_2_sequence.json")
sequence_data = {
    "unit_id": "unit_1",
    "lesson_id": "lesson_2",
    "lesson_name": "Basic Factoring Techniques",
    "total_cards": 10,  # We'll create 10 template cards
    "estimated_duration": 1200,
    "sequence": [f"unit_1_lesson_2_card_{i:03d}" for i in range(1, 11)],
    "card_types": {
        "worked_example": 6,
        "concept_intro": 4
    }
}
with open(sequence_file, 'w') as f:
    json.dump(sequence_data, f, indent=2)
print(f"  Created sequence file: {sequence_file}")

# Create template cards for Basic Factoring
concept_titles = [
    "Introduction to Factoring",
    "Finding the Greatest Common Factor (GCF)",
    "Factoring out the GCF",
    "Recognizing Special Patterns"
]

example_titles = [
    "Factoring Trinomials with Leading Coefficient of 1",
    "Factoring Perfect Square Trinomials",
    "Factoring Difference of Squares",
    "Factoring by Grouping",
    "Factoring Strategy Selection",
    "Mixed Factoring Practice"
]

# Create concept intro cards
for i in range(1, 5):  # 4 concept cards
    card_id = f"unit_1_lesson_2_card_{i:03d}"
    card_data = {
        "id": card_id,
        "unit_id": "unit_1",
        "lesson_id": "lesson_2",
        "type": "concept_intro",
        "title": concept_titles[i-1],
        "duration": 120,
        "content": {
            "explanation": f"[Template content for {concept_titles[i-1]}]",
            "example": "[Template example]",
            "key_point": "[Key point about this concept]"
        },
        "interactive": {
            "question": f"[Template question about {concept_titles[i-1]}]",
            "options": [
                "[Option 1]",
                "[Option 2]",
                "[Option 3]"
            ],
            "correct": 0
        }
    }
    
    card_path = os.path.join(lesson2_dir, f"{card_id}.json")
    with open(card_path, 'w') as f:
        json.dump(card_data, f, indent=2)
    print(f"  Created template card: {card_path}")

# Create worked example cards
for i in range(5, 11):  # 6 worked example cards
    example_idx = i - 5
    card_id = f"unit_1_lesson_2_card_{i:03d}"
    card_data = {
        "id": card_id,
        "unit_id": "unit_1",
        "lesson_id": "lesson_2",
        "type": "worked_example",
        "title": example_titles[example_idx],
        "duration": 120,
        "content": {
            "problem": f"[Template problem for {example_titles[example_idx]}]",
            "solution": "[Step-by-step solution]",
            "insight": "[Key insight from this example]"
        }
    }
    
    card_path = os.path.join(lesson2_dir, f"{card_id}.json")
    with open(card_path, 'w') as f:
        json.dump(card_data, f, indent=2)
    print(f"  Created template card: {card_path}")

print("\nReorganization completed in temporary directory!")
print(f"Temporary files are in: {temp_dir}")
print("\nTo finalize the reorganization, review the temp files and then run:")
print(f"rm -rf {cards_dir} && cp -R {temp_dir}/* {cards_dir}/..")
