class TestsController < ApplicationController
  
    before_action :set_test, only: %i[ show edit update destroy ]
  
    # GET /tests or /tests.json
    def index
      @test = Test.all
    end
  
    # GET /tests/1 or /tests/1.json
    def show
      
    end
  
    # GET /tests/new
    def new
      @test = Test.new
      @questions = Question.includes(:choices)
    end

    def startTest
    
    end
    
  
    # GET /tests/1/edit
    def edit
    end
  
    # POST /tests or /tests.json
    def create
      @test = Test.new(test_params)
      @test.test_score = params[:test_score]
  
      respond_to do |format|
        if @test.save
          format.html { redirect_to test_url(@test), notice: "test was successfully created." }
          format.json { render :index, status: :created, location: @test }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @test.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PATCH/PUT /tests/1 or /tests/1.json
    def update
      respond_to do |format|
        if @test.update(test_params)
          format.html { redirect_to test_url(@test), notice: "test was successfully updated." }
          format.json { render :index, status: :ok, location: @test }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @test.errors, status: :unprocessable_entity }
        end
      end
    end

    
  
    # DELETE /tests/1 or /tests/1.json
    def destroy
      @test.destroy
  
      respond_to do |format|
        format.html { redirect_to tests_url, notice: "test was successfully destroyed." }
        format.json { head :no_content }
      end
    end
  
    
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_test
        @test = Test.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def test_params
        params.require(:test).permit(:id, :user_id, :test_score, question_attributes: [ :id, :body, :question_score ]
          )
      end

  
  
end
