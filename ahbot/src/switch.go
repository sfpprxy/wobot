package main

import (
	"fmt"
	"github.com/go-vgo/robotgo"
	log "github.com/sirupsen/logrus"
	"math/rand"
	"os/exec"
	"time"
)

var isStarted = false
var sleepTime = 120
var kbDelay = 200

func doWalk() {
	log.Debug("闲逛")
	// 旋转方向
	dirs := []string{"left", "right"}
	// 旋转时间
	rotateTime := rand.Intn(5)
	// 前进时间
	forwardTime := rand.Intn(5)

	dir := dirs[rand.Intn(len(dirs))]

	robotgo.KeyToggle(dir, "down")
	robotgo.Sleep(rotateTime)
	robotgo.KeyToggle(dir, "up")

	robotgo.KeyToggle("up", "down")
	robotgo.Sleep(forwardTime)
	robotgo.KeyToggle("up", "up")
}

func doEmote() {
	log.Debug("表情")
	emotes := []string{"dance", "hi", "laugh"}
	emote := emotes[rand.Intn(len(emotes))]
	robotgo.KeyTap("/")
	robotgo.MilliSleep(kbDelay)
	robotgo.TypeStr(emote)
	robotgo.MilliSleep(kbDelay)
	robotgo.KeyTap("enter")
}

func doCast() {

}

func doRand() {
	dos := []func(){doWalk, doEmote}
	do := dos[rand.Intn(len(dos))]
	do()
}

func listenKey() {
	time.Sleep(10 * time.Millisecond)
	pauseKey := robotgo.AddEvent("`")
	if pauseKey {
		isStarted = !isStarted
		if isStarted {
			out, err := exec.Command("pm2", "start", "./ahbot.js", "--name", "ahbot").Output()
			if err != nil {
				log.Error(err)
			}
			fmt.Println(string(out))
			fmt.Println("on")
		} else {
			out, err := exec.Command("pm2", "stop", "ahbot").Output()
			if err != nil {
				log.Error(err)
			}
			fmt.Println(string(out))
			fmt.Println("off")
		}
		listenKey()
	}
}

func main() {
	log.SetFormatter(&log.TextFormatter{})
	log.SetLevel(log.DebugLevel)

	// 监听快捷键
	go listenKey()
	// 主循环
	for {
		if isStarted {
			// 挂机动作循环
			for isStarted {
				//doRand()
				robotgo.Sleep(rand.Intn(sleepTime))
			}
		}
		robotgo.Sleep(1)
	}
}
