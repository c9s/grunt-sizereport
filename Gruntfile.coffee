path = require "path"
fs = require "fs"
coffee = require "coffee-script"

module.exports = (grunt) ->
  grunt.config.init({
    filesize:
      CoreSection:
        node_modules: [ "node_modules" ]
  })
  # load the project's default tasks
  grunt.loadTasks "tasks"
