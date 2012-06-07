require 'ysd_md_content'
require 'ysd_md_fieldset_photo'

#
# It represents the photo information attached to a content
#
module ContentManagerSystem
  
  # Opens the class Content to include the content photo
  class Content
    include FieldSet::Photo
  end
  
end #ContentManagerSystem

