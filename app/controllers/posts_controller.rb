class PostsController < ApplicationController

  def index
      @posts = Post.all.order('created_at desc')    
  end
  
  def create
      new_post = Post.new(name: params[:name], content: params[:content])
      if new_post.save
        redirect_to root_path
      else
        redirect_to new_post_path
      end    
      
  end
  
  def new
  end
  
  def edit
  end  
  
  def destroy
     @post = Post.find_by(id: params[:id])
     @post.destroy
     redirect_to root_path
  end  

  
end
