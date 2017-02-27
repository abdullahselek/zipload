require "zipload/version"
require 'fileutils'
require 'zip'
require 'net/http'
require 'uri'

module Zipload

    def self.file_name_with_extension_from_url(url)

        uri = URI.parse(url)
        fileNamePath = File.basename(uri.path)
        return fileNamePath

    end
      
    def self.download_file(url)

        puts 'Downloading zipped file from url: ' + url

        fileNamePath = file_name_with_extension_from_url(url)
        uri = URI(url)
        zipped_folder = Net::HTTP.get(uri)

        File.open(fileNamePath, 'wb') do |file|
          file.write(zipped_folder)
        end

        Zip::File.open(fileNamePath) { |zip_file|
          zip_file.each { |file|
              file_path=File.join('output', file.name)
              FileUtils.mkdir_p(File.dirname(file_path))
              zip_file.extract(file, file_path) unless File.exist?(file_path)
            }
          }

    end

    def self.download_file_into_directory(url, directory)

        puts 'Downloading zipped file from url: ' + url + ' into directory:' + directory

        fileNamePath = file_name_with_extension_from_url(url)
        uri = URI(url)
        zipped_folder = Net::HTTP.get(uri)

        File.open(fileNamePath, 'wb') do |file|
          file.write(zipped_folder)
        end

        Zip::File.open(fileNamePath) { |zip_file|
          zip_file.each { |file|
              file_path=File.join(directory, file.name)
              FileUtils.mkdir_p(File.dirname(file_path))
              zip_file.extract(file, file_path) unless File.exist?(file_path)
            }
          }
    end

end