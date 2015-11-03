# == Schema Information
#
# Table name: crimes
#
#  id                 :integer          not null, primary key
#  borough_id         :integer
#  murder             :integer
#  rape               :integer
#  robbery            :integer
#  assault            :integer
#  burglary           :integer
#  grand_larceny      :integer
#  grand_larceny_auto :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class CrimeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
