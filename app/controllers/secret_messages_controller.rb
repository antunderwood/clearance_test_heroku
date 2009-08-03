class SecretMessagesController < ApplicationController
  # GET /secret_messages
  # GET /secret_messages.xml
  def index
    @secret_messages = SecretMessage.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @secret_messages }
    end
  end

  # GET /secret_messages/1
  # GET /secret_messages/1.xml
  def show
    @secret_message = SecretMessage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @secret_message }
    end
  end

  # GET /secret_messages/new
  # GET /secret_messages/new.xml
  def new
    @secret_message = SecretMessage.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @secret_message }
    end
  end

  # GET /secret_messages/1/edit
  def edit
    @secret_message = SecretMessage.find(params[:id])
  end

  # POST /secret_messages
  # POST /secret_messages.xml
  def create
    @secret_message = SecretMessage.new(params[:secret_message])

    respond_to do |format|
      if @secret_message.save
        flash[:notice] = 'SecretMessage was successfully created.'
        format.html { redirect_to(@secret_message) }
        format.xml  { render :xml => @secret_message, :status => :created, :location => @secret_message }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @secret_message.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /secret_messages/1
  # PUT /secret_messages/1.xml
  def update
    @secret_message = SecretMessage.find(params[:id])

    respond_to do |format|
      if @secret_message.update_attributes(params[:secret_message])
        flash[:notice] = 'SecretMessage was successfully updated.'
        format.html { redirect_to(@secret_message) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @secret_message.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /secret_messages/1
  # DELETE /secret_messages/1.xml
  def destroy
    @secret_message = SecretMessage.find(params[:id])
    @secret_message.destroy

    respond_to do |format|
      format.html { redirect_to(secret_messages_url) }
      format.xml  { head :ok }
    end
  end
end
