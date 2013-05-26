module PicturesHelper
	def join_tags(picture)
    picture.tags.map { |t| t.name }.join(", ")
  end
end
