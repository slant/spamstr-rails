class Person < ActiveRecord::Base
  has_many :phones

  def name
    [self.first_name, self.last_name].join(" ")
  end
end
