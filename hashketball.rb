require 'pry'

# Write your code here!


def game_hash
  game_hash = {
    :home => {
      :team_name => "Brooklyn Nets", 
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
  ppg = []
  
  game_hash.each do |team_loc, team_data|
    #binding.pry
    team_data.each do |element, data|
      #binding.pry
      if element == :players
        data.each do |name, data_item|
          #binding.pry
          if name == player_name
            data_item.each{|x,y| ppg.push(y) }
              #binding.pry
          end
        end
      end
    end   
  end
  ppg[2]
end



def shoe_size(player_name)
  shoe = []
  
  game_hash.each do |team_loc, team_data|
    #binding.pry
    team_data.each do |element, data|
      #binding.pry
      if element == :players
        data.each do |name, data_item|
          #binding.pry
          if name == player_name
            data_item.each{|x,y| shoe.push(y) }
              #binding.pry
          end
        end
      end
    end   
  end
  shoe[1]
end



def team_colors(team_name)
  color = []
  
  game_hash.each do |team_loc, team_data|
    #binding.pry
      if team_data[:team_name] == team_name
        team_data[:colors].collect do |team_col|
          #binding.pry
            color.push(team_col)
        end
      end
  end
  color
end



def team_names
  team = []
  
  game_hash.each do |team_loc, team_data|
    #binding.pry
      team.push(team_data[:team_name])
  end
  team
end



def player_numbers(team_name)
  player_numbrs = []
  
  game_hash.each do |team_loc, team_data|
    #binding.pry
      if team_data[:team_name] == team_name
        team_data[:players].each do |element, data|
          #binding.pry
            player_numbrs.push(data[:number])
        end
      end
  end
  player_numbrs
end



def player_stats(player_name)
  stats = {}
  
  game_hash.each do |team_loc, team_data|
    #binding.pry
      team_data.each do |element, data|
        #binding.pry
          if element == :players
           data.each do |name, data_item|
            #binding.pry
              if name == player_name
                stats = data_item
              end
          end
        end  
      end
  end
  stats
end



def big_shoe_rebounds
  big_rebounds = ""
  player_shoe = 0
  
  game_hash.each do |team_loc, team_data|
    #binding.pry
    team_data[:players].each do |element, data|
      #binding.pry
      if data[:shoe] > player_shoe
        player_shoe = data[:shoe]
        big_rebounds = data[:rebounds]
      end
    end
  end
  big_rebounds
end  
  

