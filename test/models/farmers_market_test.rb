# == Schema Information
#
# Table name: farmers_markets
#
#  id         :integer          not null, primary key
#  name       :string
#  borough_id :integer
#  day        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class FarmersMarketTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
