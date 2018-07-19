# Write your code here!
require "pry"

def game_hash
  
  game_hash = {
    home: {
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
    
  away: {
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
  
  player_points = nil
  game_hash.each do  |location, team_data|
    
    team_data.each do |attribute, data|
      
      if attribute == :players
        data.each do |name, values|
          
          
          if name == player_name
            values.each do |stat, figure|
              
              if stat == :points
                player_points = figure
              end
            end  
          end  
        end
      end  
    end
  end
  player_points
end

def shoe_size(player_name)
  
  player_shoe_size = nil
  game_hash.each do  |location, team_data|
    
    team_data.each do |attribute, data|
      
      if attribute == :players
        data.each do |name, values|
          
          
          if name == player_name
            values.each do |stat, figure|
              
              if stat == :shoe
                player_shoe_size = figure
              end
            end  
          end  
        end
      end  
    end
  end
  player_shoe_size
end  

def team_colors(team_name)
  
  colors = nil
  game_hash.each do  |location, team_data|
    team_data.each do |attribute, data|
     if team_data.values.include?(team_name) && attribute == :colors
        colors= data
      end  
    end
  end
  colors
end  


def team_names()
  team_name_array = [ ]
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if attribute == :team_name
        team_name_array.push(data)
      end
    end  
  end  
  team_name_array
end  

def player_numbers(team_name)
  jersey_array = [ ]
  
  game_hash.each do  |location, team_data|
    team_data.each do |attribute, data|
     if team_data.values.include?(team_name) && attribute == :players
       data.each do |player_name, stats|
         stats.each do |stat, figure|
           if stat == :number
            jersey_array.push(figure)
            end
          end
        end
      end
    end
  end
  jersey_array
end  

def player_stats(player_name)
 player_stats = { }
  game_hash.each do  |location, team_data|
    team_data.each do |attribute, data|
      if attribute == :players
        data.each do |name, values|
          if name == player_name
            player_stats = values
          end  
        end
      end  
    end
  end
  player_stats
end  

def big_shoe_rebounds()

  shoe_size_hash = { }

  #populate an array of the player names
  player_names_array = [ ]
  game_hash.each do  |location, team_data|
    team_data.each do |attribute, data|
      if attribute == :players
        data.each do |name, values|
          player_names_array.push(name)
        end
      end  
    end
  end
  
  #create hash with names and sizes
  player_names_array.each do |name|
    shoe_size_hash[name] = shoe_size(name)
    
  end
  
  #return player's name with max shoe size
  player_name = shoe_size_hash.max_by { |name, shoe_size|  shoe_size}[0]
    
  #get number of rebounds with this name  

  player_rebounds = nil
  game_hash.each do  |location, team_data|
    
    team_data.each do |attribute, data|
      
      if attribute == :players
        data.each do |name, values|
          
          
          if name == player_name
            values.each do |stat, figure|
              
              if stat == :rebounds
                player_rebounds = figure
              end
            end  
          end  
        end
      end  
    end
  end
  player_rebounds



end

