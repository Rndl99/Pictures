class Picture < ActiveRecord::Base
	
	mount_uploader :picture, PictureUploader

	attr_accessible :description, :name, :picture, :tags_attributes

	has_many :comments, :dependent => :destroy
	has_many :tags, :dependent => :destroy

	validates :picture, :presence => true
	validates :name, :presence => true
					
	
  	accepts_nested_attributes_for :tags, :allow_destroy => :true,
    	:reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }	
	
end
