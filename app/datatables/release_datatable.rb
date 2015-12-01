class ReleaseDatatable < AjaxDatatablesRails::Base

  def_delegators :@view, :link_to, :h, :edit_release_path, :delete, :formata_data

  def sortable_columns
    # Declare strings in this format: ModelName.column_name
    @sortable_columns ||= ['System.nome', 'Release.versao', 'Release.dt_implantacao']
  end

  def searchable_columns
    # Declare strings in this format: ModelName.column_name
    @searchable_columns ||= ['System.nome', 'Release.versao', 'Release.dt_implantacao']
  end

  private

  def data
    records.map do |record|
      [
        record.system.nome,
        record.versao,
        formata_data(record.dt_implantacao),
        link_to("", record, class: "glyphicon glyphicon-zoom-in",  "data-toggle"=>"tooltip",  :title=>'Detalhar') + "    " +
        link_to("", edit_release_path(record), class: "glyphicon glyphicon-pencil","data-toggle"=>"tooltip",  :title=>'Editar') + "  " +
        link_to("", record, method: :delete, class: "glyphicon glyphicon-remove", "data-toggle"=>"tooltip",  :title=>'Excluir',  data: { confirm: 'Are you sure?' }),
        '<textarea class="form-control" rows="3" cols="100" name="descricao" readonly="true">'  + record.descricao + '</textarea>'
      ]
    end
  end

  def get_raw_records
    #Rails.logger.debug "DEBUG: params are #{perfilSelected}"
    if isAdministrador
      Release.joins(:system)
    else
      Release.joins(:system).system_atual(systemSelected)
    end
  end

  def systemSelected
    @systemSelected ||= options[:systemSelected]
  end

  def isAdministrador
    @isAdministrador ||= options[:isAdministrador]
  end


  # ==== Insert 'presenter'-like methods below if necessary
end
