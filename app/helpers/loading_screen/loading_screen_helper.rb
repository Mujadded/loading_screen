module LoadingScreen::LoadingScreenHelper

  def loading_screen(options={})
    content_tag :div, class: "spinner" do
      if options[:gif].present?
        content_tag :div do
          image_tag(options[:gif], id: 'spinner-image')
        end
      else
        tag :div, id: "spinner-css"
      end
    end
  end
end
