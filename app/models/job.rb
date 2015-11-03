# == Schema Information
#
# Table name: jobs
#
#  id           :integer          not null, primary key
#  borough_id   :integer
#  labor_force  :integer
#  employed     :integer
#  unemployed   :integer
#  unemployment :float
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#



class Job < ActiveRecord::Base

  def self.create_csv
    csv_text = File.read('public/labor_data.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      Job.create!(row.to_hash)
    end
  end


  # def self.import(file)

  #   CSV.foreach(file.path, headers: true) do |row|
  #     raise
  #     Job.create! row.to_hash
  #   end
  # end
end
