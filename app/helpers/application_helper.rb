module ApplicationHelper
  def avatar_url(user, size)
    gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
    "http://gravatar.com/avatar/#{gravatar_id}.png?s=#{size}"
  end
  
  def status(status)
    if status == 0
      content_tag "Oczekujący", "Oczekujący", class: 'btn btn-default btn-xs'
    elsif status == 1
      content_tag "Zaakceptowany", "Zaakceptowany", class: 'btn btn-success btn-xs'
    elsif status == 2
      content_tag "Odrzucony", "Odrzucony", class: 'btn btn-danger btn-xs'
    end
  end
end
