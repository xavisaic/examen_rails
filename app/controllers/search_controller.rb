class SearchController < ApplicationController
  def search
        # Obtener la consulta de búsqueda desde los parámetros
        @query = params[:query]

        # Buscar chefs cuyos nombres coincidan con la consulta
        @chefs = Chef.where("name LIKE ?", "%#{@query}%")
    
        # Buscar platos cuyos nombres coincidan con la consulta
        @dishes = Dish.where("name LIKE ?", "%#{@query}%")
  end
end
