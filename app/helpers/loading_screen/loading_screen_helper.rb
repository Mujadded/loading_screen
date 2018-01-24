module LoadingScreen::LoadingScreenHelper

  def loading_screen(options={})
    content_tag :div, '', class: 'loading_screen-spinner' do
      if options[:gif].present?
        content_tag :div do
          image_tag(options[:gif], id: 'loading_screen-spinner-image')
        end
      else
        content_tag :div, '', id: 'loading_screen-spinner-css'
      end
    end
  end
end
