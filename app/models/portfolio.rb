class Portfolio < ApplicationRecord
	has_many :technologies
	include Placeholder
	validates_presence_of :title, :body, :main_image, :thumb_image



	#different methods to prefore a query.........

	#def self.angular
	#	where(subtitle: 'Angular')
	#end

	#scope :ruby_on_rails_portfolio_items, -> {where(subtitle: 'Angular')}

	after_initialize :set_defaults #-> rails callback

	def set_defaults
		self.main_image  ||= Placeholder.image_generator(height: '600',width: '400') #-> ||= -> will set a image if the value is nil
		self.thumb_image ||= Placeholder.image_generator(height: '350',width: '200') #-> ||= -> will set a image if the value is nil
	end
end
