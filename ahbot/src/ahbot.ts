import * as os from 'os'
import * as cp from 'child_process'
import dm = require('dm.dll')

// ==============================================
// globals
// ==============================================
let dll
let hw

// ==============================================
// check admin
// ==============================================
function checkAdmin() {
    console.log("==============================================")
    let p = new Promise((resolve, reject) => {
        console.log("CHECKING ADMIN...")
        if (os.platform() == "win32") {
            cp.exec('net session', function (err, stdout, stderr) {
                if (stderr.includes('5')) {
                    console.log("NOT ADMIN :(")
                    reject(stderr)
                    return
                } else {
                    console.log("ADMIN :)")
                    resolve(stdout)
                }
            })
        } else {
            console.error("Unknown")
        }
    });
    return p;
}

// ==============================================
// init dm.dll -> hook Wow
// ==============================================
function initDmWow() {
    console.log("==============================================")
    console.log('dm Ver:', dm.dll.ver())
    dll = dm.dll

    hw = dm.findWindow("", "魔兽世界")
    console.log("hw", hw)
    console.log("tittle", dm.dll.GetWindowTitle(hw))
    console.log("window status", dm.dll.GetWindowState(hw, 1))

    const mode = "dx2"
    console.log('mode', mode)
    const r = dm.dll.BindWindowEx(hw, mode, "windows", "windows", "", 1)
    console.log('BindWindowEx status', r)
    console.log("==============================================")
}

// ==============================================
// functions
// ==============================================
const sleep = (milliseconds) => {
    return new Promise(resolve => setTimeout(resolve, milliseconds))
}

let on = true;

async function selector() {
    while (on) {
        let gap = 500

        let r
        r = dm.keyDown(16) // shift
        // r = dm.keyDown(17) // ctrl
        r = dm.keyDown(18) // alt
        await sleep(50)
        r = dm.keyUp(16)
        // r = dm.keyUp(17)
        r = dm.keyUp(18)

        await sleep(gap)
    }
}

async function sniper() {
    while (on) {
        let gap = 200

        dm.keyPress(123) // F12

        await sleep(gap)
    }
}

const job = async () => {
    // assume already opened auction house

    // let w = 2000
    // let h = 2000

    dm.keyPress(52) // 按键霜甲术模拟声音

    selector()
    sniper()
    
    while (true) {
        await sleep(1000)
    }
}

async function start() {
    let gap = 50
    await checkAdmin()
        .then(t => console.log("continue"))
        .catch(c => process.exit(1))
    
    await sleep(gap)
    initDmWow()

    console.log('start job in 50ms...')
    await sleep(gap)
    await job()
    //await switcher()
    dm.keyPress(49) // 按键不能攻击模拟声音
    await sleep(gap)
    let ur = dm.unBindWindow()
    console.log('unBindWindow', ur)
    await sleep(gap)
    // dm.setWindowState(hw, 1)
}

start().then(r => console.log("ALL END!"))
