class PostsController < ApplicationController
  
  def new
  	@post = Post.new # 入力フォームを作成
  end
  
  def create
  	@post = Post.new(post_params)
  	# 保存が成功した時と失敗した時の条件分岐
  	if @post.save
  		redirect_to posts_path #保存された場合の移動先を指定。
  	else
  		@posts = Post.all
  		render new_post_path # 保存が失敗した時の移動先
  	end
  end

  def index
    @posts = Post.all
  end
  
  def show
    @post = Post.find(params[:id])
  end

  private
    def post_params
      params.require(:post).permit(:location_name, :image, :caption, :explanation, :address, :height, :fence, :width )
    end

end