module.exports = function(grunt) {

  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    config: {
      source: 'src',
    },

    cmq: {
      files: {
        expand: true,
        cwd: '<%= config.source %>/css',
        dest: 'css',
        src: '**/*.css'
      }
    },

    cssmin: {
      files: {
        expand: true,
        cwd: 'css',
        dest: 'css',
        src: '**/*.css'
      }
    },

    sass: {
      options: {
        style: 'expanded'
      },
      files: {
        expand: true,
        cwd: '<%= config.source %>/scss',
        dest: '<%= config.source %>/css',
        src: '**/*.scss',
        ext: '.css'
      }
    },

    watch: {
      gruntfile: {
        files: ['Gruntfile.js'],
      },
      sass: {
        files: ['<%= config.source %>/scss/**/*.scss'],
        tasks: ['sass']
      }
    }

  });

  grunt.loadNpmTasks('grunt-combine-media-queries');
  grunt.loadNpmTasks('grunt-contrib-cssmin');
  grunt.loadNpmTasks('grunt-contrib-sass');
  grunt.loadNpmTasks('grunt-contrib-watch');

  grunt.registerTask('default', ['sass', 'watch']);
  grunt.registerTask('build', [
    'sass',
    'cmq',
    'cssmin'
  ]);

};
