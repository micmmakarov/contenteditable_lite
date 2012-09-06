module Contenteditable
  module ApplicationHelper

    def ceditable(key, tag, html_params=nil)
       content = Content.find_by_key(key).value
       # content = I18n.t(key)
       #if html_params.present?
            content = "this is editable" if content==""
           all_html_params = {}
           all_html_params = {:contenteditable => true, "data-tag" => key}
          content_tag(tag, content, all_html_params)
       #else
       #  content_tag(tag, content)
       #end
    end

  end
end
