class Item < ActiveRecord::Base
belongs_to :office
belongs_to :client

validates_presence_of :office_id, :client_id, :numProcesso, :nomeServidor, :mantis, :operacao
validates_inclusion_of :migrado, in: [true, false]


end
