# == Schema Information
#
# Table name: comparisons
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#


class Comparison

  attr_accessor :data1, :data2, :normalizer
  attr_reader :correlation

  def initialize(data1, data2, normalizer)
    @data1 = data1
    @data2 = data2
    @normalizer = normalizer
  end

  def get_hash(data_set_name,normalizer)
      Borough.all.each_with_object({}) do |borough, hash|
      hash[borough.id] = borough.send(data_set_name,normalizer)
    end
  end

  def calculate_correlation
    data_hash_1 = get_hash(data1,normalizer)
    data_hash_2 = get_hash(data2,normalizer)

    scores = {
      first_data:data_hash_1,  # => {1=>14, 2=>26, 3=>24, 4=>11, 5=>3}
      second_data:data_hash_2 # => {1=>88.21, 2=>89.6, 3=>90.17, 4=>91.99, 5=>90.98}
    }
    @correlation = Pearson.coefficient(scores, :first_data, :second_data)
  end
 
end
