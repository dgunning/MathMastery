# MarkdownUI Theming Guide for MathMastery

This guide explains how to properly use and customize MarkdownUI themes in the MathMastery app based on the official API.

## 1. Understanding the Theme Structure

MarkdownUI themes consist of:

- **Text styles** - For inline elements (bold, italic, links, etc.)
- **Block styles** - For block elements (headings, paragraphs, lists, etc.)

## 2. Basic Markdown View Usage

```swift
// Simple string-based usage
Markdown("This is **bold** text")

// With the content builder
Markdown {
    """
    ## Heading
    Regular text with **bold** and *italic*
    """
}
```

## 3. Applying Built-in Themes

```swift
// Apply GitHub theme (recommended for most cases)
Markdown(content)
    .markdownTheme(.gitHub)

// Other built-in themes
.markdownTheme(.basic)  // Default if none specified
```

## 4. Creating Custom Themes

### 4.1 Correct Pattern Using Modifiers

The proper way to create a custom theme is to start with an empty theme or extend an existing theme and apply modifiers:

```swift
extension Theme {
    static var mathMasteryTheme: Theme {
        // Start with GitHub theme as base
        Theme.gitHub
            // Customize text styles using configuration closures
            .text { configuration in
                configuration.label
                    .font(.system(size: 16))
                    .lineSpacing(6)
            }
            .heading1 { configuration in
                configuration.label
                    .font(.system(size: 28, weight: .bold))
                    .foregroundColor(.blue)
                    .padding(.vertical, 8)
            }
            .code { configuration in
                configuration.label
                    .font(.system(size: 14, design: .monospaced))
                    .foregroundColor(.purple)
                    .padding(2)
                    .background(Color.purple.opacity(0.1))
                    .cornerRadius(4)
            }
            // Customize block styles
            .blockquote { configuration in
                HStack(spacing: 0) {
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 4)
                    configuration.label
                        .padding(.leading, 8)
                        .padding([.top, .bottom], 4)
                        .background(Color.blue.opacity(0.05))
                }
            }
    }
}
```

### 4.2 Breaking Up Complex Themes

For large themes, break up the customization to avoid compiler issues:

```swift
extension Theme {
    static var mathMasteryTheme: Theme {
        // Start with base theme
        var theme = Theme.gitHub
        
        // Step 1: Text styles
        theme = theme.text { configuration in
            configuration.label
                .font(.system(size: 16))
                .lineSpacing(6)
        }
        
        // Step 2: Heading styles
        theme = theme.heading1 { configuration in /* ... */ }
              .heading2 { configuration in /* ... */ }
        
        // Step 3: Code styles
        theme = theme.code { configuration in /* ... */ }
              .codeBlock { configuration in /* ... */ }
        
        return theme
    }
}
```

## 5. Color Definitions for Consistency

Based on the MarkdownUI source, consider defining your colors for light/dark mode support:

```swift
extension Color {
    fileprivate static let primaryText = Color(
        light: Color(hex: "#000000"), 
        dark: Color(hex: "#FFFFFF")
    )
    fileprivate static let secondaryText = Color(
        light: Color(hex: "#6b6e7b"), 
        dark: Color(hex: "#9294a0")
    )
    // Add more color definitions for your theme
}

// Extension to create dual-mode colors
extension Color {
    init(light: Color, dark: Color) {
        self.init(uiColor: UIColor(
            light: UIColor(light), 
            dark: UIColor(dark)
        ))
    }
}
```

## 6. Available Text Style Customizations

MarkdownUI provides many text style modifiers, including:

- `FontWeight(.bold)`
- `FontStyle(.italic)`
- `ForegroundColor(.red)`
- `BackgroundColor(.yellow)`
- `Strikethrough(true, color: .red)`
- `Underline(true, color: .blue)`
- `FontFamilyVariant(.monospaced)`
- `FontSize(.em(0.85))`

## 7. Block Style Examples for MathMastery

### Blockquotes (Important Notes)

```swift
.blockquote { configuration in
    HStack(spacing: 0) {
        Rectangle()
            .fill(Color.blue)
            .frame(width: 4)
        configuration.label
            .padding(.leading, 8)
            .padding([.top, .bottom], 4)
            .background(Color.blue.opacity(0.05))
    }
}
```

### Code Blocks (Examples)

```swift
.codeBlock { configuration in
    ScrollView(.horizontal) {
        configuration.label
            .font(.system(size: 14, weight: .regular, design: .monospaced))
            .padding(16)
            .background(Color.gray.opacity(0.1))
            .cornerRadius(8)
    }
    .padding(.vertical, 8)
}
```

### Tables (Math Problems)

```swift
.table { configuration in
    configuration.label
        .fixedSize(horizontal: false, vertical: true)
        .markdownTableBorderStyle(.grid(Color.gray.opacity(0.3)))
        .markdownTableBackgroundStyle(
            .alternatingRows(
                Color.white,
                Color.gray.opacity(0.05)
            )
        )
}
```

## 8. MathMastery-Specific Styling Guidelines

- **Headings**: Use color-coded headings (Blue H1, Green H2, Purple H3, Pink H4)
- **Code Blocks**: Use horizontal scrolling for long code examples
- **Blockquotes**: Apply blue left border for important notes/concepts
- **Tables**: Use alternating row colors for better readability
- **Question Options**: Use standard markdown indentation for options

## 9. Troubleshooting Common Issues

1. **Compiler Error - Unable to type-check**:  
   Break up complex theme customizations into smaller steps.

2. **Cannot call value of non-function type**:  
   Make sure to use the closure-based API with configuration parameters.

3. **Missing configuration.label**:  
   Always reference the content through the provided configuration.label.

4. **"Missing theme styling" warnings**:  
   Ensure you're applying all required styles for a consistent look.

## 10. Example Implementation

See `MathMastery/Examples/MarkdownUIExamples.swift` for a complete example of theme customization.

---

This guide is based on the official MarkdownUI API (version 2.0+) and has been validated with the MathMastery app requirements.
