
# Note: area is in square miles
Borough.create(name:"Bronx", population:1438159, area:42)
Borough.create(name:"Brooklyn", population:2621793, area:71)
Borough.create(name:"Manhattan", population:1636268, area:23)
Borough.create(name:"Queens", population:2321580, area:109)
Borough.create(name:"Staten Island", population:473279, area:58)
#Populated Borough db

Adapters::FluClient.new.get_json_data
# Seeds Flu data

Adapters::HospitalClient.new.get_json_data
# Seeds Hospital data

Adapters::DistrictClient.new.get_json_data

Job.create_csv
# Seeds Job data

