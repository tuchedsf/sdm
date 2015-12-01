class SystemDatatable < AjaxDatatablesRails::Base

  def_delegators :@view, :link_to, :h, :edit_system_path, :delete


  def sortable_columns
    # Declare strings in this format: ModelName.column_name
    @sortable_columns ||= ['System.id','System.nome','System.responsavel']
  end

  def searchable_columns
    # Declare strings in this format: ModelName.column_name
    @searchable_columns ||= ['System.id','System.nome','System.responsavel']
  end

  private

  def data
    records.map do |record|
      [
        record.id,
        record.nome,
        record.responsavel,
        link_to("", record, class: "glyphicon glyphicon-zoom-in",  "data-toggle"=>"tooltip",  :title=>'Detalhar') + "    " +
        link_to("", edit_system_path(record), class: "glyphicon glyphicon-pencil","data-toggle"=>"tooltip",  :title=>'Editar') + "  " +
        link_to("", record, method: :delete, class: "glyphicon glyphicon-remove", "data-toggle"=>"tooltip",  :title=>'Excluir',  data: { confirm: 'Are you sure?' })
      ]
    end
  end

  def get_raw_records
      System.all
  end

end
