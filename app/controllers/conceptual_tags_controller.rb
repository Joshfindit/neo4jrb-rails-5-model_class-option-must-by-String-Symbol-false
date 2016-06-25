class ConceptualTagsController < ApplicationController
  before_action :set_conceptual_tag, only: [:show, :edit, :update, :destroy]

  # GET /conceptual_tags
  # GET /conceptual_tags.json
  def index
    @conceptual_tags = ConceptualTag.all
  end

  # GET /conceptual_tags/1
  # GET /conceptual_tags/1.json
  def show
  end

  # GET /conceptual_tags/new
  def new
    @conceptual_tag = ConceptualTag.new
  end

  # GET /conceptual_tags/1/edit
  def edit
  end

  # POST /conceptual_tags
  # POST /conceptual_tags.json
  def create
    @conceptual_tag = ConceptualTag.new(conceptual_tag_params)

    respond_to do |format|
      if @conceptual_tag.save
        format.html { redirect_to @conceptual_tag, notice: 'Conceptual tag was successfully created.' }
        format.json { render :show, status: :created, location: @conceptual_tag }
      else
        format.html { render :new }
        format.json { render json: @conceptual_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conceptual_tags/1
  # PATCH/PUT /conceptual_tags/1.json
  def update
    respond_to do |format|
      if @conceptual_tag.update(conceptual_tag_params)
        format.html { redirect_to @conceptual_tag, notice: 'Conceptual tag was successfully updated.' }
        format.json { render :show, status: :ok, location: @conceptual_tag }
      else
        format.html { render :edit }
        format.json { render json: @conceptual_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conceptual_tags/1
  # DELETE /conceptual_tags/1.json
  def destroy
    @conceptual_tag.destroy
    respond_to do |format|
      format.html { redirect_to conceptual_tags_url, notice: 'Conceptual tag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conceptual_tag
      @conceptual_tag = ConceptualTag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def conceptual_tag_params
      params.require(:conceptual_tag).permit(:name, :related_id, :tagged_products_id)
    end
end
