# 🏈 Super Bowl Analysis (1967-2020)

📊 **SQL-based project analyzing Super Bowl data**, exploring team performances, MVPs, and scoring trends.

## 🔍 Project Overview
- Analyzes **Super Bowl winners, MVPs, and score trends**.
- Uses SQL to answer questions like:
  - 🏆 Which teams have won the most Super Bowls?
  - 🎖️ Who are the most awarded MVPs?
  - 📈 What are the average point differentials?

## 📂 Files
- `superbowl_analysis.sql` → Contains all SQL queries.
- `superbowl.sql` → Dataset.

## 🔧 SQL Queries Example

SELECT winning_team, COUNT(*) AS total_wins
FROM super_bowl
GROUP BY winning_team
ORDER BY total_wins DESC;

## 📊 Key Insights
  - Patriots & Steelers lead with 6 Super Bowl Wins.
  - Tom Brady has the most Super Bowl MVPs (4 times).
  - The average point differential is ~ 14 points.

## 📬 Connect
  - GitHub: Kingserb34
