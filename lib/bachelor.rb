require 'pry'


def get_first_name_of_season_winner(data, season)
  winner = ""
  
  data[season].each do |season_info|
    #binding.pry
      if season_info["status"].downcase == "winner"
        winner = season_info["name"]
      end
  end
  winner.split(" ")[0]
end




def get_contestant_name(data, occupation)
  job = ""
  
  data.each do |szn_number, szn_info|
    #binding.pry
      szn_info.each do |cont|
        #binding.pry
          cont.each do |season_key, season_value|
            #binding.pry
              if season_value == occupation
                job = cont["name"]
              end
          end
      end
  end
  job
end




def count_contestants_by_hometown(data, hometown)
  hometown_counter = 0
  
  data.each do |szn_number, szn_info|
    #binding.pry
      szn_info.each do |cont|
        #binding.pry
          cont.each do |season_key, season_value|
            #binding.pry
              if season_value == hometown
                hometown_counter+=1
              end
          end
      end
  end
  hometown_counter
end




def get_occupation(data, hometown)
  data.each do |szn_number, szn_info|
    #binding.pry
      szn_info.each do |cont|
        #binding.pry
          if cont.has_value?(hometown)
            return cont["occupation"]
          end
      end
  end
end




def get_average_age_for_season(data, season)
  hometown_counter = 0
  
  data.each do |szn_number, szn_info|
    #binding.pry
      szn_info.each do |cont|
        #binding.pry
          cont.each do |season_key, season_value|
            #binding.pry
              if season_value == hometown
                hometown_counter+=1
              end
          end
      end
  end
  hometown_counter
end
