class Book < ActiveRecord::Base
    belongs_to :user
    has_attached_file :image
    has_attached_file :resource
    
    validates_attachment :image, presence: true,
    content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] },
    Message: 'Only images allowed'
    
    validates_attachment :resource, presence: true, 
    content_type: {content_type: "application/pdf" }, 
    Message: 'Only PDF allowed'
    
end
