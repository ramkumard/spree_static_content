Spree::BaseController.class_eval do
  
  before_filter :src_redirect
  
  def src_redirect
    slug = ''
    if params[:src] and request.fullpath == "/"
      sources = Spree::Page.where("user_sources is not null and visible = true").map{|page| [page.slug, page.user_sources]}
      sources.each do |u_slug,src|
        slug = u_slug  if src.split(",").include?(params[:src])
      end
      redirect_to "/#{slug}"
    end
  end
   
end