class Api::V1::TiposController < ApplicationController
    before_action :set_tipo, only: [:show, :update, :destroy]
    
    api :GET, "/tipos", "Retorna todos os tipos de cursos"
    # GET /api/v1/tipos
    def index
        @tipos = Tipo.all
        render json: @tipos
    end

    api :GET, "/tipos", "Retorna um tipo de curso pelo id"
    # GET /api/v1/tipos/1
    def show
        render json: @tipo
    end
    
    api :POST, "/tipos", "Cria um tipo de curso"
    # POST /api/v1/tipos
    def create
        @tipo = Tipo.new(tipo_params)
        if @tipo.save
            render json: @tipo, status: :created
        else
            render json: @tipo.errors, status: :unprocessable_entity
        end
    end 
    
    api :PUT, "/tipos/:id", "Atualiza um tipo de curso"
    # PATCH/PUT /api/v1/tipos/1
    def update
        if @tipo.update(tipo_params)
            render json: @tipo
        else
            render json: @tipo.errors, status: :unprocessable_entity
        end
    end
    
    api :DELETE, "/tipos/:id", "Deleta um tipo de curso"
    # DELETE /api/v1/tipos/1 
    def destroy
        @tipo.destroy
        render json: @tipo
    end

    private
    def set_tipo
        @tipo = Tipo.find(params[:id])
    end 

    private 
    def tipo_params
        params.permit(:nome)
    end    

end
