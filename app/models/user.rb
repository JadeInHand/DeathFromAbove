# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
	
	validates :name, :presence => true, :uniqueness => true

end
