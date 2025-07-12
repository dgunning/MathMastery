import SwiftUI
import MarkdownUI

// MARK: - Color Extensions for MathMastery Theme

// MARK: - MathMastery Theme Colors
extension Color {
    // Educational heading colors with direct RGB values
    static let mmHeading1 = Color(red: 0.12, green: 0.53, blue: 0.90) // Blue #1E88E5
    static let mmHeading2 = Color(red: 0.26, green: 0.63, blue: 0.28) // Green #43A047
    static let mmHeading3 = Color(red: 0.48, green: 0.12, blue: 0.64) // Purple #7B1FA2
    static let mmHeading4 = Color(red: 0.76, green: 0.09, blue: 0.36) // Pink #C2185B
    
    // Light background colors for light mode
    static let mmLightBackground = Color(red: 0.98, green: 0.98, blue: 1.0)
    static let mmLightSecondary = Color(red: 0.96, green: 0.97, blue: 0.98)
    static let mmLightBorder = Color(red: 0.88, green: 0.89, blue: 0.91)
    static let mmCodeBackground = Color(red: 0.96, green: 0.97, blue: 0.98)
    
    // Dark background colors for dark mode
    static let mmDarkBackground = Color(red: 0.11, green: 0.11, blue: 0.12)
    static let mmDarkSecondary = Color(red: 0.15, green: 0.16, blue: 0.17)
    static let mmDarkBorder = Color(red: 0.27, green: 0.28, blue: 0.3)
}

// MARK: - MathMastery Theme Definition
extension Theme {
    /// The custom theme for MathMastery educational content
    public static var mathMastery: Theme {
        let theme = Theme()
            // Apply heading styles
            .withMathMasteryHeadings()
            // Apply block styles
            .withMathMasteryBlockStyles()
            // Apply inline code styles
            .withInlineCodeStyles()
            
        return theme
    }

    // Inline code style
    func withInlineCodeStyles() -> Theme {
        self.code { 
            FontFamilyVariant(.monospaced)
            FontSize(.em(0.85))
            BackgroundColor(.mmCodeBackground)
            FontWeight(.medium)
            //Padding(.horizontal, .em(0.2))
            //BorderWidth(.px(1))x
            //BorderColor(.mmLightBorder)
            //BorderRadius(.px(4))
        }
    }
    
    // Paragraph style
    func withParagraphStyles() -> Theme {
        self.paragraph { configuration in
            configuration.label
                .padding(.bottom, 8)
        }
    }
    
    // List items
    func withListItems() -> Theme {
        self.listItem { configuration in
            configuration.label
                .padding(.top, 4)
        }
    }
}

// MARK: - Block Styles Extension
extension Theme {
    /// Add custom block styles to a theme
    public func withMathMasteryBlockStyles() -> Theme {
        self
            // Code block with horizontal scrolling
            .codeBlock { configuration in
                ScrollView(.horizontal, showsIndicators: false) {
                    configuration.label
                        .padding(16)
                }
                .background(Color.secondary.opacity(0.1))
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray.opacity(0.2), lineWidth: 1)
                )
                .padding(.vertical, 8)
            }
            // Enhanced blockquote with accent border - ideal for solution walkthroughs
            .blockquote { configuration in
                VStack(alignment: .leading, spacing: 8) {
                    configuration.label
                        .padding(.horizontal, 16)
                        .padding(.vertical, 12)
                }
                .background(Color.mmLightBackground)
                .cornerRadius(8)
                .overlay(
                    HStack(spacing: 0) {
                        Rectangle()
                            .fill(Color.mmHeading1)
                            .frame(width: 4)
                        Spacer()
                    }
                    .mask(RoundedRectangle(cornerRadius: 8))
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.mmHeading1.opacity(0.3), lineWidth: 1)
                )
                .padding(.vertical, 12)
            }
            // Table with alternating row colors
            .table { configuration in
                configuration.label
                    .fixedSize(horizontal: false, vertical: true)
                    .markdownTableBackgroundStyle(
                        .alternatingRows(
                            Color.mmLightBackground,
                            Color.mmLightSecondary
                        )
                    )
                    .markdownTableBorderStyle(
                        TableBorderStyle(
                            .outsideBorders,
                            color: Color.gray,
                            strokeStyle: .init(lineWidth: 2)
                        )
                    )
            }
    }
    
    /// Convenience method to apply standard MathMastery heading styles
    func withMathMasteryHeadings() -> Theme {
        self
            .heading1 { configuration in
                configuration.label
                    .padding(.top, 16)
                    .padding(.bottom, 8)
                    .markdownTextStyle {
                        FontWeight(.bold)
                        FontSize(.em(1.75)) // ~28px
                        ForegroundColor(.mmHeading1)
                    }
            }
            .heading2 { configuration in
                configuration.label
                    .padding(.top, 12)
                    .padding(.bottom, 6)
                    .markdownTextStyle {
                        FontWeight(.semibold)
                        FontSize(.em(1.5)) // ~24px
                        ForegroundColor(.mmHeading2)
                    }
            }
            .heading3 { configuration in
                configuration.label
                    .padding(.top, 10)
                    .padding(.bottom, 4)
                    .markdownTextStyle {
                        FontWeight(.semibold)
                        FontSize(.em(1.25)) // ~20px
                        ForegroundColor(.mmHeading3)
                    }
            }
            .heading4 { configuration in
                configuration.label
                    .padding(.top, 8)
                    .padding(.bottom, 2)
                    .markdownTextStyle {
                        FontWeight(.semibold)
                        FontSize(.em(1.125)) // ~18px
                        ForegroundColor(.mmHeading4)
                    }
            }
    }
    

}

// MARK: - Backward Compatibility
extension View {
    /// Placeholder for backward compatibility with previous custom question options implementation
    func withQuestionOptionsSupport() -> some View {
        // This is a no-op function to maintain backward compatibility
        return self
    }
}
