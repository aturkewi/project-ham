require 'json'
require 'open-uri'
require 'pry'

class School 

  def attendance
    file = File.read('./app/models/schools/attendance.json')
    data_hash = JSON.parse(file)
  end

  # [{"count"=>20, "item"=>"91.18"},
  # {"count"=>19, "item"=>"89.01"},
  # {"count"=>18, "item"=>"89.28"},
  # {"count"=>17, "item"=>"91.13"},
  # {"count"=>16, "item"=>"89.08"},
  # {"count"=>15, "item"=>"91.34"},
  # {"count"=>14, "item"=>"86.75"},
  # {"count"=>13, "item"=>"87.15"},
  # {"count"=>12, "item"=>"89.27"},
  # {"count"=>11, "item"=>"88.92"},
  # {"count"=>10, "item"=>"89.84"},
  # {"count"=>9, "item"=>"87.33"},
  # {"count"=>8, "item"=>"89.56"},
  # {"count"=>7, "item"=>"89.41"},
  # {"count"=>6, "item"=>"91.27"},
  # {"count"=>5, "item"=>"85.55"},
  # {"count"=>4, "item"=>"89.67"},
  # {"count"=>3, "item"=>"89.83"},
  # {"count"=>2, "item"=>"87.81"},
  # {"count"=>1, "item"=>"92.77"}]


  def report_cards
    file = File.read('./app/models/schools/report_cards.json')
    data_hash = JSON.parse(file)
  end

  def sat_scores
    file = File.read('./app/models/schools/sat_scores.json')
    data_hash = JSON.parse(file)
  end

end 

school = School.new
school.attendance