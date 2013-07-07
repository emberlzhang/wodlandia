class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :workout

  # This method associates the attribute ":avatar" with a file attachment
  has_attached_file :photo, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }
end
