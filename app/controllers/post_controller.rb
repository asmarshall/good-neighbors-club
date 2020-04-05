class PostController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    # @post = Post.new(post_params)
  end

  def store
    # create a new post object and save to db
    @post = Post.new(post_params)
    puts @post
    if params[:media]
      # upload image to cloudinary
      @image = Cloudinary::Uploader.upload(params[:media])
      @post.media = @image['secure_url']
    end

    if @post.save
      PostMailer.with(post: @post).new_post_email.deliver_later

      flash[:success] = "Thank you for your post submission! We'll review it and get it posted asap"
      redirect_to root_path
    else
      flash.now[:error] = "Your post had some errors. Please check the form and resubmit."
      redirect_to submit_path
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if params[:post][:media]
      @image = Cloudinary::Uploader.upload(params[:post][:media])
      @post.media = @image['secure_url']
    end

    @post.update(
      title: params[:post][:title],
      body: params[:post][:body],
      category: params[:post][:category],
      url: params[:post][:url],
      public: params[:post][:public]
    )

    redirect_to '/welcome'
  end

  private

  def post_params
    {
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      title: params[:title],
      body: params[:body],
      category: params[:category],
      url: params[:url],
      media: params[:media],
      additional_comments: params[:additional_comments]
    }
  end
end
