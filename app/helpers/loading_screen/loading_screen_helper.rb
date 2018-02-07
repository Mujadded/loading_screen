module LoadingScreen::LoadingScreenHelper

  @background = nil
  @color = nil

  def loading_screen(options={})
    options[:style] = :default unless options[:style]
    @background = 'background-color: ' + options[:background] if options[:background]
    @color = 'background-color: ' + options[:color] if options[:color]
    content_tag :div, '', class: 'loading_screen-spinner', style: @background do
      if options[:gif].present?
        gif_handler options
      else
        css_handler options
      end
    end
  end

  private

  def gif_handler(options)
    content_tag :div, '', class: 'loading_screen-gif' do
      image_tag(options[:gif])
    end
  rescue Sprockets::Rails::Helper::AssetNotFound => e
    raise LoadingScreen::InvalidOptionError.new "'#{options[:gif]}' file does not exist"
  end

  def css_handler(options)
    case options[:style]
    when :double_bounce
      multiple_div_content 2, 'loading_screen-double-bounce'
    when :rectangle_bounce
      content_tag :div, '', class: 'loading_screen-rect' do
        multiple_div_content 5, 'loading_screen-rect'
      end
    when :wandering_cubes
      content_tag :div, '', class: 'loading_screen-cube' do
        multiple_div_content 2, 'loading_screen-cube'
      end
    when :cube_grid
      content_tag :div, '', class: 'loading_screen-grid-cube' do
        multiple_div_content 9, 'loading_screen-grid-cube'
      end
    when :default
      content_tag :div, '', id: 'loading_screen-rotating-square', style: @color
    else
      raise LoadingScreen::InvalidOptionError.new "Wrong style name: '#{options[:style]}'"
    end
  end

  def multiple_div_content(number_of_div, id_name)
    [].tap do |array|
      number_of_div.times do |i|
        array << content_tag(:div, '', id: "#{id_name}#{i + 1}", style: @color)
      end
    end.join.html_safe
  end
end
