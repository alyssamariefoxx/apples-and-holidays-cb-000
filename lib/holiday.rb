require 'pry'
holiday_hash = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}
def second_supply_for_fourth_of_july(holiday_hash)
    holiday_hash[:summer][:fourth_of_july][1]
end

#Write a method that adds a supply to both Winter holidays.
def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday_hash_2|
    puts "#{season.capitalize}:"
  holiday_hash_2.each do |holiday, supplies|

  cap_holiday = holiday.split('_').each {|i| i.capitalize!}.join(' ')
       puts "  #{cap_holiday}: #{supplies.join(', ')}"
  end
end
end

def all_holidays_with_bbq(holiday_hash)
  array = []
  holiday_hash.each do |season, holiday_hash_2|
    holiday_hash_2.each do |holiday, supplies_hash|
      supplies_hash.each do |supplies|
        if supplies == "BBQ"
          array << holiday
        end
      end
    end
  end
  array
end
