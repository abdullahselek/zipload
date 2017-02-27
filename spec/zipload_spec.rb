require 'spec_helper'

describe Zipload do

  	describe '#file name from url' do
    	let(:input) { 'http://wwww.abdullahselek.com/zipload.zip' }
    	let(:output) { Zipload.file_name_with_extension_from_url(input) }

    	it 'should get file name and extension' do
      		expect('zipload.zip').to eq output
    	end
  	end

  	describe '#file from url' do
    	let(:input) { 'https://dl.dropboxusercontent.com/u/7340491/zipload.zip' }
    	let(:output) { Zipload.download_file(input) }

    	it 'should download file' do
      		expect(output).not_to be_empty
    	end
  	end

	describe '#file from url to given directory' do
		let(:input) { 'https://dl.dropboxusercontent.com/u/7340491/zipload.zip' }
		let(:output) { Zipload.download_file_into_directory(input, '/Users/abdullahselek') }
		it 'should download file into directory' do
			expect(output).not_to be_empty
		end
	end

end