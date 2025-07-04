import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack(spacing: 30) {
            // Header
            VStack(spacing: 10) {
                Image(systemName: "function")
                    .font(.system(size: 80))
                    .foregroundColor(.blue)
                
                Text("Math Mastery")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("Grade 11 Functions (MCR3U)")
                    .font(.title2)
                    .foregroundColor(.secondary)
            }
            
            // Student Info
            VStack(spacing: 15) {
                HStack {
                    Text("Welcome to Math Mastery!")
                        .font(.title3)
                        .fontWeight(.medium)
                    Spacer()
                }
                
                // Stats Cards
                HStack(spacing: 20) {
                    StatCard(
                        icon: "flame.fill",
                        title: "Streak",
                        value: "0",
                        subtitle: "days",
                        color: .orange
                    )
                    
                    StatCard(
                        icon: "bolt.fill",
                        title: "XP",
                        value: "0",
                        subtitle: "points",
                        color: .yellow
                    )
                    
                    StatCard(
                        icon: "clock.fill",
                        title: "Time",
                        value: "0m",
                        subtitle: "studied",
                        color: .blue
                    )
                    
                    StatCard(
                        icon: "chart.line.uptrend.xyaxis",
                        title: "Progress",
                        value: "0%",
                        subtitle: "complete",
                        color: .green
                    )
                }
            }
            
            Spacer()
            
            // Getting Started
            VStack(spacing: 10) {
                Text("Getting Started")
                    .font(.headline)
                
                Text("Select a unit from the sidebar to begin learning. Each lesson is broken down into bite-sized cards that adapt to your learning pace.")
                    .font(.body)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: 400)
            }
        }
        .padding(40)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            LinearGradient(
                gradient: Gradient(colors: [Color.blue.opacity(0.1), Color.clear]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        )
    }
}

struct StatCard: View {
    let icon: String
    let title: String
    let value: String
    let subtitle: String
    let color: Color
    
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: icon)
                .font(.title2)
                .foregroundColor(color)
            
            Text(value)
                .font(.title2)
                .fontWeight(.bold)
            
            Text(title)
                .font(.caption)
                .fontWeight(.medium)
            
            Text(subtitle)
                .font(.caption2)
                .foregroundColor(.secondary)
        }
        .frame(width: 100, height: 100)
        .background(color.opacity(0.1))
        .cornerRadius(12)
    }
}