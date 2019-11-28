"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __generator = (this && this.__generator) || function (thisArg, body) {
    var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g;
    return g = { next: verb(0), "throw": verb(1), "return": verb(2) }, typeof Symbol === "function" && (g[Symbol.iterator] = function() { return this; }), g;
    function verb(n) { return function (v) { return step([n, v]); }; }
    function step(op) {
        if (f) throw new TypeError("Generator is already executing.");
        while (_) try {
            if (f = 1, y && (t = op[0] & 2 ? y["return"] : op[0] ? y["throw"] || ((t = y["return"]) && t.call(y), 0) : y.next) && !(t = t.call(y, op[1])).done) return t;
            if (y = 0, t) op = [op[0] & 2, t.value];
            switch (op[0]) {
                case 0: case 1: t = op; break;
                case 4: _.label++; return { value: op[1], done: false };
                case 5: _.label++; y = op[1]; op = [0]; continue;
                case 7: op = _.ops.pop(); _.trys.pop(); continue;
                default:
                    if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                    if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                    if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                    if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                    if (t[2]) _.ops.pop();
                    _.trys.pop(); continue;
            }
            op = body.call(thisArg, _);
        } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
        if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
    }
};
exports.__esModule = true;
var os = require("os");
var cp = require("child_process");
var dm = require("dm.dll");
// ==============================================
// globals
// ==============================================
var dll;
var hw;
// ==============================================
// check admin
// ==============================================
function checkAdmin() {
    console.log("==============================================");
    var p = new Promise(function (resolve, reject) {
        console.log("CHECKING ADMIN...");
        if (os.platform() == "win32") {
            cp.exec('net session', function (err, stdout, stderr) {
                if (stderr.includes('5')) {
                    console.log("NOT ADMIN :(");
                    reject(stderr);
                    return;
                }
                else {
                    console.log("ADMIN :)");
                    resolve(stdout);
                }
            });
        }
        else {
            console.error("Unknown");
        }
    });
    return p;
}
// ==============================================
// init dm.dll -> hook Wow
// ==============================================
function initDmWow() {
    console.log("==============================================");
    console.log('dm Ver:', dm.dll.ver());
    dll = dm.dll;
    hw = dm.findWindow("", "魔兽世界");
    console.log("hw", hw);
    console.log("tittle", dm.dll.GetWindowTitle(hw));
    console.log("window status", dm.dll.GetWindowState(hw, 1));
    var mode = "dx2";
    console.log('mode', mode);
    var r = dm.dll.BindWindowEx(hw, mode, "windows", "windows", "", 1);
    console.log('BindWindowEx status', r);
    console.log("==============================================");
}
// ==============================================
// functions
// ==============================================
var sleep = function (milliseconds) {
    return new Promise(function (resolve) { return setTimeout(resolve, milliseconds); });
};
var on = true;
function selector() {
    return __awaiter(this, void 0, void 0, function () {
        var gap, r;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    if (!on) return [3 /*break*/, 3];
                    gap = 500;
                    r = void 0;
                    r = dm.keyDown(16); // shift
                    // r = dm.keyDown(17) // ctrl
                    r = dm.keyDown(18); // alt
                    return [4 /*yield*/, sleep(50)];
                case 1:
                    _a.sent();
                    r = dm.keyUp(16);
                    // r = dm.keyUp(17)
                    r = dm.keyUp(18);
                    return [4 /*yield*/, sleep(gap)];
                case 2:
                    _a.sent();
                    return [3 /*break*/, 0];
                case 3: return [2 /*return*/];
            }
        });
    });
}
function sniper() {
    return __awaiter(this, void 0, void 0, function () {
        var gap;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    if (!on) return [3 /*break*/, 2];
                    gap = 100;
                    dm.keyPress(123); // F12
                    return [4 /*yield*/, sleep(gap)];
                case 1:
                    _a.sent();
                    return [3 /*break*/, 0];
                case 2: return [2 /*return*/];
            }
        });
    });
}
var job = function () { return __awaiter(void 0, void 0, void 0, function () {
    return __generator(this, function (_a) {
        switch (_a.label) {
            case 0:
                // assume already opened auction house
                // let w = 2000
                // let h = 2000
                dm.keyPress(52); // 按键霜甲术模拟声音
                selector();
                sniper();
                _a.label = 1;
            case 1:
                if (!true) return [3 /*break*/, 3];
                return [4 /*yield*/, sleep(1000)];
            case 2:
                _a.sent();
                return [3 /*break*/, 1];
            case 3: return [2 /*return*/];
        }
    });
}); };
function start() {
    return __awaiter(this, void 0, void 0, function () {
        var gap, ur;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    gap = 50;
                    return [4 /*yield*/, checkAdmin()
                            .then(function (t) { return console.log("continue"); })["catch"](function (c) { return process.exit(1); })];
                case 1:
                    _a.sent();
                    return [4 /*yield*/, sleep(gap)];
                case 2:
                    _a.sent();
                    initDmWow();
                    console.log('start job in 50ms...');
                    return [4 /*yield*/, sleep(gap)];
                case 3:
                    _a.sent();
                    return [4 /*yield*/, job()
                        //await switcher()
                    ];
                case 4:
                    _a.sent();
                    //await switcher()
                    dm.keyPress(49); // 按键不能攻击模拟声音
                    return [4 /*yield*/, sleep(gap)];
                case 5:
                    _a.sent();
                    ur = dm.unBindWindow();
                    console.log('unBindWindow', ur);
                    return [4 /*yield*/, sleep(gap)
                        // dm.setWindowState(hw, 1)
                    ];
                case 6:
                    _a.sent();
                    return [2 /*return*/];
            }
        });
    });
}
start().then(function (r) { return console.log("ALL END!"); });
