package
{
   import flash.net.getClassByAlias;
   import flash.net.registerClassAlias;
   import flash.system.*;
   import flash.utils.*;
   import mx.accessibility.AlertAccImpl;
   import mx.accessibility.ButtonAccImpl;
   import mx.accessibility.PanelAccImpl;
   import mx.accessibility.UIComponentAccProps;
   import mx.collections.ArrayCollection;
   import mx.collections.ArrayList;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.effects.EffectManager;
   import mx.managers.systemClasses.ChildManager;
   import mx.styles.IStyleManager2;
   import mx.styles.StyleManagerImpl;
   import mx.utils.ObjectProxy;
   import spark.accessibility.ButtonBarBaseAccImpl;
   import spark.accessibility.ButtonBaseAccImpl;
   import spark.accessibility.CheckBoxAccImpl;
   import spark.accessibility.DataGridAccImpl;
   import spark.accessibility.DropDownListBaseAccImpl;
   import spark.accessibility.ListAccImpl;
   import spark.accessibility.ListBaseAccImpl;
   import spark.accessibility.PanelAccImpl;
   import spark.accessibility.RadioButtonAccImpl;
   import spark.accessibility.RichEditableTextAccImpl;
   import spark.accessibility.TabBarAccImpl;
   import spark.accessibility.TextBaseAccImpl;
   import spark.accessibility.TitleWindowAccImpl;
   import spark.accessibility.ToggleButtonAccImpl;
   
   public class _Main_FlexInit
   {
      
      public function _Main_FlexInit()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         var styleNames:Array;
         var i:int;
         var styleManager:IStyleManager2 = null;
         var fbs:IFlexModuleFactory = param1;
         new ChildManager(fbs);
         styleManager = new StyleManagerImpl(fbs);
         EffectManager.mx_internal::registerEffectTrigger("addedEffect","added");
         EffectManager.mx_internal::registerEffectTrigger("completeEffect","complete");
         EffectManager.mx_internal::registerEffectTrigger("creationCompleteEffect","creationComplete");
         EffectManager.mx_internal::registerEffectTrigger("focusInEffect","focusIn");
         EffectManager.mx_internal::registerEffectTrigger("focusOutEffect","focusOut");
         EffectManager.mx_internal::registerEffectTrigger("hideEffect","hide");
         EffectManager.mx_internal::registerEffectTrigger("mouseDownEffect","mouseDown");
         EffectManager.mx_internal::registerEffectTrigger("mouseUpEffect","mouseUp");
         EffectManager.mx_internal::registerEffectTrigger("moveEffect","move");
         EffectManager.mx_internal::registerEffectTrigger("removedEffect","removed");
         EffectManager.mx_internal::registerEffectTrigger("resizeEffect","resize");
         EffectManager.mx_internal::registerEffectTrigger("resizeEndEffect","resizeEnd");
         EffectManager.mx_internal::registerEffectTrigger("resizeStartEffect","resizeStart");
         EffectManager.mx_internal::registerEffectTrigger("rollOutEffect","rollOut");
         EffectManager.mx_internal::registerEffectTrigger("rollOverEffect","rollOver");
         EffectManager.mx_internal::registerEffectTrigger("showEffect","show");
         if(Capabilities.hasAccessibility)
         {
            ListBaseAccImpl.enableAccessibility();
            ButtonBarBaseAccImpl.enableAccessibility();
            UIComponentAccProps.enableAccessibility();
            ListAccImpl.enableAccessibility();
            ButtonAccImpl.enableAccessibility();
            TitleWindowAccImpl.enableAccessibility();
            TextBaseAccImpl.enableAccessibility();
            DropDownListBaseAccImpl.enableAccessibility();
            ButtonBaseAccImpl.enableAccessibility();
            ToggleButtonAccImpl.enableAccessibility();
            spark.accessibility.PanelAccImpl.enableAccessibility();
            RadioButtonAccImpl.enableAccessibility();
            TabBarAccImpl.enableAccessibility();
            DataGridAccImpl.enableAccessibility();
            RichEditableTextAccImpl.enableAccessibility();
            mx.accessibility.PanelAccImpl.enableAccessibility();
            AlertAccImpl.enableAccessibility();
            CheckBoxAccImpl.enableAccessibility();
         }
         try
         {
            if(getClassByAlias("flex.messaging.io.ArrayCollection") != ArrayCollection)
            {
               registerClassAlias("flex.messaging.io.ArrayCollection",ArrayCollection);
            }
         }
         catch(e:Error)
         {
            registerClassAlias("flex.messaging.io.ArrayCollection",ArrayCollection);
         }
         try
         {
            if(getClassByAlias("flex.messaging.io.ArrayList") != ArrayList)
            {
               registerClassAlias("flex.messaging.io.ArrayList",ArrayList);
            }
         }
         catch(e:Error)
         {
            registerClassAlias("flex.messaging.io.ArrayList",ArrayList);
         }
         try
         {
            if(getClassByAlias("flex.messaging.io.ObjectProxy") != ObjectProxy)
            {
               registerClassAlias("flex.messaging.io.ObjectProxy",ObjectProxy);
            }
         }
         catch(e:Error)
         {
            registerClassAlias("flex.messaging.io.ObjectProxy",ObjectProxy);
         }
         styleNames = ["paragraphStartIndent","breakOpportunity","kerning","fileName","alternatingItemColors","wordSpacing","leading","labelWidth","layoutDirection","ligatureLevel","downColor","dropShadowColor","interactionMode","dominantBaseline","middleImage","justificationStyle","fontSharpness","footerColors","whiteSpaceCollapse","iconSaturation","textDecoration","fontStyle","digitWidth","topImage","focusColor","themeColor","fontSize","textAlignLast","iconSelectedImage","trackingRight","showErrorSkin","iconLibName","backgroundDisabledColor","unfocusedTextSelectionColor","textAlpha","baselineShift","iconImageName","textRotation","tabStops","firstBaselineOffset","inactiveColor","lineThrough","symbolColor","focusedTextSelectionColor","glowHighlight","disabledColor","alignmentBaseline","modalTransparencyColor","modalTransparencyDuration","modalTransparency","lineHeight","typographicCase","maskImage","iconImage","fontAntiAliasType","selectionColor","shadowImage","cffHinting","contentBackgroundAlpha"
         ,"fontFamily","digitCase","textSelectedColor","clearFloats","paragraphEndIndent","fontWeight","textAlign","iconName","accentColor","headerColors","contentBackgroundColor","fontLookup","chromeColor","regularOverColor","listAutoPadding","blockProgression","showPromptWhenFocused","listStyleType","textRollOverColor","fontGridFitType","paragraphSpaceAfter","errorColor","justificationRule","color","textShadowColor","paragraphSpaceBefore","textIndent","locale","barColor","selectedColor","fontThickness","touchDelay","textShadowAlpha","renderingMode","textJustify","blendColor","direction","iconLib","caretColor","letterSpacing","trackingLeft","rollOverColor","listStylePosition","modalTransparencyBlur","regularColor","inactiveTextSelectionColor","leadingModel","showErrorTip"];
         i = 0;
         while(i < styleNames.length)
         {
            styleManager.registerInheritingStyle(styleNames[i]);
            i++;
         }
      }
   }
}

import mx.core.TextFieldFactory;

TextFieldFactory;

