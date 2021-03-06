class SentencesController < ApplicationController
  # GET /sentences
  # GET /sentences.json
  def index
    @sentences = Sentence.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @sentences }
    end
  end

  # GET /sentences/1
  # GET /sentences/1.json
  def show
    @sentence = Sentence.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @sentence }
    end
  end

  # GET /sentences/new
  # GET /sentences/new.json
  def new
    @sentence = Sentence.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @sentence }
    end
  end

  # GET /sentences/1/edit
  def edit
    @sentence = Sentence.find(params[:id])
  end

  # POST /sentences
  # POST /sentences.json
  def create
    @sentence = Sentence.new(params[:sentence])
    @sentence.user = current_user
    @sentence.content = @sentence.content.capitalize
    @points = 10
    current_user.add_to_score @points

    respond_to do |format|
      if @sentence.save
        points = 20
        format.html { redirect_to @sentence.cadavre, :notice => 'You earned %i' % @points }
        format.json { render :json => @sentence, :status => :created, :location => @sentence }
      else
        @cadavre = Cadavre.find params[:sentence][:cadavre_id]
        format.html { render :action => "new" }
        format.json { render :json => @sentence.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sentences/1
  # PUT /sentences/1.json
  def update
    @sentence = Sentence.find(params[:id])

    respond_to do |format|
      if @sentence.update_attributes(params[:sentence])
        format.html { redirect_to @sentence, :notice => 'Sentence was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @sentence.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sentences/1
  # DELETE /sentences/1.json
  def destroy
    @sentence = Sentence.find(params[:id])
    @sentence.destroy

    respond_to do |format|
      format.html { redirect_to sentences_url }
      format.json { head :no_content }
    end
  end
end
