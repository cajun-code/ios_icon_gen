#! usr/bin/env ruby
require "ios_icon_gen/version"
require 'thor'
require 'rmagick'

module IosIconGen

  class IconGen < Thor::Group
    argument :file_name, :type => :string, :desc => "name of the icon to process"

    desc "Generate all icons necessary for an ios app from the 1024 image"

    def gen_images
      sizes = [512, 152, 144, 128, 120, 114, 100, 80, 76, 72, 58, 57, 50, 40, 29]

      image = Magick::Image.read(file_name)
      ext = File.extname(file_name)
      base = File.basename file_name, ext

      sizes.each{|x| img = image[0].scale(x, x); img.write("#{base}_#{x}#{ext}")}
    end
  end

end

