require 'pry'
class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/post" do
    post = Post.all
    post.to_json
  end

 get '/posts/:id' do
  post = Post.find_by(id: params[:id])
  post.to_json
 end


  patch  "/posts/:id" do
    post = Post.find(params[:id])
  post.update(
    like_button: params[:like_button]
  )
  post.to_json
  end 

  delete  "/posts/:id" do 
      post = Post.find(params[:id])
      post.destroy
      post.to_json
    end

  post '/posts' do
    post = Post.create(
      phase: params[:phase],
      topic: params[:topic],
      location: params[:location],
      thread_post: params[:thread_post]
    )
    post.to_json
  end

  private
  # def post_params

  # end
end