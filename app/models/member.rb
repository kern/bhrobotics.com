class Member < ActiveRecord::Base
  validates :name, :presence => true
  validates :year, :numericality => { :greater_than_or_equal_to => 2005 }, :presence => true
  
  def self.mentors
    where(:mentor => true)
  end
  
  def self.students
    current_year = Time.now.year
    where(:mentor => false).where('year >= ?', current_year)
  end
  
  def self.alumni
    current_year = Time.now.year
    where(:mentor => false).where('year < ?', current_year)
  end
  
  def position
    if mentor?
      'Mentor'
    else
      current_year = Time.now.year
      
      if year >= current_year
        'Student'
      else
        'Alumnus'
      end
    end
  end
end