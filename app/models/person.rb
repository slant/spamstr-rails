class Person < ActiveRecord::Base
  has_many :phones, :dependent => :destroy
  after_update :save_phones
  validates_associated :phones

  def name
    [self.first_name, self.last_name].join(" ")
  end

  def phone_attributes=(phone_attributes)
    phone_attributes.each do |attributes|
      if attributes[:id].blank?
        phones.build(attributes)
      else
        phone = phones.detect { |p| p.id == attributes[:id].to_i }
        phone.attributes = attributes
      end
    end
  end

  def save_phones
    phones.each do |p|
      if t.should_destroy?
        p.destroy
      else
        p.phone(false)
      end
    end
  end
end
