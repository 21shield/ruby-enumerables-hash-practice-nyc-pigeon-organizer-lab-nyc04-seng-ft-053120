require 'pry'

def nyc_pigeon_organizer(data)
  organized_data = {}
  data.each do |key, value|  
    value.each do |inner_key, inner_value|
      inner_value.each do |element|
        if !organized_data[element] 
          organized_data[element]= {}
        end
        if !organized_data[element][key]
          organized_data[element][key] = []
        end
          organized_data[element][key] << inner_key.to_s
      end
    end
  end
  p organized_data
end

