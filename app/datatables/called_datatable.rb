class CalledDatatable < AjaxDatatablesRails::Base

  def_delegators :@view, :link_to, :edit_called_path, :delete, :formata_tipo, :formata_data

  def sortable_columns
    # Declare strings in this format: ModelName.column_name
    @sortable_columns ||= ['System.nome','Called.tipo','Category.descricao','Called.identificador', 'Called.data']
  end

  def searchable_columns
    # Declare strings in this format: ModelName.column_name
    @searchable_columns ||= ['System.nome','Called.tipo','Category.descricao','Called.identificador', 'Called.data']
  end

  private

  def data
    records.map do |record|
      [
        # comma separated list of the values for each cell of a table row
        # example: record.attribute,
        record.system.nome,
        #formata_tipo(record.tipo),
        record.tipo,
        record.category.descricao,
        record.identificador,
        formata_data(record.data),
        link_to("", record, class: "glyphicon glyphicon-zoom-in",  "data-toggle"=>"tooltip",  :title=>'Detalhar') + "    " +
        link_to("", edit_called_path(record), class: "glyphicon glyphicon-pencil","data-toggle"=>"tooltip",  :title=>'Editar') + "  " +
        link_to("", record, method: :delete, class: "glyphicon glyphicon-remove", "data-toggle"=>"tooltip",  :title=>'Excluir',  data: { confirm: 'Are you sure?' }),
        '<textarea class="form-control" rows="3" cols="100" name="descricao" readonly="true">'  + record.descricao + '</textarea>'
      ]
    end
  end

  def get_raw_records
    #Rails.logger.debug "DEBUG: params are #{perfilSelected}"
    if isAdministrador
      Called.joins(:system, :category)
    else
      Called.joins(:system,:category).system_atual(systemSelected)

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
