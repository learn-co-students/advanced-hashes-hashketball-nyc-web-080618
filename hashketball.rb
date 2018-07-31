# Write your code here!
require "pry"

def game_hash
game = {
  :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => {
        "Alan Anderson" => {
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1 },
        "Reggie Evans" => {
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7 },
        "Brook Lopez" => {
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15 },
        "Mason Plumlee" => {
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5 },
        "Jason Terry" => {
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1 }
      }
    },
  :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => {
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
          slam_dunks: 5 },
        "Ben Gordon" => {
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0 },
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
#binding.pry
end

def num_points_scored(player_name)
  #takes in an argument of a players name and returns the number of
  #points scored for that player
  arr = []

  game_hash.each do |team_key, team_value|
    team_value.each do |i, data|
      if i == :players
        data.each do |name, item|
          if name == player_name
            item.each { |k,v| arr << v }
          end
        end
      end
    end
  end
    return arr[2]
end


def shoe_size(player_name)
  arr_shoe = []

  game_hash.each do |team_key, team_value|
    team_value.each do |i, data|
      if i == :players
        data.each do |name, item|
          if name == player_name
            item.each { |k,v| arr_shoe << v }
          end
        end
      end
    end
  end
    return arr_shoe[1]
end

def team_colors(team)
  arr_colors = []

  game_hash.each do |k, v|
    if v[:team_name] == team
      v[:colors].map do | c |
      arr_colors << c
  end
  return arr_colors

    end
  end
end

def team_names
  arr_team = []

  game_hash.each do |team_key, team_value|
    arr_team << team_value[:team_name]
end
  return arr_team
end

def player_numbers(players)
  arr = []

  game_hash.each do |key, value|
    if value[:team_name] == players
      value[:players].each do |i, x|
        arr << x[:number]
    end
  end
end
  return arr
end

def player_stats(name)
  new_hash = {}

  game_hash.each do |key, value|
    value.each do |k, v|
      if k == :players
        v.each do |player_name, item|
          if player_name == name
            new_hash = item
          end
        end
      end
    end
  end
  new_hash
end

def big_shoe_rebounds
  #returns the number of rebound of the
  rebounds = ""
  shoe_size = 0

  game_hash.each do |key, value|
    value[:players].each do |k, v|
      if v[:shoe] > shoe_size
        shoe_size = v[:shoe]
        rebounds = v[:rebounds]
      end
    end
  end
  rebounds
end
