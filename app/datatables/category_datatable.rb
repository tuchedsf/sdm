class CategoryDatatable < AjaxDatatablesRails::Base

  def_delegators :@view, :link_to, :h, :edit_category_path, :delete, :formata_SimNao


  def sortable_columns
    # Declare strings in this format: ModelName.column_name
    @sortable_columns ||= ['category.descricao', 'category.ativo']
  end

  def searchable_columns
    # Declare strings in this format: ModelName.column_name
    @searchable_columns ||= ['category.descricao', 'category.ativo']
  end

  private

  def data
    records.map do |record|
      [
        record.id,
        record.system.nome,
        record.descricao,
        formata_SimNao(record.ativo)
        #link_to("Show", record)
        #link_to("Edit", edit_category_path(record))
        #link_to ('Destroy', record, method: :delete, data: { confirm: 'Are you sure?' })
      ]
    end
  end

  def get_raw_records
    # insert query here
    Category.all
  end

  # ==== Insert 'presenter'-like methods below if necessary
end
