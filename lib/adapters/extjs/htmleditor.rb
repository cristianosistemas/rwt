module Rwt
  class HtmlEditor < Rwt::Component
    def render_create
      @config.merge!(:items=>@components) if @components.length > 0
      Rwt << "var #{self}=new Ext.form.HtmlEditor(#{@config.render});"
      generate_events
    end

  end
end