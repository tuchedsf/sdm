class OfficeDatatable < AjaxDatatablesRails::Base

  def_delegators :@view, :link_to, :edit_office_path, :delete, :formata_data


  def sortable_columns
    # Declare strings in this format: ModelName.column_name
    @sortable_columns ||= ["System.nome","Office.identificador", "Office.sipro", "Office.siged","Office.dataRecebimento", "Office.ocorrencia" ]
  end

  def searchable_columns
    # Declare strings in this format: ModelName.column_name
    @searchable_columns ||= ["System.nome","Office.identificador", "Office.sipro", "Office.siged","Office.dataRecebimento", "Office.ocorrencia" ]
  end

  private

  def data
    records.map do |record|
      [
        # comma separated list of the values for each cell of a table row
        # example: record.attribute,
        record.system.nome,
        record.identificador,
        record.sipro,
        record.siged,
        formata_data(record.dataRecebimento),
        record.ocorrencia,
        link_to("", record, class: "glyphicon glyphicon-zoom-in",  "data-toggle"=>"tooltip",  :title=>'Detalhar') + "    " +
        link_to("", edit_office_path(record), class: "glyphicon glyphicon-pencil","data-toggle"=>"tooltip",  :title=>'Editar') + "  " +
        link_to("", record, method: :delete, class: "glyphicon glyphicon-remove", "data-toggle"=>"tooltip",  :title=>'Excluir',  data: { confirm: 'Are you sure?' })

      ]
    end
  end

  def get_raw_records
    # insert query here
    Office.joins(:system)
  end

  # ==== Insert 'presenter'-like methods below if necessary
end
