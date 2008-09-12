class Phone < ActiveRecord::Base
  belongs_to :person

  validates_length_of :number, :is => 10
  validates_inclusion_of :label, :in => ["home", "mobile", "work", "fax"], :message => "must be either 'home', 'mobile', 'work' or 'fax'"
end
