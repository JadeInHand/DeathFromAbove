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
	before_save :downcase_name
	validates :name, :presence => true, :uniqueness => true

	def downcase_name
		self.name = name.downcase
	end

end
