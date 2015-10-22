# == Schema Information
#
# Table name: highscores
#
#  id         :integer          not null, primary key
#  name       :text
#  score      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Highscore < ActiveRecord::Base

end
