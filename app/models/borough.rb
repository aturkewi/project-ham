class Borough < ActiveRecord::Base


  def self.populate_db
    # Note: area is in square miles
    create(name:"Bronx", population:1438159, area:42)
    create(name:"Brooklyn", population:2621793, area:71)
    create(name:"Manhattan", population:1636268, area:23)
    create(name:"Queens", population:2321580, area:109)
    create(name:"Staten Island", population:473279, area:58)
  end

  def attendance
    array = self.districts.map do |district|
      district.attendance
    end
    avg_attendance=(array.inject{ |sum, x| sum + x } / array.size).round(2)
    avg_attendance
  end

end
