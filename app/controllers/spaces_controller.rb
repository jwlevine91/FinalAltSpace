class SpacesController < ApplicationController
  before_action :set_space, only: [:show, :edit, :update, :destroy]
  def index
  	@spaces = Space.all
  end

  def show
    @comment = Comment.new
  end

  def new
  	@space = Space.new
  end

  def edit
  end

  # POST /spaces
  # POST /spaces.json
  def create
    @space = Space.new(space_params)

    respond_to do |format|
      if @space.save
        format.html { redirect_to @space, notice: 'Space was successfully created.' }
        format.json { render :show, status: :created, location: @space }
      else
        format.html { render :new }
        format.json { render json: @space.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spaces/1
  # PATCH/PUT /spaces/1.json
  def update
    respond_to do |format|
      if @space.update(space_params)
        format.html { redirect_to @space, notice: 'Space was successfully updated.' }
        format.json { render :show, status: :ok, location: @space }
      else
        format.html { render :edit }
        format.json { render json: @space.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spaces/1
  # DELETE /spaces/1.json
  def destroy
    @space.destroy
    respond_to do |format|
      format.html { redirect_to spaces_url, notice: 'Space was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_space
  	@space = Space.find_by(name: params[:id])
  end

  def space_params
  	params.require(:space).permit(:name, :user_id)
  end

end
