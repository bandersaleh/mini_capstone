# app/controllers/api/photos_controller.rb
class Api::PhotosController < ApplicationController
  def index
    @photos = Photo.all
    render "index.json.jb"
  end

  def create
    @photo = Photo.new(
      name: params[:name],
      price: params[:price],
    )
    @photo.save
    render "show.json.jb"
  end

  # def is_discounted
  #   if price: params[:price] < 10
  #     return true
  #   else
  #     return false
  #   end
  # end

  # def tax
  # end

  # def total
  # end

  def show
    @photo = Photo.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @photo = Photo.find_by(id: params[:id])
    @photo.name = params[:name] || @photo.name
    @photo.price = params[:price] || @photo.price
    @photo.save
    render "show.json.jb"
  end

  def destroy
    photo = Photo.find_by(id: params[:id])
    photo.destroy
    render json: {message: "Photo successfully destroyed."}
  end
end