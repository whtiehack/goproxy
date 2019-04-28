### 自建 go modules 代理




1. 点击下面这个按钮（或者先fork再点，这样可以自己修改部署脚本）

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)


用 [goproxy](https://github.com/goproxyio/goproxy) 在 [heroku](https://heroku.com) 自建 go modules 代理。

![image](https://user-images.githubusercontent.com/12741016/56861611-1606b680-69d5-11e9-825a-6fa111a782ed.png)

> App name  是一个唯一的 app名字
> Choose a region 有美国和欧洲可以选。个人认为美国的速度还不错。
> 点 Create app ,等一会就部署完成了。

2. 现在你就可以使用你自建的 go modules 代理了。

linux:
`export GOPROXY=https://youappname.herokuapp.com`

windows:
`$env:GOPROXY = "https://youappname.herokuapp.com"`


3. Now, when you build and run your applications, go will fetch dependencies via `https://youappname.herokuapp.com`.


> Note: This proxy can't fetch your private repos of course.
> `youappname` 是你Crate New App 时的 App name





4. 直接打开你申请的链接应该是显示空白。

可以用这个链接测试一下： https://youappname.herokuapp.com/github.com/nsqio/nsq/@v/list

