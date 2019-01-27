require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array

  holiday_supplies[:summer][:fourth_of_july][1]
  
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays || We are going to iterate over the holiday_hash down to
  
#   holiday_hash.each do |season, data|
#     data.each do |attribute, value|
#       if attribute == :christmas && attribute == :new_years
#     value.each do |thing|
#       thing << supply
#     end
#   end
# end
# end

holiday_hash[:winter][:christmas] << supply
holiday_hash[:winter][:new_years] << supply

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  
  holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  
  holiday_hash[season][holiday_name] = supply_array

end


def all_winter_holiday_supplies(holiday_hash)
  updated = []
  holiday_hash[:winter].collect do |season, data|
        updated << data
        end
      updated.flatten ## iterated in MULTIPLE ways and was only missing FLAT.
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.


  holiday_hash.each do |season, data|
    season = season.capitalize
    season = season.to_s
    data = data.to_s
      puts "#{season}: #{data},
    end

end


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  myArray = []
  
holiday_hash.each do |season, data|
   data.collect do |holiday, value|
      if value.include?("BBQ")
        myArray << holiday
    end
  end
end
myArray.flatten
end







