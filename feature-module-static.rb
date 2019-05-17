#!/usr/bin/env ruby

require 'xcodeproj'

modules = ['Account']

modules.each do |item|
    project_path = "#{item}/#{item}.xcodeproj"
    project = Xcodeproj::Project.open(project_path)

    project.targets.each do |target|
    	target.build_configurations.each do |config|
    		if target.name == "#{item}"
    			config.build_settings['MACH_O_TYPE'] = 'staticlib'
    		end

    		if target.name == "#{item}Test"
    			config.build_settings['MACH_O_TYPE'] = 'bundle'
    		end
    	end
    end

    project.save
end
