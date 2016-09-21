# encoding: utf-8
class CkeditorPictureUploader < CarrierWave::Uploader::Base
    include Ckeditor::Backend::CarrierWave

    include Cloudinary::CarrierWave
    include CarrierWave::MiniMagick


    def public_id
        return "marugoto/grammar/" + Cloudinary::Utils.random_public_id
    end
    process :tags => ['marugoto-grammar']

    [:extract_content_type, :extract_size, :extract_dimensions].each do |method|

        define_method :"#{method}_with_cloudinary" do
            send(:"#{method}_without_cloudinary") if self.file.is_a?(CarrierWave::SanitizedFile)
            {}
        end
        alias_method_chain method, :cloudinary
    end

    process :extract_dimensions

    # Create different versions of your uploaded files:
    version :thumb do
        process resize_to_fill: [118, 100]
    end

    version :content do

    end

    # Add a white list of extensions which are allowed to be uploaded.
    # For images you might use something like this:
    def extension_white_list
        Ckeditor.image_file_types
    end
end
