class SectionsController < ApplicationController
  
  def index
    @sections = Section.all
  end

  def show
    @section = Section.find(params[:id])
  end

  def new
    @section = Section.new({:name => 'Default'})
  end

  def create
    @section = Section.new(section_params)

    if @section.save
      redirect_to(sections_path)
      flash[:notice] = "Section created successfully"
    else
      render('new')
    end
  end

  def edit
    @section = Section.find(params[:id])
  end

  def update
    @section = Section.find(params[:id])
    

    if @section.update_attributes(section_params)
      redirect_to(section_path(@section))
      flash[:notice] = "Section updated successfully"
    else
      render('edit')
    end
  end

  def delete
    @section = Section.find(params[:id])
  end

  def destroy
    @section = Section.find(params[:id])
    @section.destroy
    redirect_to(sections_path)
    flash[:notice] = "Section '#{@section.name}' destroyed successfully"
  end

  private
  def section_params
    params.require(:section).permit(:page_id, :name, :position, :visible, :content_type, :content)
  end
end
