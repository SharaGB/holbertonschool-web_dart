int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int pointTeamA = 0;
  int pointTeamB = 0;

  teamA.forEach((key, value) {
    if (key == 'Free throws') {
      pointTeamA = pointTeamA + value;
    }

    if (key == '2 pointer') {
      pointTeamA = pointTeamA + (value * 2);
    }

    if (key == '3 pointer') {
      pointTeamA = pointTeamA + (value * 3);
    }
  });

  teamB.forEach((key, value) {
     if (key == 'Free throws') {
      pointTeamB = pointTeamB + value;
    }

    if (key == '2 pointer') {
      pointTeamB = pointTeamB + (value * 2);
    }

    if (key == '3 pointer') {
      pointTeamB = pointTeamB + (value * 3);
    }
  });

  if (pointTeamA > pointTeamB) {
    return 1;
  }

  if (pointTeamA < pointTeamB) {
    return 2;
  }

  return 0;
}
