Adapters::FluClient.new.get_json_data
# Seeds Flu data

Adapters::HospitalClient.new.get_json_data
# Seeds Hospital data

Job.create_csv
# Seeds Job data

Borough.populate_db