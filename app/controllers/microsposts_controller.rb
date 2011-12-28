class MicrospostsController < ApplicationController
  # GET /microsposts
  # GET /microsposts.xml
  def index
    @microsposts = Microspost.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @microsposts }
    end
  end

  # GET /microsposts/1
  # GET /microsposts/1.xml
  def show
    @microspost = Microspost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @microspost }
    end
  end

  # GET /microsposts/new
  # GET /microsposts/new.xml
  def new
    @microspost = Microspost.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @microspost }
    end
  end

  # GET /microsposts/1/edit
  def edit
    @microspost = Microspost.find(params[:id])
  end

  # POST /microsposts
  # POST /microsposts.xml
  def create
    @microspost = Microspost.new(params[:microspost])

    respond_to do |format|
      if @microspost.save
        format.html { redirect_to(@microspost, :notice => 'Microspost was successfully created.') }
        format.xml  { render :xml => @microspost, :status => :created, :location => @microspost }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @microspost.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /microsposts/1
  # PUT /microsposts/1.xml
  def update
    @microspost = Microspost.find(params[:id])

    respond_to do |format|
      if @microspost.update_attributes(params[:microspost])
        format.html { redirect_to(@microspost, :notice => 'Microspost was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @microspost.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /microsposts/1
  # DELETE /microsposts/1.xml
  def destroy
    @microspost = Microspost.find(params[:id])
    @microspost.destroy

    respond_to do |format|
      format.html { redirect_to(microsposts_url) }
      format.xml  { head :ok }
    end
  end
end
