module MoviesHelper
    def sort_link(column, title)
        direction = (params[:sort] == column && params[:direction] == "asc") ? "desc" : "asc"
        arrow = params[:sort] == column ? (params[:direction] == "asc" ? "⬆️" : "⬇️") : ""
        css_class = "sortable-link"
        css_class += " sorted sorted-#{params[:direction]}" if params[:sort] == column

        allowed_params = params.permit(:sort, :direction, :page, :search).to_h
        allowed_params[:sort] = column
        allowed_params[:direction] = direction

        link_to "#{title} #{arrow}".html_safe, movies_path(allowed_params), class: css_class
    end
end
