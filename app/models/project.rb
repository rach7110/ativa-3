class Project < ActiveRecord::Base
	attr_accessible :name, :phase_id
	has_many :posts
	belongs_to :phase

  def self.onboarding
    where(phase_id: 1)
  end

  def self.creative
    where(phase_id: 2)
  end

  def self.design
    where(phase_id: 3)
  end

  def self.development
    where(phase_id: 4)
  end

  def self.implementation
    where(phase_id: 5)
  end

end
