module LoadingScreen::LoadingScreenHelper

  def loading_screen(options={})
    options[:style] = :default unless options[:style].present?

    content_tag :div, '', class: 'loading_screen-spinner' do
      if options[:gif].present?
        gif_handler options
      else
        css_handler options
      end
    end
  rescue NameError => e
    error_handler
  end

  def gif_handler(options)
    content_tag :div, '', class: 'loading_screen-gif' do
      image_tag(options[:gif])
    end
  rescue AssetNotFound => e
    raise Exception.NameError
  end

  def css_handler(options)
    content_tag :div, '', class: 'loading_screen-css' do
      if options[:style] == :double_bounce
        load_double_bounce
      elsif options[:style] == :default
        load_rotate_square
      else
        raise Exception.NameError
      end
    end
  end

  def load_double_bounce
    [].tap do |array|
      array << content_tag(:div, '', id: 'loading_screen-double_bounce1')
      array << content_tag(:div, '', id: 'loading_screen-double_bounce2')
    end.join.html_safe
  end

  def load_rotate_square
    content_tag :div, '', id: 'loading_screen-rotating-square'
  end

  def error_handler
    content_tag :div, '', class: 'loading_screen-spinner' do
      content_tag :div, 'Something went wrong!', class: 'loading_screen-error'
    end
  end
end
