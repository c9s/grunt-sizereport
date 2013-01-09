'use strict'

path      = require "path"
filesize  = require "filesize"
du        = require "du-sync"
sprintf   = require("sprintf").sprintf

module.exports = (grunt) ->
  grunt.registerTask "sizereport", "Report filesize", ->
    ###
      config = {
        "Section":
          "Title": [ files... ]
          "Title2": [ files... ]
      }
    ###
    filesizeSections = grunt.config.get("sizereport")
    return unless filesizeSections

    for sectionTitle, section of filesizeSections
      grunt.log.header sectionTitle
      total = 0
      maxTitleLength = 0
      for title,_ of section
        maxTitleLength = title.length if title.length > maxTitleLength

      for title,files of section
        sum = 0
        sum += du(file) for file in files
        total += sum
        grunt.log.writeln( sprintf("%-#{ maxTitleLength + 1 }s %10s", title + ":", filesize(sum) ) )

        # grunt.log.writeln( "#{ title }: " + filesize(sum) )
      grunt.log.writeln("Total size: #{ filesize(total) }")
    return
  grunt.registerTask "size", ["sizereport"]
