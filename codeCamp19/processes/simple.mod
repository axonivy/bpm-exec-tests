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
se0 @PushWFArc f2 '' #zField
>Proto se0 se0 simple #zField
se0 f0 outLink start.ivp #txt
se0 f0 type com.axonivy.code.camp19.Data #txt
se0 f0 inParamDecl '<> param;' #txt
se0 f0 inParamTable 'out.username="Mr. Junit";
' #txt
se0 f0 actionDecl 'com.axonivy.code.camp19.Data out;
' #txt
se0 f0 guid 16CBDE256F924BE3 #txt
se0 f0 requestEnabled true #txt
se0 f0 triggerEnabled false #txt
se0 f0 callSignature start() #txt
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
se0 f1 337 49 30 30 0 15 #rect
se0 f1 @|EndIcon #fIcon
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
se0 f2 expr out #txt
se0 f2 280 64 337 64 #arcP
>Proto se0 .type com.axonivy.code.camp19.Data #txt
>Proto se0 .processKind NORMAL #txt
>Proto se0 0 0 32 24 18 0 #rect
>Proto se0 @|BIcon #fIcon
se0 f0 mainOut f4 tail #connect
se0 f4 head f3 mainIn #connect
se0 f3 mainOut f2 tail #connect
se0 f2 head f1 mainIn #connect
