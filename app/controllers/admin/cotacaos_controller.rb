class Admin::CotacaosController < ApplicationController
    # GET admin/cotacaos
  # GET admin/cotacaos.json
  def index
    @cotacaos = Cotacao.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @cotacaos }
    end
  end

  # GET admin/cotacaos/1
  # GET admin/cotacaos/1.json
  def show
    @cotacao = Cotacao.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @cotacao }
    end
  end

  # GET admin/cotacaos/new
  # GET admin/cotacaos/new.json
  def new
    @cotacao = cotacao.new
    @cotacao.status = 'A'

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @cotacao }
    end
  end

  # GET admin/cotacaos/1/edit
  def edit
    @cotacao = Cotacao.find(params[:id])
  end

  # POST admin/cotacaos
  # POST admin/cotacaos.json
  def create
    @cotacao = Cotacao.new(params[:cotacao])

    respond_to do |format|
      if @cotacao.save
        format.html { redirect_to [:admin, @cotacao], :notice => 'Exemplo was successfully created.' }
        format.json { render :json => @cotacao, :status => :created, :location => @cotacao }
      else
        format.html { render :action => "new" }
        format.json { render :json => @cotacao.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT admin/cotacaos/1
  # PUT admin/cotacaos/1.json
  def update
    @cotacao = Cotacao.find(params[:id])

    respond_to do |format|
      if @cotacao.update_attributes(params[:cotacao])
        format.html { redirect_to [:admin, @cotacao], :notice => 'Exemplo was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @cotacao.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE admin/cotacaos/1
  # DELETE admin/cotacaos/1.json
  def destroy
    @cotacao = cotacao.find(params[:id])
    @cotacao.destroy

    respond_to do |format|
      format.html { redirect_to admin_cotacaos_url }
      format.json { head :ok }
    end
  end
end