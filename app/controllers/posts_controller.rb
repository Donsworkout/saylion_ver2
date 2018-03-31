class PostsController < ApplicationController
before_action :check_ownership, only: [:destroy]

  def index
      @posts = Post.all.order('created_at desc')    
  end
  
  def create
      new_post = Post.new(name: params[:name], password: params[:password], content: params[:content])
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
     @post.destroy
     redirect_to root_path
  end  

  def check_ownership
      @post = Post.find_by(id: params[:id])
      @password = params[:password]
      if current_user==nil 
          redirect_to posts_path if @post.password != @password
      else      
         redirect_to posts_path if current_user.email!="donsdev@insomenia.com"
      end     
  end   
end
