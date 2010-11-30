class Entry < ActiveRecord::Base
  has_one :player
  
  has_attached_file :photo
  #attr_protected :photo_file_name, :photo_content_type, :photo_size
end
