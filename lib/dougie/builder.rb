require 'yaml'

module Dougie
  class Builder
    attr_accessor :folder

    def initialize
    end

    def setup folder=nil
      self.folder = "#{folder.chomp("/").reverse.chomp("/").reverse}/" if folder
      setup_directory folder_path
      setup_config
    end

    def folder_path
      "#{ROOT}/#{folder}"
    end

    private

    def src_directory
      spec = Gem::Specification.find_by_name("dougie")
      "#{spec.gem_dir}/src/"
    end

    def create_src_file source, destination
      unless File.exists?(destination)
        contents = File.open("#{src_directory}#{source}").read
        File.open(destination, 'w') { |file| file.write(contents) }
        Dougie.logger.info "created #{destination}"
      end
    end

    def setup_directory path
      unless File.exists?(path)
        Dir.mkdir(path)
        SmallVictories.logger.info "created #{path}"
      end
    end

    def setup_config
      create_src_file('stores.yml', File.join(folder_path, '_stores.yml'))
      create_src_file('config.yml', File.join(folder_path, 'config.yml'))
    end
  end
end
