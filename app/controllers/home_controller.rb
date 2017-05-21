class HomeController < ApplicationController
  def index
    @posts = Post.all
    
  end
  
  def write
    @post = Post.create(:title => params[:title], :content => params[:content])
    redirect_to "/home/index"
  end
  
  
  def comment
    Comment.create(:title => params[:title], :content => params[:content], :post_id => params[:post_id])
    redirect_to '/home/index'
  end
  
  def delete
    Comment.find(params[:comment_id]).destroy
    redirect_to "/"
  end
  
end
