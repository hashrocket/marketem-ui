module ApplicationHelper

  def active_link_to(text, path, options={})
    if /^#{url_for(path)}/ =~ request.path
      options[:class] = "#{options[:class]} active".strip
    end
    link_to text, path, options
  end

end
