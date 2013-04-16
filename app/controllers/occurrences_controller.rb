# encoding: utf-8
class OccurrencesController < ApplicationController
  
  respond_to :html, :json
  
  def index # It it isn't an ajax request (first time site loads), it renders index.html.erb, that also needs @occurrences
    @occurrences = Occurrence.all

    if request.xhr? # If it's a .get() request from geocorrencia.js's .get_all_occurrences()
      respond_with do |format|
        format.html do
          render :json => { :ocorrencias => @occurrences.to_json( :include => [:type, :hour, :declarant] ) }
        end
      end
    end
  end
  def show
    if request.xhr? # If it's a .get() request from geocorrencia.js's .refresh_side_panel()
      @occurrence = Occurrence.find(params[:id_o].to_i)
      respond_with do |format|
        format.html do
          render :json => { :attachment_partial => render_to_string( :partial => 'occurrences/show', :locals => { :occurrence => @occurrence }, :layout => false ) }
        end
      end
    end
  end
  def new # Used by geocorrencia.js's .on_rj_polygon_click() - the response is new.html.erb form
    @occurrence = Occurrence.new
    @types = Type.all
    @hours = Hour.all                   # It's strange, but it is the longitude first
    @occurrence.lat_lon = "POINT(#{params[:lon]} #{params[:lat]})" # It is then passed to the form's hidden field

    # Used on nested forms; Also had to put accepts_nested_attributes_for :declarant on Occurrence Model
    # And accepts_nested_attributes_for :address on Declarant Model
    @occurrence.build_declarant # Similar to @occurrence.declarant = Declarant.new
    @occurrence.declarant.build_address
    
    render :layout => false # The view will show up using ajax and will be put into a div, so it doesn't need a <head> e.g.
  end
  def create
    @occurrence = Occurrence.new(params[:occurrence])

    if @occurrence.save
      flash[:notice] = "Ocorrência cadastrada com sucesso."

      respond_with do |format|
        # Overrides the default html response
        format.html do
          # If the new view form is remote, use geocorrencia.js to receive the json bellow
          if request.xhr?
            # The following json contains the occurrence object and the partial _show.html.erb
            render :json => {
                              #:ocorrencia => @occurrence, #no need to do :ocorrencia => @occurrence.to_json( :include => [:type, :hour] )
                              :ocorrencia => @occurrence.to_json( :include => [:type, :hour] ),
                              :attachment_partial => render_to_string( :partial => 'occurrences/show', :locals => { :occurrence => @occurrence }, :layout => false )
                            }
          end
        end
      end
    end
  end

end
