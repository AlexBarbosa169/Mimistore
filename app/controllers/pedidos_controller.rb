class PedidosController < ApplicationController
  before_action :set_pedido, only: [:show, :edit, :update, :destroy]  

  # GET /pedidos
  # GET /pedidos.json
  def index    
    if client_signed_in?
      @pedidos = current_client.pedidos          
    else
      @pedidos = Pedido.all    
    end        
  end

  # GET /pedidos/1
  # GET /pedidos/1.json
  def show
  end

  # GET /pedidos/new
  def new
    @pedido = Pedido.new
  end  

  def remover
    @ped = current_client.pedidos.last
    @p = Product.find(params[:productid])
    @ped.products.delete(@p)
    respond_to do |format|
      format.html { redirect_to @ped, notice: 'Pedido was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def adicionar
    
    @i = current_client.pedidos.last
    if @i.nil?
        redirect_to new_pedido_path
    else    
    @p = Product.find(params[:productid])    
    @i.products.push(@p)
    respond_to do |format|    
      if @i.save
          format.html { redirect_to @i, notice: 'Pedido was successfully created.' }
          format.json { render :show, status: :created, location: @pedido }
        else
          format.html { render :new }
          format.json { render json: @pedido.errors, status: :unprocessable_entity }
      end    
    end
    end      
  end

  # GET /pedidos/1/edit
  def edit
  end  

  # POST /pedidos
  # POST /pedidos.json
  def create
    @pedido = Pedido.new(pedido_params)

    respond_to do |format|
      if @pedido.save
        format.html { redirect_to @pedido, notice: 'Pedido was successfully created.' }
        format.json { render :show, status: :created, location: @pedido }
      else
        format.html { render :new }
        format.json { render json: @pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pedidos/1
  # PATCH/PUT /pedidos/1.json
  def update
    respond_to do |format|
      if @pedido.update(pedido_params)
        format.html { redirect_to @pedido, notice: 'Pedido was successfully updated.' }
        format.json { render :show, status: :ok, location: @pedido }
      else
        format.html { render :edit }
        format.json { render json: @pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pedidos/1
  # DELETE /pedidos/1.json
  def destroy
    @pedido.destroy
    respond_to do |format|
      format.html { redirect_to pedidos_url, notice: 'Pedido was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pedido
      @pedido = Pedido.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pedido_params
      params.require(:pedido).permit(:descricao, :finalizado, :aprovado, :client_id)
    end
    
end
