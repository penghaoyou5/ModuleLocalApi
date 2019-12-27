#!/usr/bin/env bash
commit_diff_content=`git diff origin/master...HEAD --name-status`
for line in ${commit_diff_content}
do
#    echo ${line%/*}
    if [[ ${line%/*} == *Api ]]
    then
        echo ${line%/*}
#        echo "有以api结尾的文件改变"
        git push -u origin master
        echo 0
        exit 1
#        gradle task
    fi
done

echo 1
exit 0