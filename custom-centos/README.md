## <center>定制CentOS</center>
### 项目要求
```
1. 定制一个iso, mini+lamp
2. 支持全自动安装，也支持手动安装（选择安装组包了mini+lamp）
3. 安装完成可通过浏览器访问lamp，首页内容显示系统信息（类似于phpinfo bashtop.sh）
4. 所有实践过程要有完整的文档。
5. 所有代码在gitee上多人协作。最终你的项目应该能一键生成定制iso.
```
### 版本介绍
NOTE: 支持BIOS和UEFI安装
```
系统
Version 1
  - 手动可安装定制系统
Version 2
  - 系统集成vim、bash-completion软件包安装系统即可使用
Version 3
  - 支持手动和全自动安装
Version4
  - V4.1
    - 支持yum组安装LAMP架构（yum groupinfo lamp可查看有LAMP组，但安装存在问题，待修复）
    - 支持一键完成定制LAMP架构
    - 将LAMP架构自动部署脚本置于ks.cfg文件中执行
  - V4.2
    - 改动：
      - 修改脚本运行逻辑：配置ks.cfg文件让其生成自动部署LAMP的脚本于安装完系统后运行
      - 解决模块化报错，不再需要两张光盘

脚本
Version 1
  - 简单的lamp搭建和yum源的建立，但是对于ks.cfg的支持不太完善
  - 加入定制ISO自动化部署LAMP架构测试
Version 2
  - 修改yum建立本地源的代码，支持多个cdrom本地源
  - 新增：
    - 自动识别网卡IP地址
  - 修复：
    - cat > <EOF中的二次脱意，以防止在系统执行脚本过程中被当作变量
    - 防火墙在安装完系统后不再重启
Version 3
  - 优化php页面代码，增加时间实时动态刷新
  - 完成定制ISO自动化部署LAMP架构测试
```

### 常用命令
```
yum clean all
yum makecache
yum grouplist
yum groupinfo groupname
yum groupinstall groupname
yum install softwarename
yum seach softwarename
yum dplist softwarename		//查看依赖关系和提供依赖关系的软件包
```