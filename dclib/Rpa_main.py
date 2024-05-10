#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @author: lifeng29@163.com


import os
import sys
import json
import importlib
import traceback
import logging as logz


# logz.basicConfig(level=logz.DEBUG)
class SetEncoder(json.JSONEncoder):
    def default(self, obj):
        if isinstance(obj, set):
            return list(obj)
        return json.JSONEncoder.default(self, obj)


class RPA_Base():
    def __init__(self, scfile):
        self.scfile = scfile

    def run(self, func_name, *parms):
        # logz.info(TS_NAME)
        rtmsg = dict()
        rtmsg['script'] = '执行脚本:%s' % self.scfile
        rtmsg['code'] = '200'
        rtmsg['rt_msg'] = ''

        if not os.path.isfile(self.scfile):
            rtmsg['code'] = '404'
            rtmsg['rt_type'] = 'str'
            sc_res = '脚本文件不存在'
            rtmsg['rt_msg'] = sc_res
        else:
            libpath = os.path.dirname(os.path.abspath(os.path.realpath(self.scfile)))
            sys.path.append(libpath)
            TS_NAME = os.path.basename(self.scfile)
            TS_NAME = os.path.splitext(TS_NAME)[0]
            try:
                trigger = importlib.import_module(TS_NAME)
                this_func = getattr(trigger, func_name, None)
                if callable(this_func):
                    sc_res = this_func(*parms)
                    # logz.info(sc_res)
                    if isinstance(sc_res, str):
                        rtmsg['rt_type'] = 'str'
                    elif isinstance(sc_res, (list, tuple)):
                        rtmsg['rt_type'] = 'list'
                    elif isinstance(sc_res, dict):
                        rtmsg['rt_type'] = 'dict'
                    rtmsg['rt_msg'] = sc_res
                else:
                    rtmsg['code'] = '500'
                    rtmsg['rt_type'] = 'str'
                    rtmsg['rt_msg'] = '函数不可用'
                # logz.debug("result_ret:%s" % sc_res_str)

            except Exception as ex:
                rtmsg['code'] = '500'
                rtmsg['rt_type'] = 'str'
                rtmsg['rt_msg'] = '执行失败: ' + str(traceback.format_exc())
                # logz.error(ex)
            finally:
                pass
        return rtmsg


if __name__ == "__main__":
    # print(sys.argv[1:])
    if len(sys.argv) < 4:
        print('usage: python Rpa_main.py your_script.py your_func parm1 parm2 ......')
        exit(1)
    scfile, funcname, *parms = sys.argv[1:]
    # print(scfile)
    # print(funcname)
    # print(*parms)
    dr = RPA_Base(scfile)
    res = dr.run(funcname, *parms)
    print('############')
    return_msg = json.dumps(res, ensure_ascii=False, cls=SetEncoder)
    print(return_msg)
