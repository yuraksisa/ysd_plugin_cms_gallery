require 'ysd-plugins' unless defined?Plugins::Plugin
require 'ysd_plugin_content_photo_extension'

Plugins::SinatraAppPlugin.register :content_photo do

   name=        'content photo'
   author=      'yurak sisa'
   description= 'Add photo to the content'
   version=     '0.1'
   hooker       Huasi::ContentPhotoExtension
   sinatra_extension Sinatra::ContentPhoto
end

