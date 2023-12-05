1. 阅读 `man ls` ，然后使用`ls` 命令进行相关操作。
   - 显示所有文件，包括隐藏文件，`ls -a`
   - 以人类可以理解的格式输出, `ls -h`
   - 文件以最近访问顺序排序, `ls -t`
   - 以彩色文本输出结果, `ls --color=auto`

2. 编写两个bash函数 marco 和 polo 执行下面的操作。
[marco&polo 脚本文件](./marco-polo.sh)

3. 测试失败命令。
[cout_err 脚本文件](./count_err.sh)

4. 强大的`find`命令。
```shell
find . -type f -name "*.html" | xargs -d '\n'  tar -cvzf html.zip
```
5. 编写一个命令或脚本递归的查找文件夹中最近使用的文件。
```shell
find . -type f -print0 | xargs -0 ls -lt | head -1
```
- `xargs -0 ls -lt` ：`xargs -0` 命令会读取输入（这里是 `find` 命令的输出），并将读取到的每一项作为参数传递给后面的命令（这里是 `ls -lt`）
