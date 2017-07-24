class Pin < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, :styles => {:large => "900x900", :medium => "900x900", :thumb => "100x100>"}
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end