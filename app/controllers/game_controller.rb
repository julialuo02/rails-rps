class GameController < ApplicationController
  def rock
    player_move = 0
    @player_move_text = move_name(player_move)
  
    opponent_move = rand(3)
    @opponent_move_text = move_name(opponent_move)
  
    if opponent_move == 1
      @result = -1 # Loss
    elsif opponent_move == 0
      @result = 0 # Tie
    else
      @result = 1 # Win
    end
  
    render({ template: "game_templates/game" })
  end
  

  def paper
    player_move = 1
    @player_move_text = move_name(player_move)
  
    opponent_move = rand(3)
    @opponent_move_text = move_name(opponent_move)
  
    if opponent_move == 2
      @result = -1 # Loss
    elsif opponent_move == 1
      @result = 0 # Tie
    else
      @result = 1 # Win
    end
  
    render({ template: "game_templates/game" })
  end
  

  def scissors
    player_move = 2
    @player_move_text = move_name(player_move)
  
    opponent_move = rand(3)
    @opponent_move_text = move_name(opponent_move)
  
    if opponent_move == 0
      @result = -1 # Loss
    elsif opponent_move == 2
      @result = 0 # Tie
    else
      @result = 1 # Win
    end
  
    render({ template: "game_templates/game" })
  end
  
  def move_name(move)
    if move == 0
      "rock"
    elsif move == 1
      "paper"
    else
      "scissors"
    end
  end

  def home
    render template: "game_templates/home"
  end
end
