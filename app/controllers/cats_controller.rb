class CatsController < ApplicationController
  before_action :set_cat, only: [:show, :edit, :update, :destroy]
  def index
    @cats = Cat.all
  end
  def new
    @cat = Cat.new
  end
  def create
    @cat = Cat.new(cat_params)
    if params[:back]
      render :new
    else
      if @cat.save
        redirect_to cats_path, notice: t("views.controller.CreateCat")
      else
        render :new, notice: t("views.controller.DontCreateCat")
      end
    end
  end
  def show
  end
  def edit
  end
  def update
    if @cat.update(cat_params)
      redirect_to cats_path, notice: t('views.controller.EditCat')
    else
      render :edit, notice: t('views.controller.DontEditCat')
    end
  end
  def destroy
    @cat.destroy
    redirect_to cats_path, notice: t('views.controller.DiaryWasSuccessfullyDestroyed')
  end
  private
  def cat_params
    params.require(:cat).permit(:name, :sex, :status, :profile, {images: []})
  end
  def set_cat
    @cat = Cat.find(params[:id])
  end
end
