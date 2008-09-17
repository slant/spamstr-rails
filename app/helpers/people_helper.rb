module PeopleHelper
  def add_phone_link label
    link_to_function label do |page|
      page.insert_html :bottom, :phones, :partial => 'shared/phone', :object => Phone.new
    end
  end
end
