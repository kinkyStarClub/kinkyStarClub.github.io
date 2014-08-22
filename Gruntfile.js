var dotenv = require('dotenv');
dotenv.load();

var siteUrl = 'http://www.kinkystar.com';

switch(process.env.SHOWON){
  case 'PC': siteUrl = 'http://localhost:3000'; break;
  case 'GITHUB': siteUrl = 'http://kinkyStarClub.github.io'; break;
  case 'KINKYBE': siteUrl = 'http://www.kinkystar.be'; break;
  case 'KINKYCOM': siteUrl = 'http://www.kinkystar.com'; break;
}

module.exports = function(grunt) {

  // Project configuration.
  grunt.initConfig({
        swig: {
          development: {
            init: {
                autoescape: true
            },
            dest: "./",
            src: ["src/*.swig", "src/**/*.swig"],
            generateSitemap: false,
            generateRobotstxt: false,
            siteUrl: siteUrl,
            production: false,
          }
        }
    });

    grunt.loadNpmTasks('grunt-swig');

    grunt.registerTask('default', ['swig']);

};