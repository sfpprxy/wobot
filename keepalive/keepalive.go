package main

import (
	"fmt"
	"github.com/go-vgo/robotgo"
	log "github.com/sirupsen/logrus"
	"math/rand"
	"time"
)

var isStarted = false
var sleepTime = 1
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

func wowPrintStart() {
	robotgo.KeyTap("/")
	robotgo.MilliSleep(kbDelay)
	robotgo.TypeStr("s 1")
	robotgo.MilliSleep(kbDelay)
	robotgo.KeyTap("enter")
}

func wowPrintEnd() {
	robotgo.KeyTap("/")
	robotgo.MilliSleep(kbDelay)
	robotgo.TypeStr("s 2")
	robotgo.MilliSleep(kbDelay)
	robotgo.KeyTap("enter")
}

func listenKey() {
	robotgo.Sleep(1)
	log.Debug("开始监听下一次快捷键")
	pauseKey := robotgo.AddEvent("9")
	if pauseKey {
		isStarted = !isStarted
		if isStarted {
			log.Info("开始挂机")
		} else {
			log.Info("停止挂机 按F10再次启动挂机")
		}
		listenKey()
	}
}

func activate() {
	key := []byte("tougenb tougenb ")
	// input activation code
	fmt.Print("请粘贴激活码并回车:")
	input := ""
	n, err := fmt.Scanln(&input)
	if err != nil {
		log.Error(n, err)
	}
	dateStr, err := decrypt(key, input)
	if err != nil {
		log.Error("激活码错误或已过期", dateStr)
		activate()
	}
	layout := "2006-01-02"
	date, err := time.Parse(layout, dateStr)
	if err != nil {
		log.Error(err)
	}
	if date.Before(time.Now()) {
		log.Error("激活码错误或已过期")
		activate()
	}
	log.Info("已激活 到期时间 ", dateStr)
}

func main() {
	log.SetFormatter(&log.TextFormatter{})
	log.SetLevel(log.DebugLevel)

	log.Info("==================使用说明==================")
	log.Info("1. 进入魔兽 主城找个人少的地方")
	log.Info("2. 按F10开始/停止挂机")
	log.Info("3. 看到人物说话 '1'代表挂机开始 '2'代表挂机结束")
	log.Info()
	log.Info("防T机制: 模拟真人键盘操作, 不定期做随机移动等动作")
	log.Info("如何关闭挂机宝: 直接关掉本窗口")
	log.Info("==================使用说明==================")
	// 验证激活
	activate()
	// 监听快捷键
	go listenKey()
	// 主循环
	for {
		if isStarted {
			log.Info("5秒后开始模拟操作 请打开魔兽窗口")
			wowPrintStart()
			robotgo.Sleep(5)
			// 挂机动作循环
			for isStarted {
				doRand()
				robotgo.Sleep(rand.Intn(sleepTime))
			}
			wowPrintEnd()
		}
		robotgo.Sleep(1)
	}
}
