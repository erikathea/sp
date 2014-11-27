class Patient < ActiveRecord::Base
  attr_accessible :birthday, :contact, :first_name, :last_name, :occupation, :sex, :status
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :birthday, presence: true
  validates :contact, presence: true, numericality: true, length: { minimum: 8 }
  
  def self.compute_age(dob)
  	now = Date.today
  	return( now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1))
  end
end
