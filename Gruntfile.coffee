
'use strict'

module.exports = (grunt) ->
  grunt.config.init({
    sizereport:
      CoreSection:
        node_modules: [ "node_modules" ]
  })
  # load the project's default tasks
  grunt.loadTasks "tasks"
  grunt.registerTask "default", "sizereport"
