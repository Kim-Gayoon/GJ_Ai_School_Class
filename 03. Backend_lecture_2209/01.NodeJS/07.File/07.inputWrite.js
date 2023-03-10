// 사용법: node thisfile.js filename

const fs = require('fs');
const readline = require('readline');

// filename 파라메터로 받기
if (process.argv.length < 3) {
    console.log('사용법: node thisfile.js filename');
    process.exit();
}
const filename = process.argv[2];

const r1 = readline.createInterface({
    input: process.stdin,               // standard input, terminal(keyboard)
    output: process.stdout              // standard output, terminal(monitor)
});
r1.prompt('> ');

r1.on('line', buf => {
    fs.writeFile(filename, buf, err => {
        if (err)
            console.log(err);
    });
    r1.close();
});