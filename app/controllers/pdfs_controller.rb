class PdfsController < ApplicationController
    def index
        @pdfs = Pdf.all
    end
    
    def new
        @pdf = Pdf.new
    end
    
    def create
        @pdf = Pdf.new(pdf_params)
        if @pdf.save
            redirect_to @pdf, notice: 'Pdf was successfully uploaded.'
        else
            render :new
        end
    end
    
    def show
        @pdf = Pdf.find(params[:id])
    end
    
    private
    
    def pdf_params
        params.require(:pdf).permit(:title, :pdf)
    end  
end
