require 'pry'

def game_hash
  game_hash = {
    :home => {
      team_name: "Brooklyn Nets",
      colors: ["Black","White"],
      players: {
        "Alan Anderson" => {
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        "Reggie Evans" => {
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        "Brook Lopez" => {
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        "Mason Plumlee" => {
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        "Jason Terry" => {
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      }
    },
    :away => {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise","Purple"],
      players: {
        "Jeff Adrien" => {
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        "Bismak Biyombo" => {
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        },
        "DeSagna Diop" => {
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        "Ben Gordon" => {
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        "Brendan Haywood" => {
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      }
    }
  }
end



def num_points_scored(player_name)
  hash = game_hash
  score = nil
  hash.each do |key1,value1|
    value1.each do |key2,value2|
      if key2 == :players
        value2.each do |key3,value3|
          if key3 == player_name
            value3.each do |key4,value4|
              if key4 == :points
                score = value4
              end
            end
          end
        end
      end
    end
  end
  score
end

def shoe_size(player_name)
  hash = game_hash
  size = nil
  hash.each do |key1,value1|
    value1.each do |key2,value2|
      if key2 == :players
        value2.each do |key3,value3|
          if key3 == player_name
            value3.each do |key4,value4|
              if key4 == :shoe
                size = value4
              end
            end
          end
        end
      end
    end
  end
  size
end

def team_colors(team_name)
  hash = game_hash
  colors = nil
  hash.each do |key1,value1|
    value1.each do |key2,value2|
      if value2 == team_name
        colors = value1[:colors]
      end
    end
  end
  colors
end

def team_names
  hash = game_hash
  names = []
  hash.each do |key1,value1|
    value1.each do |key2,value2|
      if key2 == :team_name
        names << value2
      end
    end
  end
  names
end

def player_numbers(team_name)
  hash = game_hash
  numbers = []
  hash.each do |key1,value1|
    if value1[:team_name] == team_name
      value1[:players].each do |player,attributes|
        attributes.each do |stat,num|
          if stat == :number
            numbers << num
          end
        end
      end
    end
  end
  numbers
end

def player_stats(player_name)
  hash = game_hash
  stats = Object.new
  hash.each do |key1,value1|
    value1.each do |key2,value2|
      if key2 == :players
        value2.each do |key3,value3|
          if key3 == player_name
            stats = value3
          end
        end
      end
    end
  end
  stats
end

def big_shoe_rebounds
  biggest_shoe = 0
  biggest_shoe_rebound = Object.new
  biggest_shoe_player = ""
  hash = game_hash
  hash.each do |key1,value1|
    value1.each do |key2,value2|
      if key2 == :players
        value2.each do |key3,value3|
          value3.each do |key4,value4|
            if key4 == :shoe && value4 > biggest_shoe
              biggest_shoe = value4
              biggest_shoe_player = key3
            end
          end
        end
      end
    end
  end
  hash.each do |key1,value1|
    value1.each do |key2,value2|
      if key2 == :players
        value2.each do |key3,value3|
          if key3 == biggest_shoe_player
            value3.each do |key4,value4|
              if key4 == :rebounds
                biggest_shoe_rebound = value4
              end
            end
          end
        end
      end
    end
  end
  biggest_shoe_rebound
end
