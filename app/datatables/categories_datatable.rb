class CategoriesDataTable #SS< AjaxDatatablesRails::Base
 # include Rails.application.routes.url_helpers
  #delegate :params, :h, :link_to, to: :@view

  def_delegators :@view, :link_to, :params, :h,



  def initialize(view)
    @view = view
  end

  def as_json(options = {})
    {
      sEcho: params[:sEcho].to_i,
      aaData: data
    }
  end

  private
    def data
    categories.map do |category|
       [
        #  Rails.logger.debug "DEBUG: params are #{h(category.system.nome)}"
            h(category.system.nome)
            #h(category.descricao),
            #h(formata_SimNao(category.ativo)),
            #link_to ('Show', category),
            #link_to ('Edit', edit_category_path(category)),
            #link_to ('Destroy', category, method: :delete, data: { confirm: 'Are you sure?' })


        ]

      end
    end

    def categories
      @categories ||= fetch_categories
    end

    def fetch_categories
      categories = Category.all
    end
end
