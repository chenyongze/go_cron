package main

import (
	"github.com/astaxie/beego"
	"go_cron/jobs"
	"go_cron/models"
	_ "go_cron/routers"
)

func init() {
	//初始化数据模型
	models.Init()
	jobs.InitJobs()
}

func main() {
	beego.BConfig.WebConfig.Session.SessionOn = true
	beego.Run()
}
