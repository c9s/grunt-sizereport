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

Result
------

    $ grunt size 
    Running "sizereport" task

    Core
    ----
    Compressed stylesheet: 7.32KB
    Compressed javascript: 22.11KB
    Total size: 29.42KB

    Custom font-awesome
    -------------------
    Stylesheet: 7.46KB
    TTF fonts: 17.23KB
    EOT fonts: 30.30KB
    WOFF fonts: 8.93KB
    Total size: 63.93KB

    Images
    ------
    Image files: 10.78KB
    Total size: 10.78KB

    Done, without errors.
