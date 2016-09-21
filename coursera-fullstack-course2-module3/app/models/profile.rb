class Profile < ActiveRecord::Base
  belongs_to :user
  validate :full_name
  validate :male_or_female
  validate :cannot_be_sue

  def full_name
      errors.add(:first_name, "cannot be blank") if first_name.nil? && last_name.nil?
  end

  def male_or_female
    unless gender == "male" || gender == "female"
      errors.add(:gender, "Must be female or male")
    end
  end
  
  def cannot_be_sue
    errors.add(:first_name, "cannot be Sue") if first_name == "Sue"
  end
  
  def self.get_all_profiles min, max
    Profile.where('birth_year BETWEEN ? ANd ?', min, max).order('birth_year ASC')
  end
end
