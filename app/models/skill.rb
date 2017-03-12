class Skill < ApplicationRecord
	include Placeholder

	validates_presence_of :title, :percent_utilized

	after_initialize :set_defaults #-> rails callback

	def set_defaults
		self.badge  ||= Placeholder.image_generator(height: '250',width: '250') #-> ||= -> will set a image if the value is nil
	end
end
