#!/bin/bash

# 准备阶段
echo "开始发布 Hugo 博客..."
set -e

# 1. 生成静态文件
hugo

# 2. 进入 public 目录
cd public

# 3. 添加所有变更
git add .

# 4. 提交
git commit -m "update"

# 5. 推送到远程 master 分支
git push origin master --force

# 6. 返回根目录
cd ..

echo "博客已经自动发布成功！"