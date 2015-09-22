class ClientDatatable < AjaxDatatablesRails::Base

  def_delegators :@view, :link_to, :h, :edit_client_path, :delete, :formata_SimNao

  def sortable_columns
    # Declare strings in this format: ModelName.column_name
    @sortable_columns ||= ['System.nome','Client.nome','Client.email','Client.telefone']
  end

  def searchable_columns
    # Declare strings in this format: ModelName.column_name
    @searchable_columns ||= ['System.nome','Client.nome','Client.email','Client.telefone']
  end

  private

  def data
    records.map do |record|
      [
        record.system.nome,
        record.nome,
        record.email,
        record.telefone,
        link_to("", record, class: "glyphicon glyphicon-zoom-in",  "data-toggle"=>"tooltip",  :title=>'Detalhar') + "    " +
        link_to("", edit_client_path(record), class: "glyphicon glyphicon-pencil","data-toggle"=>"tooltip",  :title=>'Editar') + "  " +
        link_to("", record, method: :delete, class: "glyphicon glyphicon-remove", "data-toggle"=>"tooltip",  :title=>'Excluir',  data: { confirm: 'Are you sure?' })
      ]
    end
  end

  def get_raw_records
    # insert query here
    Client.joins(:system)
  end

  # ==== Insert 'presenter'-like methods below if necessary
end
