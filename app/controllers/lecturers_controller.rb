class LecturersController < ApplicationController
  # GET /lecturers
  # GET /lecturers.xml
  def index
    @lecturers = Lecturer.all
    @lecturers_by_discipline = @lecturers.group_by(&:discipline).sort.reverse

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lecturers }
    end
  end

  # GET /lecturers/1
  # GET /lecturers/1.xml
  def show
    @lecturer = Lecturer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lecturer }
    end
  end

  # GET /lecturers/new
  # GET /lecturers/new.xml
  def new
    @lecturer = Lecturer.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lecturer }
    end
  end

  # GET /lecturers/1/edit
  def edit
    @lecturer = Lecturer.find(params[:id])
  end

  # POST /lecturers
  # POST /lecturers.xml
  def create
    @lecturer = Lecturer.new(params[:lecturer])

    respond_to do |format|
      if @lecturer.save
        format.html { redirect_to(@lecturer, :notice => 'Lecturer was successfully created.') }
        format.xml  { render :xml => @lecturer, :status => :created, :location => @lecturer }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lecturer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lecturers/1
  # PUT /lecturers/1.xml
  def update
    @lecturer = Lecturer.find(params[:id])

    respond_to do |format|
      if @lecturer.update_attributes(params[:lecturer])
        format.html { redirect_to(@lecturer, :notice => 'Lecturer was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lecturer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lecturers/1
  # DELETE /lecturers/1.xml
  def destroy
    @lecturer = Lecturer.find(params[:id])
    @lecturer.destroy

    respond_to do |format|
      format.html { redirect_to(lecturers_url) }
      format.xml  { head :ok }
    end
  end
end
