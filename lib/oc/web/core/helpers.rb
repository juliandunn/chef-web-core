# Base module for oc-web-core to be used with other frameworks.
module OC
  module Web
    module Core
      module Helpers
        # Load a partial from templates/#{name}.html
        def oc_partial(name)
          open(
            File.join(
              File.dirname(__FILE__), '../../../../templates', "#{name}.html"
            )
          ).read
        end

        # A title tag
        def oc_title_tag(text = nil)
          "<title>#{text}#{text.present? ? ' | ' : ''}Chef</title>"
        end
      end
    end
  end
end
