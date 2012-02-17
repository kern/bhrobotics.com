class MemberPassword < ActiveRecord::Base
  def self.valid?(password)
    real_password = first
    if real_password
      password == real_password.password
    else
      create :password => password
    end
  end
end
