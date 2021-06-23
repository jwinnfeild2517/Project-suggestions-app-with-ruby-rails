class SuggestionsController < ApplicationController
  before_action :set_suggestion, only: %i[ show edit update destroy ]

  def index
    @suggestions = Suggestion.all.order(created_at: :desc)
  end

  def show
  end

  def new
    @suggestion = Suggestion.new
  end

  def edit
  end

  def upvote
    @suggestion = Suggestion.find(params[:id])
    @suggestion.update(upvotes: @suggestion.upvotes += 1)
    redirect_to suggestions_url
  end

  def downvote
    @suggestion = Suggestion.find(params[:id])
    @suggestion.update(downvotes: @suggestion.downvotes += 1)
    redirect_to suggestions_url
  end

  def create
    @suggestion = Suggestion.new(suggestion_params)

    respond_to do |format|
      if @suggestion.save
        format.html { redirect_to suggestions_url, notice: "Suggestion was successfully created." }
        format.json { render :show, status: :created, location: @suggestion }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @suggestion.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @suggestion.update(suggestion_params)
        format.html { redirect_to @suggestion, notice: "Suggestion was successfully updated." }
        format.json { render :show, status: :ok, location: @suggestion }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @suggestion.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @suggestion.destroy
    respond_to do |format|
      format.html { redirect_to suggestions_url, notice: "Suggestion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_suggestion
      @suggestion = Suggestion.find(params[:id])
    end

    def suggestion_params
      params.require(:suggestion).permit(:user, :body, :upvotes, :downvotes)
    end
end
