int calculatePoints(Map<String, int> team) {
  // Calculate total points for the team
  int totalPoints = 0;
  totalPoints += (team['Free throws'] ?? 0) * 1;
  totalPoints += (team['2 pointers'] ?? 0) * 2;
  totalPoints += (team['3 pointers'] ?? 0) * 3;
  return totalPoints;
}

int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  // Calculate total points for both teams
  int teamAPoints = calculatePoints(teamA);
  int teamBPoints = calculatePoints(teamB);
  
  // Determine the winning team
  if (teamAPoints > teamBPoints) {
    return 1;
  } else if (teamAPoints < teamBPoints) {
    return 2;
  } else {
    return 0;
  }
}