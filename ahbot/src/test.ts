import dm = require('dm.dll')

console.log('dm Ver:',dm.dll.ver())
// console.log(dm.dll)

const dll = dm.dll

dm.dll.moveTo(500, 500)
const h1 = dm.findWindow("","魔兽世界")
console.log(h1)

h1
let r = dm.setWindowState(h1, 4)
r = dm.setWindowState(h1, 8)
r= dm.setWindowState(h1, 7)
console.log('r',r)

// r = dm.capture(0,0,1600,1000,"now1.bmp")

// let fr = dm.findPic(0,0,w,h,"btn.bmp","000000",0.7,0)
// console.log("findPic", fr)
// await sleep(5)
//
// let x = fr.x
// let y = fr.y
// console.log(x, y)
// x = x + 5
// y = y + 5


// console.log('激活', dm.dll.GetWindowState(hw, 1))
// console.log('可见', dm.dll.GetWindowState(hw, 2))
// console.log('最小化', dm.dll.GetWindowState(hw, 3))
// console.log('最大化', dm.dll.GetWindowState(hw, 4))
// console.log('置顶', dm.dll.GetWindowState(hw, 5))
// console.log('无响应', dm.dll.GetWindowState(hw, 6))


async function getColorMoveTo(x: number, y: number) {
    console.log('getColorMoveTo', x, y)

    let cr = dm.getColor(x, y)
    console.log('getColor', cr)

    let m = dm.moveTo(x, y)
    if (m === 1) {
        console.log('movedTo', x, y)
    }

    // await sleep(20)

    dm.leftClick()

    // await sleep(20)

    let r = dm.keyPress(27) // Esc
}
