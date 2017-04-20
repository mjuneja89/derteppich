class Carpet < ActiveRecord::Base
	mount_uploader :photo, PhotoUploader

def self.search(search)  
   if search
      Carpet.where('description ILIKE ?', "%#{search}%")
    end
end 

end
