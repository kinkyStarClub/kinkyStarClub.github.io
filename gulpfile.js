var gulp = require('gulp'),
	swig = require('gulp-swig');

var siteUrl = 'http://www.kinkystar.com';

switch(process.env.SHOWON){
  case 'PC': siteUrl = 'http://localhost:3000'; break;
  case 'GITHUB': siteUrl = 'https://kinkyStarClub.github.io'; break;
  case 'KINKYBE': siteUrl = 'http://www.kinkystar.be'; break;
  case 'KINKYCOM': siteUrl = 'http://www.kinkystar.com'; break;
}

var swig_config = {
	data: {
		siteUrl: siteUrl
	}
}

gulp.task('default', function() {
  gulp.src('./src/**/*.swig')
    .pipe(swig(swig_config))
    .pipe(gulp.dest('./'))
});