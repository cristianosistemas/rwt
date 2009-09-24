module Rwt
  class Component
    def render_create
      # Include components as items in extjs component
      @config.merge!(:items=>@components) if @components.length > 0

      # Render extjs code
      Rwt << "var #{self}=new Ext.Component(#{@config.render});"

      generate_events

    end

    def generate_events
      @event.each do |evt,block|
        Rwt << "#{self}.on('#{evt}',function("
        Rwt << @event_params[evt].join(',')
        Rwt << "){"
        block.call
        Rwt << "});"
      end
    end
  end
end
