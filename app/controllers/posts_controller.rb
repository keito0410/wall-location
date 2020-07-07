class PostsController < ApplicationControlle
  
  def new
  	@post = Post.new # 入力フォームを作成
  end
  
  def create
  	@post = Post.new(post_params)
  	# 保存が成功した時と失敗した時の条件分岐
  	if @post.save
  		redirect_to @post　#保存された場合の移動先を指定。
  	else
  		@posts = Post.all
  		render 'index' # 保存が失敗した時の移動先
  	end
  end

  def index
  end
  
  def show
  end

  private
    def post_params
      params.require(:post).permit(:location_name, :image_id, :caption, :explanation, :address, :height, :fence, :width )
    end

end