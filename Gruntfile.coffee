module.exports = (grunt) ->
  grunt.config.init({
    filesize:
      CoreSection:
        node_modules: [ "node_modules" ]
  })
  # load the project's default tasks
  grunt.loadTasks "tasks"
