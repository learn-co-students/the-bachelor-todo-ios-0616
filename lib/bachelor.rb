
#require './spec/fixtures/contestants.json'
require 'json'
#file = File.read('spec/fixtures/contestants.jso')

  hashz = JSON.parse(File.read('spec/fixtures/contestants.json'))
  #hash = 'spec/fixtures/contestants.json'
def get_first_name_of_season_winner(data, season)
  data[season].each do |cont|
    if cont["status"] == "Winner"
      return cont["name"].split(' ').first
    end
  end

  # "season 19":[
  #    {
  #       "name":"Ashley Iaconetti",
  #       "age":"26",
  #       "hometown":"Great Falls, Virginia",
  #       "occupation":"Nanny/Freelance Journalist",
  #       "status":""
  #    },
  # code here

end



def get_contestant_name(data, occupation)
  # code here
  data.each do |season, cont|
    cont.each do |one|
      if one["occupation"] == occupation
        return one["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, person|
    person.each do |info|
      if info["hometown"] == hometown
        counter +=1
      end
    end
  end
  counter
  # code here
end

def get_occupation(data, hometown)
  data.each do |season, person|
    person.each do |info|
      if info["hometown"] == hometown
        return info["occupation"]
      end
    end
  end
  # code here
end




def get_average_age_for_season(data, season)
  # code here
  number_of_people = 0
  age_total = 0
  data[season].each do |info|
    age_total += (info["age"]).to_i
    number_of_people += 1
  end
  return (age_total/number_of_people.to_f).round
end
