class Phone < ActiveRecord::Base
  belongs_to :person
  attr_accessor :should_destroy

  validates_length_of :number,
    :is => 10,
    :allow_nil => true

  validates_inclusion_of :label,
    :in => ["home", "mobile", "work", "fax"],
    :allow_nil => true,
    :message => "must be either 'home', 'mobile', 'work' or 'fax'"

  def should_destroy?
    should_destroy.to_i == 1
  end
end
