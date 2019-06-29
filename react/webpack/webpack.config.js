const path = require('path')

module.exports = {
    name: 'word-relay-setting',
    mode: 'development',
    devtool: 'eval', // 빠르게 하겠다는것
    resolve: {        
        extensions: ['.js', '.jsx'] //끝이 이렇게 마무리되는 파일들을 다 찾아 연결해줌
    },
    
    entry: {
        app: ['./client'], 
    }, //입력

    modeules: {
        rules: [{
            test: /\.jsx?/,
            loader: 'babel-loader',
            options: {
                presets: [ '@babel/preset-env', '@babel/preset-react'],
                plugins: ['@babel/plugin-proposal-class']
            },
        }],
    },

    output: {
        path: path.join(__dirname, 'dist'), //현재 폴더에 있는 dist폴더가 path
        filename: 'app.js',
    }, //출력
}