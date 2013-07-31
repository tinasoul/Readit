class PagesController < ApplicationController
  def index
    params[:per_page] ||= 25
    params[:page]     ||= 1

    @links = Link.order('created_at DESC').page(params[:page]).per_page(params[:per_page])
  end

  def search
    # copying code here so this means this code should be at higher level like on index action
    params[:per_page] ||= 25
    params[:page]     ||= 1

    @links = Link.search(params[:q])
    render "index"
  end  


end
