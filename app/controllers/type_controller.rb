class TypeController < ApplicationController

  def new
    #cocoonで親子同時保存
    @type = Type.new
    @type.flowers.build
  end

  def create
    @type = Type.new(type_params)
      if @type.save
        render :index
      else
        render :new
      end
  end

  private
    def taist_params
        params.require(:type).permit(:gorgeous, :simple, :formal, :casual, flowers_attributes: [:id, :flower_name, :type_id, :explanation, :user_id])
    end
  end 
end
