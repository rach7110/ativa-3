class Project < ActiveRecord::Base
	attr_accessible :name, :phase_id
	has_many :posts
	belongs_to :phase


	default_scope order('name ASC')
	scope :onboarding, -> { where(phase_id: 1) }
	scope :creative, -> { where(phase_id: 2) }
	scope :design, -> { where(phase_id: 3) }
	scope :development, -> { where(phase_id: 4) }
	scope :implementation, -> { where(phase_id: 5) }

  # def self.onboarding
  #   where(phase_id: 1)
  # end

  # def self.creative
  #   where(phase_id: 2)
  # end

  # def self.design
  #   where(phase_id: 3)
  # end

  # def self.development
  #   where(phase_id: 4)
  # end

  # def self.implementation
  #   where(phase_id: 5)
  # end

end
