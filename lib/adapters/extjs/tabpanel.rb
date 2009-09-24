module Rwt
  class TabPanel
    def render_create
      @config.merge!(:items=>@components) if @components.length > 0

      Rwt << "var #{self}=new Ext.TabPanel(#{@config.render});"
      generate_events
    end

  end
end
