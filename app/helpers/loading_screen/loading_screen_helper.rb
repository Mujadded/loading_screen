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
  end

  def gif_handler(options)
    content_tag :div, '', class: 'loading_screen-gif' do
      image_tag(options[:gif])
    end
  rescue Sprockets::Rails::Helper::AssetNotFound => e
    raise LoadingScreen::InvalidOptionError.new "'#{options[:gif]}' file does not exist"
  end

  def css_handler(options)
    content_tag :div, '', class: 'loading_screen-css' do
      if options[:style] == :double_bounce
        load_double_bounce
      elsif options[:style] == :default
        load_rotate_square
      else
        raise LoadingScreen::InvalidOptionError.new "Wrong style name: '#{options[:style]}'"
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
end
