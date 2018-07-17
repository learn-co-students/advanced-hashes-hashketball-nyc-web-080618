
def game_hash
  nba_hash = {
    :home => {
      :team_name => 'Brooklyn Nets',
      :colors => ["Black", "White"],
      :players => {
        "Alan Anderson" => {
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1
        },
        "Reggie Evans" => {
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7
        },
        "Brook Lopez" => {
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15
        },
        "Mason Plumlee" => {
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 12,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5
        },
        "Jason Terry" => {
          :number => 31,
          :shoe => 15,
          :points => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1
        }
      }
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => {
        "Jeff Adrien" => {
          :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2
        },
        "Bismak Biyombo" => {
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 7,
          :blocks => 15,
          :slam_dunks => 10
        },
        "DeSagna Diop" => {
          :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5
        },
        "Ben Gordon" => {
          :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0
        },
        "Brendan Haywood" => {
          :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 22,
          :blocks => 5,
          :slam_dunks => 12
        }
      }
    }
  }
end



def num_points_scored(player_name)
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if game_hash[location][attribute].class == Hash
        data.each do |variable1, variable2|
          if variable1 == player_name
            variable2.each do |variable4, variable5|
              if variable4 == :points
                return variable5
              end
            end
          end
        end
      end
    end
  end
end


def shoe_size(player_name)
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if game_hash[location][attribute].class == Hash
        data.each do |variable1, variable2|
          if variable1 == player_name
            variable2.each do |variable4, variable5|
              if variable4 == :shoe
                return variable5
              end
            end
          end
        end
      end
    end
  end
end


def team_colors(team_name)
  game_hash.each do |variable1, variable2|
    variable2.each do |variable3, variable4|
      if variable4 == team_name
        return game_hash[variable1][:colors]
      else
      end
    end
  end
end

def team_names
empty_array = []
  game_hash.each do |variable1, variable2|
    variable2.each do |variable3, variable4|
    if variable3 == :team_name
    empty_array.push(variable4)
    end
    end
  end
  return empty_array
end



def player_numbers(team)
  player_hash = {}
  final_array = []
  game_hash.each do |variable1, variable2|
    variable2.each do |variable3, variable4|
      if variable4 == team
        player_hash = game_hash[variable1][:players]
     end
    end
  end

    player_hash.each do |variable5, variable6|
      #variable6.each do |variable7, variable8|
        final_array.push(player_hash[variable5][:number])
    #return "#{variable7}: #{variable8} "
      #end
    end
  return final_array.sort()
end

def player_stats(player_name)

  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if game_hash[location][attribute].class == Hash
        data.each do |variable1, variable2|
          if variable1 == player_name
            return variable2
          end
        end
      end
    end
  end
end


def big_shoe_rebounds
  player_array = []
  shoe_array = []
  player_hash = {}
  game_hash.each do |variable1, variable2|
    variable2.each do |variable3,variable4|
      if variable4 = :players
      player_array = (game_hash[variable1][:players].keys)

    end
  end
end

player_array.each do |player|
  shoe_array.push(shoe_size(player))

end
  position = ''
  position = shoe_array.index(shoe_array.max)

num_points_scored(player_array[position+1])

end
