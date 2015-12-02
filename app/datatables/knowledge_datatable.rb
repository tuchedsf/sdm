class KnowledgeDatatable < AjaxDatatablesRails::Base

  def_delegators :@view, :link_to, :h, :edit_knowledge_path, :delete


  def sortable_columns
    @sortable_columns ||= ['Knowledge.id','System.nome','User.email', 'Knowledge.titulo']
  end

  def searchable_columns
    @searchable_columns ||= ['Knowledge.id','System.nome','User.email', 'Knowledge.titulo']
  end

  private

  def data
    records.map do |record|
      [
        record.id,
        record.system.nome,
        record.user.email,
        record.titulo,
        link_to("", record, class: "glyphicon glyphicon-zoom-in",  "data-toggle"=>"tooltip",  :title=>'Detalhar') + "    " +
        link_to("", edit_knowledge_path(record), class: "glyphicon glyphicon-pencil","data-toggle"=>"tooltip",  :title=>'Editar') + "  " +
        link_to("", record, method: :delete, class: "glyphicon glyphicon-remove", "data-toggle"=>"tooltip",  :title=>'Excluir',  data: { confirm: 'Are you sure?' })
      ]
    end
  end

  def get_raw_records
    #Rails.logger.debug "DEBUG: params are #{perfilSelected}"
    if isAdministrador
      Knowledge.joins(:system,:user)
    else
      Knowledge.joins(:system,:user).system_atual(systemSelected)
    end
  end

  def systemSelected
    @systemSelected ||= options[:systemSelected]
  end

  def isAdministrador
    @isAdministrador ||= options[:isAdministrador]
  end
end
