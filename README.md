Grunt-SizeReport
================
Task for reporting compiled filesize/directory size and summary.

```coffee
module.exports = (grunt) ->
  grunt.config.init({
    sizereport:
      CoreSection:
        node_modules: [ "node_modules" ]
        StyleSheets: [
          "compiled/target.min.css"
          "compiled/target.theme.min.css"
        ]
      ExtraSection:
        fonts: [
            "path/to/fonts"
        ]
  })
  # load the project's default tasks
  grunt.loadNpmTasks "grunt-filesize"
```

