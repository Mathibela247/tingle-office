class DocumentsController < InheritedResources::Base

  
  private

    def document_params
      params.require(:document).permit(:title, :content, :submission_id, docs: [])
    end

end
