class Api::V1::CursosController < ApplicationController
    before_action :set_curso, only: [:update, :destroy]

    
    api :GET, "/cursos", "Retorna todos os cursos"
    # GET /api/v1/cursos
    def index
        @cursos = Curso.all
        render json: @cursos
    end
    
    api :GET, "/cursos", "Retorna um curso pelo id"
    # GET /api/v1/cursos/1
    def show
        render json: @curso 
    end

    api :POST, "/cursos", "Cria um curso"
    # POST /api/v1/cursos
    def create
        @curso = Curso.new(curso_params)
        if @curso.save
            render json: @curso, status: :created
        else
            render json: @curso.errors, status: :unprocessable_entity
        end
    end

    api :PUT, "/cursos/:id", "Atualiza um curso"
    # PATCH/PUT /api/v1/cursos/1
    def update
        if @curso.update(curso_params)
            render json: @curso
        else
            render json: @curso.errors, status: :unprocessable_entity
        end
    end
    
    api :DELETE, "/cursos/:id", "Deleta um curso"
    # DELETE /api/v1/curso/1 
    def destroy
        
        @curso.destroy
        render json: @curso
    end

    private
    def set_curso
        @curso = Curso.find(params[:id])
    end 

    private 
    def curso_params
        params.permit(:titulo,:carga_horaria,:vagas,:tipo_id)
    end    

 end
