class Channal < ApplicationRecord
	validates :title,:channal_type,presence: true


	def self.channal_types
		types = [
			["Entertainment","entertainment"],
			["Movies","movies"],
			["Music","music"],
			["Kids","kids"],
			["Religious","religious"],
		]
		return types;
	end

end
