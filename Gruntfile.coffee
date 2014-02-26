module.exports = (grunt) ->

  # Project configuration
  grunt.initConfig(
    pkg: grunt.file.readJSON('package.json')
    meta:
      banner: """
              /**
               * <%= pkg.name %> v<%= pkg.version %>
               *
               * Copyright (c) 2013 <%= pkg.author %>
               * Distributed under the <%= pkg.license %> license
               */

              """
    copy:
      libs:
        expand: true
        cwd: 'bower_components/'
        src: [
          'normalize-css/normalize.css',
          'font-awesome/css/font-awesome.min.css'
          'font-awesome/fonts/fontawesome-*'
          'highlightjs/styles/tomorrow.css',
          'ruban/css/ruban*.min.css',
          'jquery/jquery.min.js',
          'keymaster/keymaster.js',
          'hammerjs/hammer.min.js',
          'highlightjs/highlight.pack.js',
          'ruban/js/ruban.min.js'
        ]
        dest: 'components/'
  )

  # Load plugins
  grunt.loadNpmTasks('grunt-contrib-copy');

  # Default tasks
  grunt.registerTask('default', ['copy'])

