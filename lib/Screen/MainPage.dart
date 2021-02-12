import 'package:basketball_score_keeper/Widgets/ScoreButton.dart';
import 'package:basketball_score_keeper/Widgets/TeamName.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var _teamAScore = 0;
  var _teamBScore = 0;
  var _teamACurrentScore = 0;
  var _teamBCurrentScore = 0;

  void changeScore(int teamIndex, int score) {
    setState(() {
      if (teamIndex == 1) {
        _teamACurrentScore = score;
      } else if (teamIndex == 2) {
        _teamBCurrentScore = score;
      } else {
        return;
      }
    });
  }

  void resetScores() {
    setState(() {
      _teamAScore = 0;
      _teamBScore = 0;
      _teamBCurrentScore = 0;
      _teamACurrentScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Center(
            child: Text(
              "COURT COUNTER",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(),
                    margin: EdgeInsets.symmetric(
                      vertical: 12.0,
                      horizontal: 12.0,
                    ),
                    child: Container(
                      child: Column(
                        children: [
                          TeamName(title: "Team A"),
                          Container(
                            child: Center(
                              child: Text(
                                _teamACurrentScore.toString(),
                                style: TextStyle(
                                  fontSize: 65.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 12.0),
                          ScoreButton(
                            title: "+ Three Points",
                            onPressed: () {
                              _teamAScore += 3;
                              changeScore(1, _teamAScore);
                            },
                          ),
                          SizedBox(height: 30.0),
                          ScoreButton(
                            title: "+ Two Points",
                            onPressed: () {
                              _teamAScore += 2;
                              changeScore(1, _teamAScore);
                            },
                          ),
                          SizedBox(height: 30.0),
                          ScoreButton(
                            title: "Free Throw",
                            onPressed: () {
                              _teamAScore += 1;
                              changeScore(1, _teamAScore);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(),
                    margin: EdgeInsets.symmetric(
                      vertical: 12.0,
                      horizontal: 12.0,
                    ),
                    child: Container(
                      child: Column(
                        children: [
                          TeamName(title: "Team B"),
                          Container(
                            child: Center(
                              child: Text(
                                _teamBCurrentScore.toString(),
                                style: TextStyle(
                                  fontSize: 65.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 12.0),
                          ScoreButton(
                            title: "+ Three Points",
                            onPressed: () {
                              _teamBScore += 3;
                              changeScore(2, _teamBScore);
                            },
                          ),
                          SizedBox(height: 30.0),
                          ScoreButton(
                            title: "+ Two Points",
                            onPressed: () {
                              _teamBScore += 2;
                              changeScore(2, _teamBScore);
                            },
                          ),
                          SizedBox(height: 30.0),
                          ScoreButton(
                            title: "Free Throw",
                            onPressed: () {
                              _teamBScore += 1;
                              changeScore(2, _teamBScore);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 30.0),
                child: ScoreButton(
                  title: "RESET",
                  onPressed: () {
                    resetScores();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
