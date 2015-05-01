class Hero < ActiveRecord::Base

	validates_format_of  :name, with: /\A\D+\z/, message: "isn't a correctly formatted name: e.g. Zeus", allow_blank: false

	validates_format_of :movespeed, with: /\A\d{3}\z/, message: "isn't a correctly formatted move speed: e.g. 420", allow_blank: true

	validates :turnrate, numericality: { greater_than_or_equal_to: 0.0, less_than_or_equal_to: 1.0}

	validates_format_of :sightrange, with: /\A\d{4}\/\d{3,4}\z/, message: "isn't a correctly formatted sight range: e.g. 1800/800", allow_blank: true

end
