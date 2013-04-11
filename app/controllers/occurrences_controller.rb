# encoding: utf-8
class OccurrencesController < ApplicationController
  
  respond_to :html, :js
  
  def index
    
  end
  def new
    @occurrence = Occurrence.new
    @types = Type.all
    @hours = Hour.all
    @occurrence.declarant = Declarant.new
    @declarant = @occurrence.declarant
    @occurrence.lat_lon = "POINT(" + params[:lon].to_s + " " + params[:lat].to_s + ")"
             #= "POINT(#{params[:lat]} #{params[:lon]})" # It is then passed to the form's hidden field

    # Used on nested forms; Also had to put accepts_nested_attributes_for :declarant on Occurrence Model
    # And accepts_nested_attributes_for :address on Declarant Model
    @occurrence.build_declarant
    @declarant.build_address
    
    render :layout => false # The view will show up using ajax and will be put into a div, so it doesn't need a <head> e.g.
  end
  def create
    @occurrence = Occurrence.new(params[:occurrence])

    flash[:notice] = "Ocorrência cadastrada com sucesso." if @occurrence.save
    respond_with @occurrence, :layout => !request.xhr?
    #if @occurrence.save
      #redirect_to(@occurrence, :notice => "Ocorrência cadastrada com sucesso.") }
    #else
      #render :action => "new"
    #end
  end

end
