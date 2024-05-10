<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Flow name="seq1" sid="string" desc="demo" namespace="RPA.AutoTest" dll="">
  <GVars/>
  <Params/>
  <Vars>
    <ParamBinding name="xxx" type="string" desc="关键字">bianlianzhi</ParamBinding>
  </Vars>
  <Steps>
    <FlowStart name="Start" sid="123" desc="Start" control="" nodeid="1">
      <canvas>
        <avNode id="1" name="Start" title="开始" opertype="RootStart" Description="Start" endpoints="[object Object]" nodeTag="FlowStart" consoleErrorTip="false" top="20" left="460" drawId="draw1" _global="[object Object]" draggable="true"/>
      </canvas>
      <args/>
    </FlowStart>
    <FlowStep name="PythonExecute" sid="123" sAssembly="RPA.Common.Activity" desc="运行Python代码" control="" nodeid="2" replay="true" >
      <canvas>
        <avNode id="2" title="运行Python代码" top="180" left="400" drawId="draw1" endpoints="[object Object],[object Object]" errMsg="" name="PythonExecute" annotation="运行Python自定义脚本执行" opertype="脚本运行" Description="运行Python代码" index="1" GdesOperationType="" systemType="windows,linux" sAssembly="RPA.Common.Activity" control="false" number="Robot-Common-001" nodeTag="FlowStep" args="[object Object],[object Object]" _global="[object Object]" draggable="true" breakShow="false" annoteShow="false" consoleErrorTip="false" breakPoint="false"/>
      </canvas>
      <args>
        <ParamBinding name="ScriptPath" value="D:/rpawork/demo/流程/代码文件/Python脚本/test.py" title="脚本路径"/>
        <ParamBinding name="VarName" value="aa" title="变量名"/>
      </args>
    </FlowStep>
    <FlowStep name="ClearPythonScript" sid="123" sAssembly="RPA.Common.Activity" desc="运行Python代码文件" control="" nodeid="3" replay="true" >
      <canvas>
        <avNode id="3" title="运行Python代码文件" top="340" left="400" drawId="draw1" endpoints="[object Object],[object Object]" errMsg="" name="ClearPythonScript" annotation="使用本地Python环境运行Python代码脚本，需要预装Python及依赖包。" opertype="脚本运行" Description="运行Python代码文件" index="6" GdesOperationType="" systemType="windows,linux" sAssembly="RPA.Common.Activity" control="false" number="Robot-Common-006" nodeTag="FlowStep" args="[object Object],[object Object],[object Object],[object Object],[object Object]" _global="[object Object]" draggable="true" breakShow="false" annoteShow="false" consoleErrorTip="false" breakPoint="false"/>
      </canvas>
      <args>
        <ParamBinding name="ScriptPath" value="D:/rpawork/demo/流程/代码文件/Python脚本" title="执行路径"/>
        <ParamBinding name="ScriptName" value="test.py" title="脚本文件名"/>
        <ParamBinding name="InputArgs" value="aaa bbb {{xxx}}" title="输入参数"/>
        <ParamBinding name="TimeOut" value="60" title="执行超时(S)"/>
        <ParamBinding name="VarName" value="ccc" title="输出-变量名"/>
      </args>
    </FlowStep>
    <FlowAssign name="Assign" sid="123" sAssembly="RPA.Basic.Activity" desc="变量分配" nodeid="6" replay="true"  annoteShow="true" >
      <canvas>
        <avNode id="6" title="变量分配" top="500" left="400" drawId="draw1" endpoints="[object Object],[object Object]" errMsg="" name="Assign" annotation="在一个活动中设置多个或一个变量，参数。" opertype="工作流处理" Description="变量分配" index="15" GdesOperationType="" systemType="windows,linux" sAssembly="RPA.Basic.Activity" control="false" number="Robot-BASE-015" nodeTag="FlowAssign" args="[object Object]" _global="[object Object]" draggable="true" breakShow="false" annoteShow="true" consoleErrorTip="false" breakPoint="false"/>
      </canvas>
      <FlowName/>
      <args>
        <ParamBindingVar name="ccc" title="目标" type="string" value="中午"/>
      </args>
    </FlowAssign>
    <FlowStep name="VarConvertToString" sid="123" sAssembly="RPA.Variable.Activity" desc="变量转换为字符串" control="" nodeid="5" replay="true">
      <canvas>
        <avNode id="5" title="变量转换为字符串" top="660" left="400" drawId="draw1" endpoints="[object Object],[object Object]" errMsg="" name="VarConvertToString" annotation="将变量转换成字符串，并可在日志中打印选定的变量。" opertype="变量处理" Description="变量转换为字符串" index="3" GdesOperationType="" systemType="windows,linux" sAssembly="RPA.Variable.Activity" control="false" number="Robot-Variable-003" nodeTag="FlowStep" args="[object Object],[object Object]" _global="[object Object]" draggable="true" consoleErrorTip="false"/>
      </canvas>
      <args>
        <ParamBinding name="VarName" value="ccc" title="变量"/>
        <ParamBinding name="OutJsoName" value="ddd" title="输出-变量"/>
      </args>
    </FlowStep>
  </Steps>
</Flow>