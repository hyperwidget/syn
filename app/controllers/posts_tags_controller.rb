class PostsTagsController < ApplicationController
  # GET /posts_tags
  # GET /posts_tags.json
  def index
    @posts_tags = PostsTag.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts_tags }
    end
  end

  # GET /posts_tags/1
  # GET /posts_tags/1.json
  def show
    @posts_tag = PostsTag.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @posts_tag }
    end
  end

  # GET /posts_tags/new
  # GET /posts_tags/new.json
  def new
    @posts_tag = PostsTag.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @posts_tag }
    end
  end

  # GET /posts_tags/1/edit
  def edit
    @posts_tag = PostsTag.find(params[:id])
  end

  # POST /posts_tags
  # POST /posts_tags.json
  def create
    @posts_tag = PostsTag.new()
    @posts_tag.post_id = params[:post_id]
    @posts_tag.tag_id = Tag.find_by_name(params[:tags]).id

    post = Post.find(params[:post_id])
    tag = Tag.find_by_name(params[:tags])

    tags = post.tags

    respond_to do |format|
      if tags.include?(tag)
        format.html { redirect_to edit_post_path(post),flash: { error: 'Tag already attached to post'} }
        format.json { render json: @posts_tag.errors, status: :unprocessable_entity }
        format.js 
      else
        @posts_tag.save
        format.html { redirect_to edit_post_path(post), notice: 'Posts tag was successfully created.' }
        format.json { render json: @posts_tag, status: :created, location: @posts_tag }
        format.js
      end
    end
  end

  # PUT /posts_tags/1
  # PUT /posts_tags/1.json
  def update
    @posts_tag = PostsTag.find(params[:id])

    respond_to do |format|
      if @posts_tag.update_attributes(params[:posts_tag])
        format.html { redirect_to @posts_tag, notice: 'Posts tag was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @posts_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts_tags/1
  # DELETE /posts_tags/1.json
  def destroy
    @posts_tag = PostsTag.find(params[:id])
    @posts_tag.destroy

    respond_to do |format|
      format.html { redirect_to posts_tags_url }
      format.json { head :no_content }
    end
  end

  def add_tag_to_post
    @posts_tag = PostsTag.new()
    @posts_tag.post_id = params[:post_id]
    @posts_tag.tag_id = Tag.find_by_name(params[:tags]).id

    post = Post.find(params[:post_id])
    tag = Tag.find_by_name(params[:tags])

    tags = post.tags

    respond_to do |format|
      if tags.include?(tag)
        format.html { redirect_to edit_post_path(post),flash: { error: 'Tag already attached to post'} }
        format.json { render json: @posts_tag.errors, status: :unprocessable_entity }
        format.js 
      else
        @posts_tag.save
        format.html { redirect_to edit_post_path(post), notice: 'Posts tag was successfully created.' }
        format.json { render json: @posts_tag, status: :created, location: @posts_tag }
        format.js
      end
    end
  end
end
