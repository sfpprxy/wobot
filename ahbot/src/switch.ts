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
function getWow() {
    console.log("==============================================")
    console.log('dm Ver:', dm.dll.ver())
    dll = dm.dll

    hw = dm.findWindow("", "魔兽世界")
    console.log("hw", hw)
    console.log("tittle", dm.dll.GetWindowTitle(hw))
    console.log("window status", dm.dll.GetWindowState(hw, 1))
}

// ==============================================
// functions
// ==============================================
const sleep = (milliseconds) => {
    return new Promise(resolve => setTimeout(resolve, milliseconds))
}

let on = false;

async function switcher() {
    while (true) {
        let gap = 200

        let c = dm.getCursorPos()
        let state = dm.getKeyState(187)
        console.log(state)
        if (c.y <= 20 && c.x >= 1000) {
            if (!on) {
                cp.exec("pm2 start ./ahbot.js --name ahbot")
                on = true
                console.log("on")
            }
        }
        if (c.y >= 1076 && c.x >= 1000) {
            if (on) {
                cp.exec("pm2 stop ahbot")
                on = false
                console.log("off")
            }
        }

        await sleep(gap)
    }
}


const job = async () => {

    await switcher()

}

async function start() {
    let gap = 100
    await checkAdmin()
        .then(t => console.log("continue"))
        .catch(c => process.exit(1))

    console.log('start switch job in 50ms...')
    await sleep(gap)
    await job()
    await sleep(gap)
}

start().then(r => console.log("ALL END!"))
