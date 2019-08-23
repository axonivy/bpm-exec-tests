[Ivy]
16CBDE25640EB8E8 3.20 #module
>Proto >Proto Collection #zClass
se0 simple Big #zClass
se0 B #cInfo
se0 #process
se0 @TextInP .resExport .resExport #zField
se0 @TextInP .type .type #zField
se0 @TextInP .processKind .processKind #zField
se0 @AnnotationInP-0n ai ai #zField
se0 @MessageFlowInP-0n messageIn messageIn #zField
se0 @MessageFlowOutP-0n messageOut messageOut #zField
se0 @TextInP .xml .xml #zField
se0 @TextInP .responsibility .responsibility #zField
se0 @StartRequest f0 '' #zField
se0 @EndTask f1 '' #zField
se0 @GridStep f3 '' #zField
se0 @PushWFArc f4 '' #zField
se0 @Alternative f5 '' #zField
se0 @PushWFArc f6 '' #zField
se0 @PushWFArc f2 '' #zField
se0 @TaskSwitchSimple f7 '' #zField
se0 @TkArc f8 '' #zField
se0 @EndTask f9 '' #zField
se0 @PushWFArc f10 '' #zField
>Proto se0 se0 simple #zField
se0 f0 outLink start.ivp #txt
se0 f0 type com.axonivy.code.camp19.Data #txt
se0 f0 inParamDecl '<java.lang.Long dollars,java.lang.String message> param;' #txt
se0 f0 inParamTable 'out.creditDollars=param.dollars;
out.message=param.message;
out.username="Mr. Junit";
' #txt
se0 f0 actionDecl 'com.axonivy.code.camp19.Data out;
' #txt
se0 f0 guid 16CBDE256F924BE3 #txt
se0 f0 requestEnabled true #txt
se0 f0 triggerEnabled false #txt
se0 f0 callSignature start(Long,String) #txt
se0 f0 persist false #txt
se0 f0 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
se0 f0 caseData businessCase.attach=true #txt
se0 f0 showInStartList 1 #txt
se0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
se0 f0 @C|.responsibility Everybody #txt
se0 f0 81 49 30 30 -25 17 #rect
se0 f0 @|StartRequestIcon #fIcon
se0 f1 type com.axonivy.code.camp19.Data #txt
se0 f1 433 49 30 30 0 15 #rect
se0 f1 @|EndIcon #fIcon
se0 f1 -1|-1|-16744448 #nodeStyle
se0 f3 actionDecl 'com.axonivy.code.camp19.Data out;
' #txt
se0 f3 actionTable 'out=in;
' #txt
se0 f3 actionCode ivy.log.info("user="+in.username); #txt
se0 f3 type com.axonivy.code.camp19.Data #txt
se0 f3 168 42 112 44 0 -7 #rect
se0 f3 @|StepIcon #fIcon
se0 f4 expr out #txt
se0 f4 111 64 168 64 #arcP
se0 f5 type com.axonivy.code.camp19.Data #txt
se0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>$ &lt; 200</name>
        <nameStyle>7
</nameStyle>
    </language>
</elementInfo>
' #txt
se0 f5 336 48 32 32 -23 -37 #rect
se0 f5 @|AlternativeIcon #fIcon
se0 f6 expr out #txt
se0 f6 280 64 336 64 #arcP
se0 f2 expr in #txt
se0 f2 outCond 'in.creditDollars < 200' #txt
se0 f2 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes&lt;</name>
        <nameStyle>4
</nameStyle>
    </language>
</elementInfo>
' #txt
se0 f2 368 64 433 64 #arcP
se0 f2 0 0.47692307692307695 0 -7 #arcLabel
se0 f7 actionDecl 'com.axonivy.code.camp19.Data out;
' #txt
se0 f7 actionTable 'out=in1;
' #txt
se0 f7 outTypes "com.axonivy.code.camp19.Data" #txt
se0 f7 outLinks "TaskA.ivp" #txt
se0 f7 taskData 'TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.NAM=Check credit request <%\=in1.creditDollars%>$$ from <%\=in1.username%>
TaskA.PRI=2
TaskA.ROL=line-manager
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=0' #txt
se0 f7 type com.axonivy.code.camp19.Data #txt
se0 f7 template "" #txt
se0 f7 337 113 30 30 0 16 #rect
se0 f7 @|TaskSwitchSimpleIcon #fIcon
se0 f8 expr in #txt
se0 f8 type com.axonivy.code.camp19.Data #txt
se0 f8 var in1 #txt
se0 f8 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>no</name>
        <nameStyle>2
</nameStyle>
    </language>
</elementInfo>
' #txt
se0 f8 352 80 352 113 #arcP
se0 f9 type com.axonivy.code.camp19.Data #txt
se0 f9 433 145 30 30 0 15 #rect
se0 f9 @|EndIcon #fIcon
se0 f9 -1|-1|-13016147 #nodeStyle
se0 f10 expr data #txt
se0 f10 outCond ivp=="TaskA.ivp" #txt
se0 f10 352 143 433 160 #arcP
se0 f10 1 352 160 #addKink
se0 f10 1 0.3071266698846509 0 0 #arcLabel
>Proto se0 .type com.axonivy.code.camp19.Data #txt
>Proto se0 .processKind NORMAL #txt
>Proto se0 0 0 32 24 18 0 #rect
>Proto se0 @|BIcon #fIcon
se0 f0 mainOut f4 tail #connect
se0 f4 head f3 mainIn #connect
se0 f3 mainOut f6 tail #connect
se0 f6 head f5 in #connect
se0 f5 out f2 tail #connect
se0 f2 head f1 mainIn #connect
se0 f5 out f8 tail #connect
se0 f8 head f7 in #connect
se0 f7 out f10 tail #connect
se0 f10 head f9 mainIn #connect
