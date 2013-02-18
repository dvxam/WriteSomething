class CadavresController < ApplicationController
  
  def list_for_current_user
    @cadavres = Cadavre.find_all_by_user_id current_user
  end
  # GET /cadavres
  # GET /cadavres.json
  def index
    @cadavres = Cadavre.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @cadavres }
    end
  end

  # GET /cadavres/1
  # GET /cadavres/1.json
  def show
    @cadavre = Cadavre.find(params[:id])
    @users = @cadavre.sentences.map{|s| s.user}.uniq 

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @cadavre }
    end
  end

  # GET /cadavres/new
  # GET /cadavres/new.json
  def new
    @cadavre = Cadavre.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @cadavre }
    end
  end

  # GET /cadavres/1/edit
  def edit
    @cadavre = Cadavre.find(params[:id])
  end

  # POST /cadavres
  # POST /cadavres.json
  def create
    @cadavre = Cadavre.new(params[:cadavre])
    @cadavre.user = current_user

    respond_to do |format|
      if @cadavre.save
        format.html { redirect_to @cadavre, :notice => 'Cadavre was successfully created.' }
        format.json { render :json => @cadavre, :status => :created, :location => @cadavre }
      else
        format.html { render :action => "new" }
        format.json { render :json => @cadavre.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cadavres/1
  # PUT /cadavres/1.json
  def update
    @cadavre = Cadavre.find(params[:id])

    respond_to do |format|
      if @cadavre.update_attributes(params[:cadavre])
        format.html { redirect_to @cadavre, :notice => 'Cadavre was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @cadavre.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cadavres/1
  # DELETE /cadavres/1.json
  def destroy
    @cadavre = Cadavre.find(params[:id])
    @cadavre.destroy

    respond_to do |format|
      format.html { redirect_to cadavres_url }
      format.json { head :no_content }
    end
  end
end
