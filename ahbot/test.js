var platform = require("os").platform();

if (platform == "win32" || platform == "win64") {
    require('child_process').exec('net session', function(err, stdout, stderr) {
        // console.log('OUT-->');
        // console.log('err',err);
        // console.log('stdout',stdout);
        // console.log('stderr',stderr);

        if (stderr.includes('5')) {
            console.log("NOT ADMIN :(");
        } else {
            console.log("ADMIN!!!");
        }
    });
} else {
    console.log("Unknown");
}

// require('readline')
//     .createInterface(process.stdin, process.stdout)
//     .question("Press [Enter] to exit...", function(){
//         process.exit();
// });
