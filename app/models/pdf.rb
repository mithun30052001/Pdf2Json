class Pdf < ApplicationRecord
    mount_uploader :pdf, PdfUploader

    def pdf_text
        return unless pdf.present?
        reader = PDF::Reader.new(pdf.file.path)
        reader.pages.map(&:text).join("\n")
    end
end
