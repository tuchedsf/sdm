class CategoryDatatable < AjaxDatatablesRails::Base

  def_delegators :@view, :link_to, :h, :edit_category_path, :delete, :formata_SimNao


  def sortable_columns
    # Declare strings in this format: ModelName.column_name
    @sortable_columns ||= ['Category.id','System.nome','Category.descricao', 'Category.ativo']
  end

  def searchable_columns
    # Declare strings in this format: ModelName.column_name
    @searchable_columns ||= ['Category.id','System.nome','Category.descricao','Category.ativo']
  end

  private

  def data
    records.map do |record|
      [
        record.id,
        record.system.nome,
        record.descricao,
        formata_SimNao(record.ativo),
       link_to("", record, class: "glyphicon glyphicon-zoom-in",  "data-toggle"=>"tooltip",  :title=>'Detalhar') + "    " +
       link_to("", edit_category_path(record), class: "glyphicon glyphicon-pencil","data-toggle"=>"tooltip",  :title=>'Editar') + "  " +
       link_to("", record, method: :delete, class: "glyphicon glyphicon-remove", "data-toggle"=>"tooltip",  :title=>'Excluir',  data: { confirm: 'Are you sure?' })
      ]
    end
  end

  def get_raw_records
    #Rails.logger.debug "DEBUG: params are #{perfilSelected}"
    if isAdministrador 
      Category.joins(:system)
    else
      Category.joins(:system).system_atual(systemSelected)

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
