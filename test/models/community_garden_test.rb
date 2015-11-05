# == Schema Information
#
# Table name: community_gardens
#
#  id         :integer          not null, primary key
#  name       :string
#  borough_id :integer
#  size       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class CommunityGardenTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
