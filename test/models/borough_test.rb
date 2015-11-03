# == Schema Information
#
# Table name: boroughs
#
#  id         :integer          not null, primary key
#  name       :string
#  area       :integer
#  population :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class BoroughTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
