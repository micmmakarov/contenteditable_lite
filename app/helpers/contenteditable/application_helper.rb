module Contenteditable
  module ApplicationHelper


    def ceditable(key, tag, html_params=nil)
       content = Content.find_by_key(key).value
       # content = I18n.t(key)
       #if html_params.present?
       if Contenteditable::Engine.ce_filter.present?
          the_filter = main_app.scope.send(Contenteditable::Engine.ce_filter)
       else
         the_filter = 1
       end

       if the_filter

          content = "this is editable" if content==""
           all_html_params = {}
           all_html_params = {:contenteditable => true, "data-tag" => key}
           all_html_params << html_params if html_params.class == "Hash"
          content_tag(tag, content, all_html_params)
       else

         content_tag(tag, content, all_html_params)

       end

       #else
       #  content_tag(tag, content)
       #end
    end
    def contenteditable_assets

      if Contenteditable::Engine.ce_filter.present?
        the_filter = main_app.scope.send(Contenteditable::Engine.ce_filter)
      else
        the_filter = 1
      end

      if the_filter

        a=javascript_include_tag "contenteditable/contents"
        b=stylesheet_link_tag    "contenteditable/contents", :media => "all"
        c = a + b
        c

      end



    end
    def save_button

      render "contenteditable/tools/save_button"

    end

  end
end
