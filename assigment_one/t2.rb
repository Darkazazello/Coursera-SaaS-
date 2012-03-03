class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  s1 = game[0][1].to_s.downcase
  s2 = game[1][1].to_s.downcase
  if s1.eql?(s2) 
    return game[0]
  else if s1.eql?("r")
         if (s2.eql?("s"))
           return game[0]
         else 
           if (s2.eql?("p"))
             return game[1]
           else
             raise NoSuchStrategyError
           end
         end
       else
         if s1.eql?("s")
           if s2.eql?("r")
             return game[1]
           else
             if s2.eql?("p")
               return game[0]
             else
               raise NoSuchStrategyError
             end
           end
         else 
           if s1.eql?("p")
             if s2.eql?("r")
               return game[0]
             else
               if s2.eql?("s")
                 return game[1]
               else
                 raise NoSuchStrategyError
               end
             end
           else
             raise NoSuchStrategyError
           end
         end
       end  
  end
end

def rps_tournament_winner(game)
  if game[0][0].kind_of?(Array)
    return rps_game_winner([rps_tournament_winner(game[0])] +
            [rps_tournament_winner(game[1])])
  else
    rps_game_winner(game)
  end
end

puts rps_game_winner([ [ "Armando", "R" ], [ "Dave", "S" ] ])
puts rps_tournament_winner([
[
[ ["Armando", "P"], ["Dave", "S"] ],
[ ["Richard", "R"], ["Michael", "S"] ],
],
[
[ ["Allen", "S"], ["Omer", "P"] ],
[ ["David E.", "R"], ["Richard X.", "P"] ]
]
])
