"use strict";
exports.__esModule = true;
var os = require("os");
var cp = require("child_process");
var dm = require("dm.dll");
if (os.platform() == "win32") {
    cp.exec('net session', function (err, stdout, stderr) {
        if (stderr.includes('5')) {
            console.log("NOT ADMIN :(");
        }
        else {
            console.log("ADMIN!!!");
        }
    });
}
else {
    console.log("Unknown");
}
console.log('dm Ver:', dm.dll.ver());
var dll = dm.dll;
dm.dll.moveTo(800, 800);
var hw = dm.findWindow("", "魔兽世界");
console.log(hw);
console.log(dm.dll.GetWindowTitle(hw), dm.dll.GetWindowState(hw, 1));
var mode = "dx2";
console.log('mode', mode);
var r = dm.dll.BindWindowEx(hw, mode, "windows", "windows", "", 0);
console.log('BindWindowEx', r);
dm.moveTo(400, 400);
var ur = dm.unBindWindow();
console.log('unBindWindow', ur);
