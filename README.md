### 自建 go modules 代理




1.点击下面这个按钮

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)


用 [goproxy](https://github.com/goproxyio/goproxy] 在 [heroku](https://heroku.com) 自建 go modules 代理。




2.First, you will need to enable the Go Modules feature and configure Go to use the proxy.

linux:
`export GOPROXY=https://你申请的herokuapp链接`

windows:
`$env:GOPROXY = "https://你申请的herokuapp链接"`

Now, when you build and run your applications, go will fetch dependencies via `https://你申请的herokuapp链接`.

Note: This proxy can't fetch your private repos of course.

