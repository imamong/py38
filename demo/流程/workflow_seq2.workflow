<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Flow name="seq2" sid="string" desc="" namespace="RPA.AutoTest" dll="">
  <GVars/>
  <Params/>
  <Vars/>
  <Steps>
    <FlowStart name="Start" sid="123" desc="Start" control="" nodeid="1" replay="true">
      <canvas>
        <avNode id="1" name="Start" title="开始" opertype="RootStart" Description="Start" endpoints="[object Object]" nodeTag="FlowStart" consoleErrorTip="false" top="20" left="460" drawId="draw0" _global="[object Object]" draggable="true"/>
      </canvas>
      <args/>
    </FlowStart>
    <FlowStep name="ClearPythonFunc" sid="123" sAssembly="RPA.Common.Activity" desc="调用Python函数" control="" nodeid="3" replay="true" >
      <canvas>
        <avNode id="3" title="调用Python函数" top="180" left="400" drawId="draw0" endpoints="[object Object],[object Object]" errMsg="" name="ClearPythonFunc" annotation="使用本地Python环境运行Python代码脚本，需要预装Python及依赖包。" opertype="脚本运行" Description="调用Python函数" index="2" GdesOperationType="" systemType="windows,linux" sAssembly="RPA.Common.Activity" control="false" number="Robot-Common-006" nodeTag="FlowStep" args="[object Object],[object Object],[object Object],[object Object],[object Object],[object Object]" _global="[object Object]" draggable="true" breakShow="false" annoteShow="false" consoleErrorTip="false" breakPoint="false"/>
      </canvas>
      <args>
        <ParamBinding name="ScriptPath" value="D:/rpawork/demo/流程/代码文件/Python脚本" title="执行路径"/>
        <ParamBinding name="ScriptName" value="test.py" title="脚本文件名"/>
        <ParamBinding name="FuncName" value="demofunc" title="调用函数名"/>
        <ParamBinding name="InputArgs" value="11 22211" title="输入参数"/>
        <ParamBinding name="TimeOut" value="60" title="执行超时(S)"/>
        <ParamBinding name="VarName" value="xxx" title="输出-变量名"/>
      </args>
    </FlowStep>
    <FlowStep name="VarConvertToString" sid="123" sAssembly="RPA.Variable.Activity" desc="变量转换为字符串" control="" nodeid="4" breakPoint="false" annoteShow="false">
      <canvas>
        <avNode id="4" title="变量转换为字符串" top="340" left="400" drawId="draw0" endpoints="[object Object],[object Object]" errMsg="" name="VarConvertToString" annotation="将变量转换成字符串，并可在日志中打印选定的变量。" opertype="变量处理" Description="变量转换为字符串" index="3" GdesOperationType="" systemType="windows,linux" sAssembly="RPA.Variable.Activity" control="false" number="Robot-Variable-003" nodeTag="FlowStep" args="[object Object],[object Object]" _global="[object Object]" draggable="true" breakShow="false" annoteShow="false" consoleErrorTip="false" breakPoint="false"/>
      </canvas>
      <args>
        <ParamBinding name="VarName" value="xxx" title="变量"/>
        <ParamBinding name="OutJsoName" value="yyy" title="输出-变量"/>
      </args>
    </FlowStep>
  </Steps>
</Flow>