Grunt-filesize
==============
Task for reporting compiled filesize/directory size.

```coffee
module.exports = (grunt) ->
  grunt.config.init({
    filesize:
      CoreSection:
        node_modules: [ "node_modules" ]
  })
  # load the project's default tasks
  grunt.loadNpmTasks "grunt-filesize"
```

