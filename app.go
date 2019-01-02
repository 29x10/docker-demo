package main

import "github.com/kataras/iris"

func main() {
    app := iris.Default()
    app.Get("/", func(ctx iris.Context) {
        ctx.JSON(iris.Map{
            "version": 1,
        })
    })
    app.Run(iris.Addr(":8080"))
}