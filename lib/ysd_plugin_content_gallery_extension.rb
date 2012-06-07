require 'ysd-plugins_viewlistener' unless defined?Plugins::ViewListener

#
# Huasi Profile Extension
#
module Huasi

  class ContentPhotoExtension < Plugins::ViewListener
    include ContentManagerSystem::Support
   
    #
    # Information
    #
    def content_element_info(context={})
      app = context[:app]
      {:id => 'photo', :description => "#{app.t.content.content_photo.description}"} 
    end

    #
    # Renders the tab
    #
    def content_element_form_tab(context={})
      app = context[:app]
      info = content_element_info(context)
      render_tab("#{info[:id]}_form", info[:description])
    end

    #
    # Add fields to edit the photo information in the content form
    #
    def content_element_form(context={})
      
      app = context[:app]
      
      renderer = UIFieldSetRender::FieldSetRender.new('photo', app)      
      photo_form = renderer.render('form', 'em')     
    
    end
    
    #
    # Support to edit the photo information in the content form
    #
    def content_element_form_extension(context={})
    
      app = context[:app]
    
      locals = {:photo_album => SystemConfiguration::Variable.get('content_album_name').value, 
                :width => SystemConfiguration::Variable.get('content_album_photo_width').value, 
                :height => SystemConfiguration::Variable.get('content_album_photo_height').value}
    
      renderer = UIFieldSetRender::FieldSetRender.new('photo', app)      
      photo_form_extension = renderer.render('formextension', 'em', locals)
        
              
    end
    
    #
    # Renders the tab
    #
    def content_element_template_tab(context={})
      app = context[:app]
      info = content_element_info(context)
      render_tab("#{info[:id]}_template", info[:description])
    end    
    
    #
    # Show the photo information in the content render
    #
    def content_element_template(context={})
    
       app = context[:app]
    
       renderer = UIFieldSetRender::FieldSetRender.new('photo', app)      
       photo_template = renderer.render('view', 'em')
                
    end
    
  end
end