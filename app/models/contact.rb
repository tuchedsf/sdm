class Contact
  include ActiveModel::Model

  attr_accessor :name, :string
  attr_accessor :email, :string
  attr_accessor :content, :text

  validates_presence_of :name, :email, :content
  validates_format_of :email, with: /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i
  validates_length_of :content, :maximum => 500

end
