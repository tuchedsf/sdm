class Office < ActiveRecord::Base
  belongs_to :system
  has_many :items

  validates_presence_of :system_id, :identificador, :siged, :dataRecebimento, :ocorrencia

end
