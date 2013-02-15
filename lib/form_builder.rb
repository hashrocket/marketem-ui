class FormBuilder < ActionView::Helpers::FormBuilder

  def label(method, text = nil, options = {}, &block)
    text = text || method.to_s.humanize
    if object.errors.any?
      error_message = object.errors[method].first
      error_span = @template.content_tag(:span, error_message, class: 'error')
      text = (text << " #{error_span}").html_safe
    end
    super(method, text.titleize, options, &block)
  end

end
