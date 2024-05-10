#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @author: lifeng29@163.com

import os
import sys
import traceback
import requests


def demofunc(*args):
    # 参数作为list传递过来，可以print输出
    print(args)
    # 按照需要自己配置输出，可以是string，list，dict
    result = {
        'string': 'test return',
        'msgList': ['1','2','3'],
        'data': "my return msg"
    }

    try:
        if len(args) > 0:
            # 获取自己需要的参数
            mypar1 = args[0]
            # mypar2 = args[1]
            print(mypar1)
            # 按需处理自己的业务逻辑
            result['data'] = '这是我要的输出'
            result['data1'] = ['res1', '结果2', 'output3']
    except Exception as e:
        result = {
            'string': 'err msg',
            'msgList': ['1', '2', '3'],
            'errmsg': "执行出错，错误信息:{}，所在行数:{}".format(e, e.__traceback__.tb_lineno)
        }
    return result


if __name__ == '__main__':
    args = sys.argv[1:]
    print(args)
    res = demofunc(*args)
    print(res)
