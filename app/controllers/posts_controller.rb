class PostsController < ApplicationController
before_action :authenticate_admin!, :except => [:show]

  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(post_params)
    r = ISO3166::Country.find_country_by_alpha2(@post.country)
    
    @post.region = r.region
    @post.subregion = r.subregion
    
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end
    
  def show
    @post = Post.find(params[:id])
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    if @post.update(params[:post].permit(:title, :description, :image_url))
        redirect_to @post
    else
        render 'edit'
    end
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    
    redirect_to root_path
  end
  
  private
  
  def post_params
    params.require(:post).permit(:title, :image_url, :country)
  end
  
end
