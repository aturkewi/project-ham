# == Schema Information
#
# Table name: comparisons
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#


class Comparison < ActiveRecord::Base
 
  def self.compare

    scores = {
      'Jack' => {
        'The Godfather' => 2.5,
        'Gattaca' => 3.5,
        'Matrix' => 3.0,
        'American History X' => 3.5,
        'Back to the future' => 2.5
      },
      'Lisa' => {
        'The Godfather' => 1.5,
        'Gattaca' => 2.5,
        'Matrix' => 1.5,
        'Back to the future' => 5.0
      },
      'Tom' => {
        'The Godfather' => 3.5,
        'Gattaca' => 3.0,
        'American History X' => 1.5,
        'Back to the future' => 5.0
      },
      'Sarah' => {
        'The Godfather' => 3.0,
        'Gattaca' => 3.5,
        'Matrix' => 1.5,
        'American History X' => 5.0,
        'Back to the future' => 1.0
      },
      'Mike' => {
        'The Godfather' => 3.0,
        'Back to the future' => 4.0
      }
    }


    Pearson.coefficient(scores, 'Sarah', 'Lisa')

  end



end
