let gulp = require('gulp')
let htmlmin = require("gulp-htmlmin")
let cssmin = require("gulp-clean-css")
let uglify = require("gulp-uglify")
let connect = require('gulp-connect')
let sass = require("gulp-sass");

// 复制文件
gulp.task("watchall", async () => {
    gulp.watch("./src/*.html",async ()=>{
        gulp.src("./src/*.html")
        .pipe(gulp.dest("./dist"));
    })
        
    //sass编译 
    gulp.watch('./src/*.scss',async ()=>{
        gulp.src('./src/*.scss')
        .pipe(sass())
        .pipe(gulp.dest('./dist/css'))
    })

    // 压缩html
    gulp.watch("./src/*.html",async ()=>{
        gulp.src("./src/*.html")
        .pipe(htmlmin({
            collapseWhitespace: true,
            removeComments: true,  
            collapseBooleanAttributes: true,
            removeEmptyAttributes: true, 
            removeScriptTypeAttributes: true,
            removeStyleLinkTypeAttributes: true, 
            minifyJS: true,
            minifyCSS: true
        }))
        .pipe(gulp.dest("./dist"));
    });

    // 监听css文件
    gulp.watch("./src/css/**/*", async ()=>{
        gulp.src("./src/css/**/*")
        .pipe(cssmin())
        .pipe(gulp.dest("./dist/css"))
    })

    // 监听js文件
    gulp.watch('./src/js/**/*', async ()=>{
        gulp.src('./src/js/**/*')
        .pipe(uglify())
        .pipe(gulp.dest("./dist/js"));
    })
});

// 搭建服务器
gulp.task('server',function(){
    connect.server({
        root:'./dist',
        livereload:true
    })
})