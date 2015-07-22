class Office < ActiveRecord::Base
  belongs_to :system


has_many :items
end
