require "pry"

#game_hash
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
    },
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




#home_team_name
def home_team_name
  game_hash[:home][:team_name]
end


#num_points_scored
def num_points_scored(name)
  game_hash.each do |location, team_data|
    team_data[:players].each do |player_name, stats|
      if player_name == name
        return team_data[:players][name][:points]
      end
    end
  end
end


#shoe_size
def shoe_size(name)
  game_hash.each do |location, team_data|
    team_data[:players].each do |player_name, stats|
      if player_name == name
        return team_data[:players][name][:shoe]
      end
    end
  end
end


#team_colors
def team_colors(team_name)
  game_hash.each do |location, team_data|
    team_data.each do |team_name_key, team_name_value|
      if team_name_value == team_name
        return team_data[:colors]
      end
    end
  end
end


#team_names
def team_names
  team_names = [game_hash[:home][:team_name], game_hash[:away][:team_name]]
  team_names
end


#player_numbers
def player_numbers(team_name)
  all_jersey_numbers = []
  game_hash.each do |location, team_data|
    if team_data[:team_name] == team_name
      team_data[:players].each do |player_name, stats|
        all_jersey_numbers << stats[:number]
      end
    end
  end
  all_jersey_numbers
end


#player_stats
def player_stats(name)
  game_hash.each do |location, team_data|
    team_data[:players].each do |player_name, stats|
      if player_name == name
        return stats
      end
    end
  end
end


#big_shoe_rebounds
def big_shoe_rebounds
  #find the player with the largest shoe size
  find_biggest_shoe = 0
  rebounds = 0
  game_hash.each do |location, team_data|
    team_data[:players].each do |player_name, stats|
      if stats[:shoe] > find_biggest_shoe
        find_biggest_shoe = stats[:shoe]
      end
      if stats[:shoe] == find_biggest_shoe
        rebounds = stats[:rebounds]
      end
    end
  end
  rebounds
end






    def num_points_scored(name)
      game_hash.each do |location, team_data|
        team_data[:players].each do |player_name, stats|
          if player_name == name
            return team_data[:players][name][:points]
          end
        end
      end
    end
