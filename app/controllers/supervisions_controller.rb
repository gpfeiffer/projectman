class SupervisionsController < ApplicationController
  # GET /supervisions
  # GET /supervisions.xml
  def index
    @supervisions = Supervision.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @supervisions }
    end
  end

  # GET /supervisions/1
  # GET /supervisions/1.xml
  def show
    @supervision = Supervision.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @supervision }
    end
  end

  # GET /supervisions/new
  # GET /supervisions/new.xml
  def new
    @supervision = Supervision.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @supervision }
    end
  end

  # GET /supervisions/1/edit
  def edit
    @supervision = Supervision.find(params[:id])
  end

  # POST /supervisions
  # POST /supervisions.xml
  def create
    @supervision = Supervision.new(params[:supervision])

    respond_to do |format|
      if @supervision.save
        format.html { redirect_to(@supervision, :notice => 'Supervision was successfully created.') }
        format.xml  { render :xml => @supervision, :status => :created, :location => @supervision }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @supervision.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /supervisions/1
  # PUT /supervisions/1.xml
  def update
    @supervision = Supervision.find(params[:id])

    respond_to do |format|
      if @supervision.update_attributes(params[:supervision])
        format.html { redirect_to(@supervision, :notice => 'Supervision was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @supervision.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /supervisions/1
  # DELETE /supervisions/1.xml
  def destroy
    @supervision = Supervision.find(params[:id])
    @supervision.destroy

    respond_to do |format|
      format.html { redirect_to(supervisions_url) }
      format.xml  { head :ok }
    end
  end
end
