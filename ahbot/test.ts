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
