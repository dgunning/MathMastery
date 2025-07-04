# Math Mastery Mac App Design

## App Overview

A native macOS application that transforms MCR3U Functions learning into an engaging, self-paced journey with visible progress, immediate feedback, and science-based retention strategies. Designed to leverage the desktop environment's advantages while maintaining focus and engagement.

## Core User Experience

### 1. Onboarding Flow

**Welcome Screen**
- "Your Math Journey Starts Here"
- Quick diagnostic (5 questions) to assess current level
- Personalization: interests survey (gaming, sports, music, tech, finance)
- Goal setting: "I want to..." (pass the course, build confidence, prepare for university)

**Learning Style Assessment**
- Visual/Auditory/Kinesthetic preference quiz
- Math anxiety scale (1-10)
- Time availability (minutes per day)
- Notification preferences

### 2. Home Dashboard (Mac Desktop Layout)

**Main Window Layout**
```
┌─────────────────────────────────────────────────────────────────────────────┐
│  Math Mastery                    🔥 7 Day Streak!    ⚡ 850 XP    👤 Profile │
├─────────────────────────────────────────────────────────────────────────────┤
│  ┌─────────────────────────────────────────────────────────────────────────┐  │
│  │  Today's Focus: Advanced Factoring                                     │  │
│  │  ▓▓▓▓▓▓▓▓░░ 80% Complete                                               │  │
│  │                                                                         │  │
│  │  [Continue Learning] 📚      [Quick Practice] ⚡      [Review] 🔄       │  │
│  └─────────────────────────────────────────────────────────────────────────┘  │
│                                                                             │
│  ┌─────────────────────┐  ┌─────────────────────┐  ┌─────────────────────┐  │
│  │  ⏰ Due for Review   │  │  🎯 Daily Challenge │  │  📊 Progress Stats  │  │
│  │                     │  │                     │  │                     │  │
│  │  • Factoring (3)    │  │  🏆 Streak Saver    │  │  Skills: 12/18 ✓    │  │
│  │  • Domain/Range (1) │  │  Complete 5 probs   │  │  Time: 2.5h today   │  │
│  │  • Vertex form (2)  │  │  without hints      │  │  Accuracy: 87%      │  │
│  │                     │  │                     │  │                     │  │
│  │  [Start Review]     │  │  [Accept Challenge] │  │  [View Details]     │  │
│  └─────────────────────┘  └─────────────────────┘  └─────────────────────┘  │
│                                                                             │
│  📊 Skills Tree  🏆 Achievements  👥 Study Groups  📈 Analytics  ⚙️ Settings │
└─────────────────────────────────────────────────────────────────────────────┘
```

### 3. Learning Interface (Mac Split-Screen Layout)

**Card-Based Micro-Lessons**
- Keyboard navigation (arrow keys, space bar)
- Each card = one concept chunk (2-3 minutes)
- Card types:
  - **Concept Introduction**: Visual explanation with animation
  - **Worked Example**: Step-by-step solution reveal
  - **Try It**: Guided practice with hints
  - **Quick Check**: Single problem to verify understanding
  - **Connection Card**: Links to real-world or other concepts

**Split-Screen Learning Interface**
```
┌─────────────────────────────────────────────────────────────────────────────┐
│  Math Mastery - Advanced Factoring                                         │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                             │
│  ┌─────────────────────────────────┐  ┌─────────────────────────────────┐  │
│  │         LESSON CARD             │  │         WORK SPACE              │  │
│  │                                 │  │                                 │  │
│  │  📖 Factoring Trinomials        │  │  Problem: Factor 6x² + 13x + 6 │  │
│  │                                 │  │                                 │  │
│  │  When a ≠ 1, use AC method:    │  │  Step 1: Find a×c = 6×6 = 36   │  │
│  │                                 │  │                                 │  │
│  │  1. Multiply a × c             │  │  Step 2: Find factors of 36    │  │
│  │  2. Find factors that add to b │  │  that add to 13:               │  │
│  │  3. Split middle term          │  │  ▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂  │  │
│  │  4. Factor by grouping         │  │                                 │  │
│  │                                 │  │  💡 Need a hint?                │  │
│  │  🎥 Watch animation            │  │  ✅ Check this step             │  │
│  │                                 │  │                                 │  │
│  │  [← Back] [Next →]             │  │  [Submit Answer] [Show Solution] │  │
│  └─────────────────────────────────┘  └─────────────────────────────────┘  │
│                                                                             │
│  Progress: Card 5/8 ▓▓▓▓▓░░░          Topic: 73% Complete                  │
└─────────────────────────────────────────────────────────────────────────────┘
```

### 4. Progress Visualization

**Skill Tree View**
```
        [Quadratics] ✓
       /      |      \
[Factoring] [Vertex] [Solving]
    ✓         🔓        🔒
    |         |         |
[Advanced]  [Apps]   [Systems]
    🔓        🔒        🔒
```

**Mastery Meters**
- Each skill has a circular progress indicator
- Colors: Red (0-40%), Yellow (40-70%), Green (70-85%), Gold (85%+)
- Decay visualization shows when review is needed

### 5. Practice Modes

**Quick Practice** (5 minutes)
- 5 mixed problems from mastered topics
- Maintains fluency through spaced repetition

**Focused Practice** (10-15 minutes)
- Deep dive into specific skill
- Adaptive difficulty
- Immediate feedback with solution steps

**Challenge Mode** (Variable)
- Timed challenges for gamification
- Leaderboards (optional)
- Special badges for completion

**Story Problems** (15-20 minutes)
- Real-world scenarios matching student interests
- Multi-step problems with checkpoints
- Collaborative option with friends

### 6. Review and Retention

**Spaced Repetition Queue**
```
┌─────────────────────────────────┐
│  📅 Review Queue (5 items)      │
├─────────────────────────────────┤
│  ⏰ Factoring basics (Due now)  │
│  ⏰ Domain & Range (Due now)    │
│  🕐 Function notation (1 day)   │
│  🕑 Parabola vertex (2 days)   │
│  🕓 Completing square (4 days)  │
│                                 │
│  [Start Review Session]         │
└─────────────────────────────────┘
```

**Review Session Flow**
- Problems appear as flashcards
- Self-assessment: "How confident?" (1-5)
- Low confidence → immediate re-teaching
- High confidence → extended interval

### 7. Feedback and Rewards

**Immediate Feedback Types**
- ✅ Correct: "Nice work!" + XP animation
- ⚠️ Partial: "Good thinking! Check this step..."
- ❌ Incorrect: "Let's try another approach..."
- 💡 Hint used: "Smart to ask for help!"

**Achievement System**
- **Process Badges**: "Persistent" (10 attempts), "Helper" (assist peer)
- **Mastery Badges**: "Factoring Expert", "Function Master"
- **Streak Badges**: "Week Warrior", "Monthly Maven"
- **Special Badges**: "Error Detective" (find app bug), "Creative Solver"

**Progress Celebrations**
- Confetti animation for skill mastery
- Unlock new problem contexts (gaming → music production)
- Certificate generation for unit completion

### 8. Social Features (Optional)

**Study Buddy System**
- Match with similar-level peer
- Shared progress visible
- Challenge each other
- Help requests

**Parent/Tutor Portal**
- Progress reports
- Areas of struggle
- Time invested
- Upcoming topics

### 9. Math Anxiety Support

**Calm Mode**
- Reduced animations
- No timers
- Encouraging messages
- Breathing exercise prompts

**Mistake Handling**
- "Interesting attempt! Here's what happened..."
- Error pattern detection
- Automatic easier problems if frustrated
- "Take a break?" prompt after 3 errors

### 10. Technical Features

**Offline Capability**
- Download next week's content
- Sync when connected
- Practice anywhere

**Mac Integration**
- Native macOS app store distribution
- Seamless iCloud sync
- Handoff support for iOS companion
- Synced progress across Apple devices

**Accessibility**
- Screen reader support
- High contrast mode
- Font size adjustment
- Color blind friendly

## User Flow Examples

### New User First Session
1. Welcome → Quick diagnostic
2. Interest survey → Personalized contexts
3. First micro-lesson (easiest topic)
4. Guided practice problem
5. Success celebration
6. Preview tomorrow's topic
7. Set reminder preference

### Daily Practice Session
1. Streak celebration
2. Review queue (if any)
3. New content (2-3 micro-lessons)
4. Practice problems (adaptive)
5. Daily challenge (optional)
6. Progress summary
7. Tomorrow preview

### Struggling Student Support
1. Error detection (3+ mistakes)
2. "Let's slow down" prompt
3. Switch to easier variation
4. Video explanation option
5. Step-by-step walkthrough
6. Confidence builder problems
7. Encouragement message

## Visual Design Principles

**Color Palette**
- Primary: Calming blue (#4A90E2)
- Success: Soft green (#7ED321)
- Warning: Warm orange (#F5A623)
- Error: Gentle red (#D0021B)
- Background: Light gray (#F8F8F8)

**Typography**
- Headers: Modern sans-serif (Montserrat)
- Body: Readable sans-serif (Open Sans)
- Math: Clear serif (STIX Two)

**Animations**
- Subtle and purposeful
- Celebrate success without overwhelming
- Smooth transitions between cards
- Loading indicators for all actions

## Implementation Stack

**Mac App (Native)**
- SwiftUI for modern Mac interface
- Swift for backend logic
- Core Data for local storage
- CloudKit for sync across devices

**Math Rendering**
- LaTeX renderer for equations
- Core Animation for smooth transitions
- Metal for complex visualizations
- MathJax for web content

**Mac-Specific Features**
- Touch Bar support for quick actions
- Spotlight integration
- Notification Center integration
- Menu bar quick access
- Dock badge progress indicators

**Analytics**
- Custom event tracking
- Learning analytics dashboard
- A/B testing framework

## MVP Features (Phase 1)

1. Core lesson content (Unit 1)
2. Basic practice problems
3. Progress tracking
4. Spaced repetition
5. Simple achievements

## Future Enhancements

1. AI-powered hint generation
2. Voice-based problem solving
3. AR visualization for 3D concepts
4. Peer tutoring marketplace
5. Integration with school LMS