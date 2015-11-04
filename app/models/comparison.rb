# == Schema Information
#
# Table name: comparisons
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#


class Comparison < ActiveRecord::Base

  attr_accessor :data1, :data2, :normalize, :correlation

  def initialize(data1, data2, normalize, correlation)
    @data1 = data1
    @data2 = data2
    @normalize = normalize
    @correlation = correlation
  end

  # def magic_box
  #   #User visits index, selects data sets from dropdown. Then, data is sent to show page
  #   #need method that returns data in hash form
  #   #need method that calculates correlation
  #   #
  # end


  def self.get_hash(data_set_name)
   Borough.all.each_with_object({}) do |borough, hash|
     hash[borough.id] = borough.send(data_set_name)
   end
  end

  # def self.correlation(data_set_1, data_set_2)
  #    data_hash_1 = get_hash(data_set_1)
  #    data_hash_2 = get_hash(data_set_2)

  #    scores = {
  #      data_hash_1,
  #      data_hash_2
  #    }
  #    @correlation = Pearson.coefficient(scores, data_set_1, data_set_2)
  # end
 
end
