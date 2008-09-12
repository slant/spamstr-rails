# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def title_and_company(person)
    [person.title, (link_to person.company, person.company_url)].join(" at ")
  end

  def phone_number_and_label(phone)
    "#{number_to_phone(phone.number, :area_code => true)} (#{phone.label})"
  end

  def get_avatar(person)
    image_tag("http://www.gravatar.com/avatar.php?gravatar_id=#{MD5.new(person.email)}", :alt => 'Avatar', :class => 'avatar')
  end
end
