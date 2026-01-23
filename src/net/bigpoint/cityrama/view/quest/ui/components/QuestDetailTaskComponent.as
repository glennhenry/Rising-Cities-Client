package net.bigpoint.cityrama.view.quest.ui.components
{
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.graphics.GradientEntry;
   import mx.graphics.LinearGradient;
   import mx.graphics.SolidColorStroke;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.model.detailViews.vo.QuestTaskVo;
   import net.bigpoint.cityrama.view.citysquare.ui.components.SlimProgressBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicPlusButton;
   import net.bigpoint.cityrama.view.common.components.LinkedText;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.skins.DynamicPlusButtonSkin;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.filters.DropShadowFilter;
   import spark.filters.GlowFilter;
   import spark.primitives.Rect;
   
   public class QuestDetailTaskComponent extends Group implements IStateClient2
   {
      
      public static const EVENT_SKIP_TASK:String = "EVENT_SKIP_CLICKED";
      
      public static const EVENT_GET_RC:String = "EVENT_GET_RC";
      
      public static const EVENT_DEPOSIT:String = "EVENT_DEPOSIT";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         EVENT_SKIP_TASK = "EVENT_SKIP_CLICKED";
         if(!_loc2_)
         {
            addr0024:
            EVENT_GET_RC = "EVENT_GET_RC";
            if(_loc1_)
            {
               EVENT_DEPOSIT = "EVENT_DEPOSIT";
            }
         }
         return;
      }
      §§goto(addr0024);
      
      private var _1381421030_QuestDetailTaskComponent_BriskImageDynaLib2:BriskImageDynaLib;
      
      private var _1381374734_QuestDetailTaskComponent_GlowFilter2:GlowFilter;
      
      private var _976409514_QuestDetailTaskComponent_GradientEntry1:GradientEntry;
      
      private var _976409515_QuestDetailTaskComponent_GradientEntry2:GradientEntry;
      
      private var _1920013862_QuestDetailTaskComponent_SolidColorStroke1:SolidColorStroke;
      
      private var _371311760depositButton:MultistateButton;
      
      private var _1347528408depositProgressBar:SlimProgressBarComponent;
      
      private var _2110448212depositProgressGroup:HGroup;
      
      private var _2114546377depositProgressLabel:LocaLabel;
      
      private var _538174524rcPriceLabel:LocaLabel;
      
      private var _319513199skipButton:DynamicPlusButton;
      
      private var _410477666taskIcon:BriskImageDynaLib;
      
      private var _162792559taskLabel:LinkedText;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _dirty:Boolean;
      
      private var _data:QuestTaskVo;
      
      private var _currentState:String;
      
      public function QuestDetailTaskComponent()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super();
            if(_loc2_ || Boolean(this))
            {
               mx_internal::_document = this;
               if(_loc2_)
               {
                  this.percentHeight = 100;
                  if(!_loc1_)
                  {
                     addr004a:
                     this.minHeight = 1;
                     if(_loc2_)
                     {
                        addr0055:
                        this.mxmlContent = [this._QuestDetailTaskComponent_HGroup1_c(),this._QuestDetailTaskComponent_HGroup2_c()];
                        if(!_loc1_)
                        {
                           addr006b:
                           this.currentState = "normal";
                           if(_loc2_ || _loc1_)
                           {
                              states = [new State({
                                 "name":"normal",
                                 "overrides":[new SetProperty().initializeFromObject({
                                    "target":"_QuestDetailTaskComponent_GradientEntry1",
                                    "name":"color",
                                    "value":8639213
                                 }),new SetProperty().initializeFromObject({
                                    "target":"_QuestDetailTaskComponent_GradientEntry2",
                                    "name":"color",
                                    "value":5747938
                                 }),new SetProperty().initializeFromObject({
                                    "target":"_QuestDetailTaskComponent_GlowFilter2",
                                    "name":"color",
                                    "value":8648959
                                 }),new SetProperty().initializeFromObject({
                                    "target":"_QuestDetailTaskComponent_SolidColorStroke1",
                                    "name":"color",
                                    "value":1813193
                                 }),new SetProperty().initializeFromObject({
                                    "target":"taskLabel",
                                    "name":"styleName",
                                    "value":"taskActive"
                                 }),new SetProperty().initializeFromObject({
                                    "target":"depositProgressLabel",
                                    "name":"styleName",
                                    "value":"taskLabelActiveNew"
                                 })]
                              }),new State({
                                 "name":"locked",
                                 "overrides":[new SetProperty().initializeFromObject({
                                    "target":"_QuestDetailTaskComponent_GradientEntry1",
                                    "name":"color",
                                    "value":15527148
                                 }),new SetProperty().initializeFromObject({
                                    "target":"_QuestDetailTaskComponent_GradientEntry2",
                                    "name":"color",
                                    "value":14013905
                                 }),new SetProperty().initializeFromObject({
                                    "target":"_QuestDetailTaskComponent_GlowFilter2",
                                    "name":"color",
                                    "value":15790319
                                 }),new SetProperty().initializeFromObject({
                                    "target":"_QuestDetailTaskComponent_SolidColorStroke1",
                                    "name":"color",
                                    "value":13750737
                                 }),new SetProperty().initializeFromObject({
                                    "target":"taskIcon",
                                    "name":"alpha",
                                    "value":0.4
                                 }),new SetProperty().initializeFromObject({
                                    "target":"_QuestDetailTaskComponent_BriskImageDynaLib2",
                                    "name":"visible",
                                    "value":true
                                 }),new SetProperty().initializeFromObject({
                                    "target":"taskLabel",
                                    "name":"styleName",
                                    "value":"taskLocked"
                                 }),new SetProperty().initializeFromObject({
                                    "target":"taskLabel",
                                    "name":"alpha",
                                    "value":0.4
                                 }),new SetProperty().initializeFromObject({
                                    "target":"depositProgressBar",
                                    "name":"progress",
                                    "value":0
                                 }),new SetProperty().initializeFromObject({
                                    "target":"depositProgressBar",
                                    "name":"alpha",
                                    "value":0.4
                                 }),new SetProperty().initializeFromObject({
                                    "target":"depositProgressBar",
                                    "name":"enabled",
                                    "value":false
                                 }),new SetProperty().initializeFromObject({
                                    "target":"depositProgressLabel",
                                    "name":"styleName",
                                    "value":"taskLabelActiveNew"
                                 }),new SetProperty().initializeFromObject({
                                    "target":"depositProgressLabel",
                                    "name":"alpha",
                                    "value":0.4
                                 }),new SetProperty().initializeFromObject({
                                    "target":"depositButton",
                                    "name":"enabled",
                                    "value":false
                                 }),new SetProperty().initializeFromObject({
                                    "target":"depositButton",
                                    "name":"alpha",
                                    "value":0.3
                                 }),new SetProperty().initializeFromObject({
                                    "target":"skipButton",
                                    "name":"enabled",
                                    "value":false
                                 }),new SetProperty().initializeFromObject({
                                    "target":"skipButton",
                                    "name":"alpha",
                                    "value":0.3
                                 })]
                              }),new State({
                                 "name":"done",
                                 "overrides":[new SetProperty().initializeFromObject({
                                    "target":"_QuestDetailTaskComponent_GradientEntry1",
                                    "name":"color",
                                    "value":11197005
                                 }),new SetProperty().initializeFromObject({
                                    "target":"_QuestDetailTaskComponent_GradientEntry2",
                                    "name":"color",
                                    "value":7520562
                                 }),new SetProperty().initializeFromObject({
                                    "target":"_QuestDetailTaskComponent_GlowFilter2",
                                    "name":"color",
                                    "value":14090129
                                 }),new SetProperty().initializeFromObject({
                                    "target":"_QuestDetailTaskComponent_SolidColorStroke1",
                                    "name":"color",
                                    "value":8044035
                                 }),new SetProperty().initializeFromObject({
                                    "target":"taskLabel",
                                    "name":"styleName",
                                    "value":"taskDone"
                                 }),new SetProperty().initializeFromObject({
                                    "target":"depositProgressBar",
                                    "name":"progress",
                                    "value":1
                                 }),new SetProperty().initializeFromObject({
                                    "target":"depositProgressLabel",
                                    "name":"styleName",
                                    "value":"questTaskDone"
                                 }),new SetProperty().initializeFromObject({
                                    "target":"depositProgressLabel",
                                    "name":"visible",
                                    "value":false
                                 }),new SetProperty().initializeFromObject({
                                    "target":"rcPriceLabel",
                                    "name":"visible",
                                    "value":false
                                 }),new SetProperty().initializeFromObject({
                                    "target":"depositButton",
                                    "name":"enabled",
                                    "value":false
                                 }),new SetProperty().initializeFromObject({
                                    "target":"depositButton",
                                    "name":"visible",
                                    "value":false
                                 }),new SetProperty().initializeFromObject({
                                    "target":"skipButton",
                                    "name":"enabled",
                                    "value":false
                                 }),new SetProperty().initializeFromObject({
                                    "target":"skipButton",
                                    "name":"visible",
                                    "value":false
                                 })]
                              }),new State({
                                 "name":"donePreview",
                                 "overrides":[new SetProperty().initializeFromObject({
                                    "target":"_QuestDetailTaskComponent_GradientEntry1",
                                    "name":"color",
                                    "value":11197005
                                 }),new SetProperty().initializeFromObject({
                                    "target":"_QuestDetailTaskComponent_GradientEntry2",
                                    "name":"color",
                                    "value":7520562
                                 }),new SetProperty().initializeFromObject({
                                    "target":"_QuestDetailTaskComponent_GlowFilter2",
                                    "name":"color",
                                    "value":14090129
                                 }),new SetProperty().initializeFromObject({
                                    "target":"_QuestDetailTaskComponent_SolidColorStroke1",
                                    "name":"color",
                                    "value":8044035
                                 }),new SetProperty().initializeFromObject({
                                    "target":"taskIcon",
                                    "name":"dynaBmpSourceName",
                                    "value":"task_checkmark_grey"
                                 }),new SetProperty().initializeFromObject({
                                    "target":"taskIcon",
                                    "name":"dynaLibName",
                                    "value":"gui_popups_questPopup"
                                 }),new SetProperty().initializeFromObject({
                                    "target":"taskLabel",
                                    "name":"styleName",
                                    "value":"taskDone"
                                 }),new SetProperty().initializeFromObject({
                                    "target":"depositProgressBar",
                                    "name":"progress",
                                    "value":1
                                 }),new SetProperty().initializeFromObject({
                                    "target":"depositProgressLabel",
                                    "name":"styleName",
                                    "value":"questTaskDone"
                                 })]
                              })];
                              addr007f:
                           }
                           §§goto(addr0539);
                        }
                     }
                     §§goto(addr007f);
                  }
                  addr0539:
                  return;
               }
               §§goto(addr006b);
            }
            §§goto(addr004a);
         }
         §§goto(addr0055);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(!(_loc3_ && _loc3_))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc3_)
                  {
                     return;
                  }
               }
            }
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.initialize();
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            super.commitProperties();
            if(!(_loc3_ && _loc3_))
            {
               §§push(this._data);
               if(!_loc3_)
               {
                  §§push(§§pop());
                  if(!(_loc3_ && _loc3_))
                  {
                     var _temp_4:* = §§pop();
                     §§push(_temp_4);
                     if(_temp_4)
                     {
                        if(_loc2_)
                        {
                           §§pop();
                           if(_loc2_)
                           {
                              §§push(this._dirty);
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 addr006a:
                                 §§push(§§pop());
                                 if(!_loc3_)
                                 {
                                    §§goto(addr0070);
                                 }
                                 §§goto(addr01d7);
                              }
                              §§goto(addr0422);
                           }
                           §§goto(addr0083);
                        }
                        §§goto(addr006a);
                     }
                     addr0070:
                     if(§§pop())
                     {
                        if(_loc2_)
                        {
                           this._dirty = false;
                           if(_loc2_)
                           {
                              addr0083:
                              §§push(this.taskIcon);
                              if(!_loc3_)
                              {
                                 §§pop().briskDynaVo = this._data.getTaskIconVo();
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    §§push(this.taskLabel);
                                    if(_loc2_)
                                    {
                                       §§push(true);
                                       if(_loc2_ || _loc2_)
                                       {
                                          §§pop().linksEnabled = §§pop();
                                          if(_loc2_ || _loc3_)
                                          {
                                             §§push(this.taskLabel);
                                             if(!_loc3_)
                                             {
                                                §§push(this._data);
                                                if(!_loc3_)
                                                {
                                                   §§pop().text = §§pop().taskText;
                                                   if(_loc2_)
                                                   {
                                                      §§push(this.taskLabel);
                                                      if(!_loc3_)
                                                      {
                                                         addr00f5:
                                                         §§pop().linkParameter = this._data.linkParameter;
                                                         addr00f1:
                                                         if(_loc2_ || _loc1_)
                                                         {
                                                            §§push(this.skipButton);
                                                            if(!_loc3_)
                                                            {
                                                               §§push(this._data);
                                                               if(!(_loc3_ && _loc1_))
                                                               {
                                                                  §§push(§§pop().isSkippable);
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!(_loc3_ && Boolean(this)))
                                                                     {
                                                                        var _temp_13:* = §§pop();
                                                                        §§push(_temp_13);
                                                                        if(_temp_13)
                                                                        {
                                                                           if(_loc2_)
                                                                           {
                                                                              §§pop();
                                                                              if(_loc2_)
                                                                              {
                                                                                 addr0151:
                                                                                 §§push(this._data);
                                                                                 if(_loc2_ || _loc2_)
                                                                                 {
                                                                                    addr0162:
                                                                                    §§push(§§pop().isCompleted);
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       §§push(!§§pop());
                                                                                       if(_loc2_ || Boolean(this))
                                                                                       {
                                                                                          addr0178:
                                                                                          §§pop().visible = §§pop();
                                                                                          if(_loc2_ || _loc3_)
                                                                                          {
                                                                                             var _temp_20:* = this.depositProgressGroup;
                                                                                             var _loc1_:*;
                                                                                             this.depositProgressGroup.includeInLayout = _loc1_ = this.depositButton.visible = this._data.isDepositTask && !this._data.isCompleted;
                                                                                             _temp_20.visible = _loc1_;
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                addr01be:
                                                                                                §§push(this._data);
                                                                                                if(_loc2_ || Boolean(this))
                                                                                                {
                                                                                                   §§push(§§pop().isDepositTask);
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      addr01d7:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            §§push(this.depositProgressBar);
                                                                                                            if(_loc2_ || _loc2_)
                                                                                                            {
                                                                                                               §§push(this._data);
                                                                                                               if(!(_loc3_ && _loc1_))
                                                                                                               {
                                                                                                                  §§push(§§pop().depositedItemAmount);
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() / this._data.neededItemDepositAmount);
                                                                                                                  }
                                                                                                                  §§pop().progress = §§pop();
                                                                                                                  if(_loc2_ || _loc2_)
                                                                                                                  {
                                                                                                                     addr0222:
                                                                                                                     §§push(this.depositProgressBar);
                                                                                                                     if(_loc2_ || _loc2_)
                                                                                                                     {
                                                                                                                        addr0237:
                                                                                                                        §§pop().toolTip = this._data.depositBarTooltip;
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           §§push(this.depositButton);
                                                                                                                           if(_loc2_ || _loc1_)
                                                                                                                           {
                                                                                                                              §§push(this._data);
                                                                                                                              if(_loc2_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().depositButtonLabel);
                                                                                                                                 if(_loc2_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    §§pop().label = §§pop();
                                                                                                                                    if(!_loc3_)
                                                                                                                                    {
                                                                                                                                       addr0275:
                                                                                                                                       §§push(this.depositProgressLabel);
                                                                                                                                       §§push(this._data.depositedItemAmount + " / ");
                                                                                                                                       if(_loc2_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + this._data.neededItemDepositAmount);
                                                                                                                                       }
                                                                                                                                       §§pop().text = §§pop();
                                                                                                                                       if(!(_loc3_ && _loc1_))
                                                                                                                                       {
                                                                                                                                          addr02ab:
                                                                                                                                          §§push(this.depositButton);
                                                                                                                                          if(!_loc3_)
                                                                                                                                          {
                                                                                                                                             §§push(this._data);
                                                                                                                                             if(_loc2_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().currentDepositStock > 0);
                                                                                                                                                if(!(_loc3_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   var _temp_30:* = §§pop();
                                                                                                                                                   §§push(_temp_30);
                                                                                                                                                   if(_temp_30)
                                                                                                                                                   {
                                                                                                                                                      if(_loc2_)
                                                                                                                                                      {
                                                                                                                                                         §§pop();
                                                                                                                                                         if(!(_loc3_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            §§push(this._data);
                                                                                                                                                            if(!(_loc3_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr0302);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr031f);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr031b);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr0302:
                                                                                                                                             }
                                                                                                                                             §§goto(addr02f9);
                                                                                                                                          }
                                                                                                                                          §§goto(addr031b);
                                                                                                                                       }
                                                                                                                                       §§goto(addr04fa);
                                                                                                                                    }
                                                                                                                                    §§goto(addr045d);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0323);
                                                                                                                              }
                                                                                                                              addr02f9:
                                                                                                                              §§push(§§pop().isCompleted);
                                                                                                                              if(_loc2_)
                                                                                                                              {
                                                                                                                                 §§push(!§§pop());
                                                                                                                              }
                                                                                                                              §§pop().enabled = §§pop();
                                                                                                                              if(!_loc3_)
                                                                                                                              {
                                                                                                                                 addr030a:
                                                                                                                                 §§push(this.depositButton);
                                                                                                                                 if(!(_loc3_ && _loc1_))
                                                                                                                                 {
                                                                                                                                    addr0323:
                                                                                                                                    §§pop().toolTip = this._data.depositButtonTooltip;
                                                                                                                                    addr031f:
                                                                                                                                    addr031b:
                                                                                                                                    if(!(_loc3_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       addr0332:
                                                                                                                                       §§push(this._data);
                                                                                                                                       if(!_loc3_)
                                                                                                                                       {
                                                                                                                                          addr033b:
                                                                                                                                          §§push(§§pop().isSkippable);
                                                                                                                                          if(!(_loc3_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             addr034c:
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                if(!_loc3_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr0355);
                                                                                                                                                }
                                                                                                                                                §§goto(addr038f);
                                                                                                                                             }
                                                                                                                                             §§goto(addr03c2);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0422);
                                                                                                                                       }
                                                                                                                                       §§goto(addr041f);
                                                                                                                                    }
                                                                                                                                    §§goto(addr041b);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0520);
                                                                                                                              }
                                                                                                                              addr0355:
                                                                                                                              §§push(this.skipButton);
                                                                                                                              if(!_loc3_)
                                                                                                                              {
                                                                                                                                 addr035e:
                                                                                                                                 §§push(this._data);
                                                                                                                                 if(_loc2_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    addr036f:
                                                                                                                                    §§push(§§pop().currentRealCurrency);
                                                                                                                                    if(!_loc3_)
                                                                                                                                    {
                                                                                                                                       addr037f:
                                                                                                                                       §§pop().showPlus = §§pop() < this._data.instantFinishCosts;
                                                                                                                                       if(!(_loc3_ && Boolean(this)))
                                                                                                                                       {
                                                                                                                                          addr038f:
                                                                                                                                          §§push(this.skipButton);
                                                                                                                                          if(_loc2_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr039f);
                                                                                                                                          }
                                                                                                                                          §§goto(addr04fe);
                                                                                                                                       }
                                                                                                                                       §§goto(addr045d);
                                                                                                                                    }
                                                                                                                                    addr039f:
                                                                                                                                    §§pop().priceToConfirm = this._data.instantFinishCosts;
                                                                                                                                    §§goto(addr039c);
                                                                                                                                 }
                                                                                                                                 addr039c:
                                                                                                                                 §§goto(addr0398);
                                                                                                                              }
                                                                                                                              addr0398:
                                                                                                                              if(!(_loc3_ && Boolean(this)))
                                                                                                                              {
                                                                                                                                 addr03af:
                                                                                                                                 this.rcPriceLabel.text = this._data.skipText;
                                                                                                                                 if(!_loc3_)
                                                                                                                                 {
                                                                                                                                    addr03c2:
                                                                                                                                    §§push(this._data);
                                                                                                                                    if(!(_loc3_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().isCompleted);
                                                                                                                                       if(_loc2_ || _loc1_)
                                                                                                                                       {
                                                                                                                                          addr03e3:
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             if(_loc2_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                §§push(this.taskLabel);
                                                                                                                                                if(_loc2_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   §§push(false);
                                                                                                                                                   if(!_loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§pop().linksEnabled = §§pop();
                                                                                                                                                      if(!(_loc3_ && _loc1_))
                                                                                                                                                      {
                                                                                                                                                         addr041b:
                                                                                                                                                         addr0422:
                                                                                                                                                         addr041f:
                                                                                                                                                         if(this._data.isLocked)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc3_ && _loc1_))
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr0433);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr04fa);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            addr04f0:
                                                                                                                                                            this.taskIcon.filters = [];
                                                                                                                                                            if(_loc2_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr04fa);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0532);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr04a9);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr04d8);
                                                                                                                                                }
                                                                                                                                                §§goto(addr04d7);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr041b);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0422);
                                                                                                                                    }
                                                                                                                                    §§goto(addr041f);
                                                                                                                                 }
                                                                                                                                 §§goto(addr04fa);
                                                                                                                              }
                                                                                                                              addr0433:
                                                                                                                              TweenMax.to(this.taskIcon,0,{"colorMatrixFilter":{
                                                                                                                                 "amount":1,
                                                                                                                                 "saturation":0
                                                                                                                              }});
                                                                                                                              if(!(_loc3_ && _loc3_))
                                                                                                                              {
                                                                                                                                 addr045d:
                                                                                                                                 TweenMax.to(this.skipButton,0,{"colorMatrixFilter":{
                                                                                                                                    "amount":1,
                                                                                                                                    "saturation":0
                                                                                                                                 }});
                                                                                                                                 if(_loc2_)
                                                                                                                                 {
                                                                                                                                    TweenMax.to(this.depositButton,0,{"colorMatrixFilter":{
                                                                                                                                       "amount":1,
                                                                                                                                       "saturation":0
                                                                                                                                    }});
                                                                                                                                    if(_loc2_ || _loc1_)
                                                                                                                                    {
                                                                                                                                       addr04a9:
                                                                                                                                       TweenMax.to(this.depositProgressBar,0,{"colorMatrixFilter":{
                                                                                                                                          "amount":1,
                                                                                                                                          "saturation":0
                                                                                                                                       }});
                                                                                                                                       if(_loc2_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          addr04d8:
                                                                                                                                          this.taskLabel.linksEnabled = false;
                                                                                                                                          addr04d7:
                                                                                                                                          if(!(_loc2_ || _loc1_))
                                                                                                                                          {
                                                                                                                                             addr0536:
                                                                                                                                             this.depositProgressBar.filters = [];
                                                                                                                                             addr0532:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       this.skipButton.filters = [];
                                                                                                                                       addr04fa:
                                                                                                                                       addr04fe:
                                                                                                                                       if(_loc2_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          addr0520:
                                                                                                                                          this.depositButton.filters = [];
                                                                                                                                          if(!(_loc3_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             §§goto(addr0532);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr053b);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0532);
                                                                                                                              }
                                                                                                                              §§goto(addr053b);
                                                                                                                           }
                                                                                                                           §§goto(addr0520);
                                                                                                                        }
                                                                                                                        §§goto(addr053b);
                                                                                                                     }
                                                                                                                     §§goto(addr0536);
                                                                                                                  }
                                                                                                                  §§goto(addr053b);
                                                                                                               }
                                                                                                               §§goto(addr0237);
                                                                                                            }
                                                                                                            §§goto(addr0536);
                                                                                                         }
                                                                                                         §§goto(addr030a);
                                                                                                      }
                                                                                                      §§goto(addr0332);
                                                                                                   }
                                                                                                   §§goto(addr03e3);
                                                                                                }
                                                                                                §§goto(addr033b);
                                                                                             }
                                                                                             §§goto(addr04fa);
                                                                                          }
                                                                                          §§goto(addr0532);
                                                                                       }
                                                                                       §§goto(addr037f);
                                                                                    }
                                                                                    §§goto(addr0178);
                                                                                 }
                                                                                 §§goto(addr036f);
                                                                              }
                                                                              §§goto(addr035e);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr0178);
                                                                  }
                                                                  §§goto(addr037f);
                                                               }
                                                               §§goto(addr0162);
                                                            }
                                                            §§goto(addr0151);
                                                         }
                                                         §§goto(addr0222);
                                                      }
                                                      §§goto(addr04d7);
                                                   }
                                                   §§goto(addr0332);
                                                }
                                                §§goto(addr00f5);
                                             }
                                             §§goto(addr00f1);
                                          }
                                          §§goto(addr02ab);
                                       }
                                       §§goto(addr04d8);
                                    }
                                    §§goto(addr00f1);
                                 }
                                 §§goto(addr0275);
                              }
                              §§goto(addr04f0);
                           }
                           §§goto(addr0222);
                        }
                        §§goto(addr0355);
                     }
                     addr053b:
                     return;
                  }
                  §§goto(addr034c);
               }
               §§goto(addr041f);
            }
            §§goto(addr03af);
         }
         §§goto(addr01be);
      }
      
      private function handleDepositClick() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this.depositButton.enabled = false;
            if(_loc2_)
            {
               dispatchEvent(new Event(EVENT_DEPOSIT,true,true));
            }
         }
      }
      
      private function skipButtonClick() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            §§push(this.skipButton);
            if(!_loc2_)
            {
               if(§§pop().showPlus)
               {
                  if(!_loc2_)
                  {
                     dispatchEvent(new Event(EVENT_GET_RC,true,true));
                     if(_loc1_)
                     {
                     }
                  }
               }
               else
               {
                  addr0062:
                  this.skipButton.enabled = false;
                  if(_loc1_ || _loc1_)
                  {
                     dispatchEvent(new Event(EVENT_SKIP_TASK,true,true));
                  }
               }
               §§goto(addr0082);
            }
            §§goto(addr0062);
         }
         addr0082:
      }
      
      private function skipButtonRollOver() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this.depositButton.visible = false;
            if(_loc2_)
            {
               this.rcPriceLabel.visible = true;
               if(!(_loc1_ && Boolean(this)))
               {
                  addr0040:
                  this.setPreview();
               }
            }
            return;
         }
         §§goto(addr0040);
      }
      
      private function setPreview() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            this.currentState = "donePreview";
            if(_loc2_ || _loc2_)
            {
               this.taskLabel.text = this._data.finishedTaskText;
               if(_loc2_ || Boolean(this))
               {
                  addr0060:
                  if(this._data.isDepositTask)
                  {
                     if(!_loc1_)
                     {
                        addr0070:
                        §§push(this.depositProgressLabel);
                        §§push(this._data.neededItemDepositAmount + " / ");
                        if(_loc2_)
                        {
                           §§push(§§pop() + this._data.neededItemDepositAmount);
                        }
                        §§pop().text = §§pop();
                     }
                  }
               }
               return;
            }
            §§goto(addr0070);
         }
         §§goto(addr0060);
      }
      
      private function skipButtonRollOut() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            this.depositButton.visible = true;
            if(!(_loc2_ && _loc1_))
            {
               this.rcPriceLabel.visible = false;
               if(!_loc2_)
               {
                  addr0047:
                  this.setToPreviousState();
               }
               return;
            }
         }
         §§goto(addr0047);
      }
      
      private function setToPreviousState() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            this.setState();
            if(!(_loc1_ && _loc2_))
            {
               this._dirty = true;
               if(!(_loc1_ && _loc1_))
               {
                  addr004d:
                  invalidateProperties();
               }
               §§goto(addr0052);
            }
            §§goto(addr004d);
         }
         addr0052:
      }
      
      public function set data(param1:QuestTaskVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(param1 != null)
            {
               if(_loc3_ || _loc3_)
               {
                  this._data = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     this._dirty = true;
                     if(!_loc2_)
                     {
                        this.setState();
                        if(!(_loc2_ && _loc3_))
                        {
                           addr0075:
                           invalidateProperties();
                        }
                        §§goto(addr007a);
                     }
                  }
               }
               §§goto(addr0075);
            }
         }
         addr007a:
      }
      
      public function get data() : QuestTaskVo
      {
         return this._data;
      }
      
      private function setState() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            §§push(this._data);
            if(_loc2_)
            {
               §§push(§§pop().isCompleted);
               if(!_loc1_)
               {
                  if(§§pop())
                  {
                     if(!(_loc1_ && _loc2_))
                     {
                        this.currentState = "done";
                        if(_loc2_ || Boolean(this))
                        {
                        }
                     }
                  }
                  else
                  {
                     addr0073:
                     addr0070:
                     if(this._data.isLocked)
                     {
                        if(!(_loc1_ && Boolean(this)))
                        {
                           this.currentState = "locked";
                           if(_loc1_)
                           {
                           }
                        }
                     }
                     else
                     {
                        this.currentState = "normal";
                     }
                  }
                  §§goto(addr009b);
               }
               §§goto(addr0073);
            }
            §§goto(addr0070);
         }
         addr009b:
      }
      
      private function _QuestDetailTaskComponent_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.minHeight = 1;
                  if(!(_loc2_ && _loc3_))
                  {
                     §§goto(addr0057);
                  }
                  §§goto(addr00e3);
               }
               addr0057:
               _loc1_.maxHeight = 268;
               if(!(_loc2_ && Boolean(this)))
               {
                  addr0077:
                  _loc1_.minWidth = 1;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.gap = 0;
                     if(!(_loc2_ && _loc3_))
                     {
                        _loc1_.filters = [this._QuestDetailTaskComponent_GlowFilter1_c(),this._QuestDetailTaskComponent_DropShadowFilter1_c()];
                        if(!(_loc2_ && _loc2_))
                        {
                           §§goto(addr00c5);
                        }
                        §§goto(addr00e3);
                     }
                     addr00c5:
                     _loc1_.mxmlContent = [this._QuestDetailTaskComponent_Group2_c(),this._QuestDetailTaskComponent_Rect3_c()];
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr00e3:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr00ef:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr00f3);
                  }
                  §§goto(addr00ef);
               }
               addr00f3:
               return _loc1_;
            }
            §§goto(addr0077);
         }
         §§goto(addr00c5);
      }
      
      private function _QuestDetailTaskComponent_GlowFilter1_c() : GlowFilter
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:GlowFilter = new GlowFilter();
         if(_loc3_)
         {
            _loc1_.inner = false;
            if(!_loc2_)
            {
               _loc1_.strength = 1;
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr0056:
                  _loc1_.blurX = 1;
                  if(!_loc2_)
                  {
                     _loc1_.blurY = 1;
                     if(_loc3_ || _loc2_)
                     {
                        addr0074:
                        _loc1_.color = 16777215;
                     }
                     §§goto(addr007a);
                  }
                  §§goto(addr0074);
               }
            }
            addr007a:
            return _loc1_;
         }
         §§goto(addr0056);
      }
      
      private function _QuestDetailTaskComponent_DropShadowFilter1_c() : DropShadowFilter
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DropShadowFilter = new DropShadowFilter();
         if(!_loc2_)
         {
            _loc1_.angle = 90;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.distance = 1;
               if(!(_loc2_ && Boolean(this)))
               {
                  addr0060:
                  _loc1_.strength = 4;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.alpha = 0.4;
                     if(!_loc2_)
                     {
                        addr007e:
                        _loc1_.color = 0;
                     }
                     §§goto(addr0084);
                  }
                  §§goto(addr007e);
               }
               addr0084:
               return _loc1_;
            }
         }
         §§goto(addr0060);
      }
      
      private function _QuestDetailTaskComponent_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.width = 60;
            if(!_loc2_)
            {
               addr0038:
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._QuestDetailTaskComponent_Rect1_c(),this._QuestDetailTaskComponent_Rect2_c()];
                  if(_loc3_ || Boolean(this))
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr0077:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr0077);
               }
            }
            addr007b:
            return _loc1_;
         }
         §§goto(addr0038);
      }
      
      private function _QuestDetailTaskComponent_Rect1_c() : Rect
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Rect = new Rect();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.left = 3;
            if(!(_loc2_ && _loc3_))
            {
               addr003b:
               _loc1_.right = 1;
               if(!_loc2_)
               {
                  _loc1_.top = 1;
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.bottom = 1;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        _loc1_.bottomLeftRadiusX = 10;
                        if(_loc3_)
                        {
                           _loc1_.bottomLeftRadiusY = 10;
                           if(_loc3_)
                           {
                              _loc1_.topLeftRadiusX = 10;
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 addr00a0:
                                 _loc1_.topLeftRadiusY = 10;
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    addr00b3:
                                    _loc1_.percentHeight = 100;
                                    if(_loc3_ || Boolean(_loc1_))
                                    {
                                       _loc1_.width = 60;
                                       if(!(_loc2_ && Boolean(this)))
                                       {
                                          _loc1_.minHeight = 1;
                                          if(_loc3_)
                                          {
                                             addr00e2:
                                             _loc1_.maxHeight = 268;
                                             if(!(_loc2_ && Boolean(this)))
                                             {
                                                §§goto(addr0102);
                                             }
                                             §§goto(addr0111);
                                          }
                                          addr0102:
                                          _loc1_.fill = this._QuestDetailTaskComponent_LinearGradient1_c();
                                          if(_loc3_)
                                          {
                                             addr0111:
                                             _loc1_.filters = [this._QuestDetailTaskComponent_GlowFilter2_i()];
                                             if(_loc3_ || Boolean(_loc1_))
                                             {
                                                _loc1_.initialized(this,null);
                                             }
                                          }
                                          §§goto(addr0131);
                                       }
                                    }
                                 }
                                 §§goto(addr00e2);
                              }
                           }
                           addr0131:
                           return _loc1_;
                        }
                     }
                     §§goto(addr00a0);
                  }
               }
               §§goto(addr00b3);
            }
            §§goto(addr00a0);
         }
         §§goto(addr003b);
      }
      
      private function _QuestDetailTaskComponent_LinearGradient1_c() : LinearGradient
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LinearGradient = new LinearGradient();
         if(!_loc2_)
         {
            _loc1_.rotation = 90;
            if(_loc3_)
            {
               _loc1_.entries = [this._QuestDetailTaskComponent_GradientEntry1_i(),this._QuestDetailTaskComponent_GradientEntry2_i()];
            }
         }
         return _loc1_;
      }
      
      private function _QuestDetailTaskComponent_GradientEntry1_i() : GradientEntry
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:GradientEntry = new GradientEntry();
         if(_loc2_ || _loc3_)
         {
            this._QuestDetailTaskComponent_GradientEntry1 = _loc1_;
            if(_loc2_ || Boolean(this))
            {
               addr0049:
               BindingManager.executeBindings(this,"_QuestDetailTaskComponent_GradientEntry1",this._QuestDetailTaskComponent_GradientEntry1);
            }
            return _loc1_;
         }
         §§goto(addr0049);
      }
      
      private function _QuestDetailTaskComponent_GradientEntry2_i() : GradientEntry
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:GradientEntry = new GradientEntry();
         if(_loc3_)
         {
            this._QuestDetailTaskComponent_GradientEntry2 = _loc1_;
            if(!_loc2_)
            {
               addr003a:
               BindingManager.executeBindings(this,"_QuestDetailTaskComponent_GradientEntry2",this._QuestDetailTaskComponent_GradientEntry2);
            }
            return _loc1_;
         }
         §§goto(addr003a);
      }
      
      private function _QuestDetailTaskComponent_GlowFilter2_i() : GlowFilter
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:GlowFilter = new GlowFilter();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.inner = true;
            if(!_loc3_)
            {
               _loc1_.strength = 1;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.quality = 3;
                  if(!_loc3_)
                  {
                     _loc1_.blurX = 6;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr007c:
                        _loc1_.blurY = 6;
                        if(_loc2_ || Boolean(this))
                        {
                           this._QuestDetailTaskComponent_GlowFilter2 = _loc1_;
                           if(!_loc3_)
                           {
                              addr0099:
                              BindingManager.executeBindings(this,"_QuestDetailTaskComponent_GlowFilter2",this._QuestDetailTaskComponent_GlowFilter2);
                           }
                           §§goto(addr00a6);
                        }
                     }
                  }
                  §§goto(addr0099);
               }
               §§goto(addr007c);
            }
            addr00a6:
            return _loc1_;
         }
         §§goto(addr007c);
      }
      
      private function _QuestDetailTaskComponent_Rect2_c() : Rect
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Rect = new Rect();
         if(_loc2_)
         {
            _loc1_.left = 2;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.right = 0;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.top = 0;
                  if(!_loc3_)
                  {
                     _loc1_.bottom = 0;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr0063:
                        _loc1_.bottomLeftRadiusX = 10;
                        if(_loc2_)
                        {
                           _loc1_.bottomLeftRadiusY = 10;
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              _loc1_.topLeftRadiusX = 10;
                              if(_loc2_ || Boolean(this))
                              {
                                 _loc1_.topLeftRadiusY = 10;
                                 if(_loc2_)
                                 {
                                    addr00a9:
                                    _loc1_.percentHeight = 100;
                                    if(!_loc3_)
                                    {
                                       addr00b3:
                                       _loc1_.width = 60;
                                       if(_loc2_ || Boolean(this))
                                       {
                                          addr00d1:
                                          _loc1_.minHeight = 1;
                                          if(!_loc3_)
                                          {
                                             _loc1_.maxHeight = 268;
                                             if(!_loc3_)
                                             {
                                                addr00e8:
                                                _loc1_.stroke = this._QuestDetailTaskComponent_SolidColorStroke1_i();
                                                if(_loc2_)
                                                {
                                                   addr00f7:
                                                   _loc1_.initialized(this,null);
                                                }
                                             }
                                             §§goto(addr00fe);
                                          }
                                          §§goto(addr00f7);
                                       }
                                       §§goto(addr00e8);
                                    }
                                    §§goto(addr00d1);
                                 }
                                 §§goto(addr00b3);
                              }
                           }
                           §§goto(addr00d1);
                        }
                        §§goto(addr00a9);
                     }
                     §§goto(addr00f7);
                  }
                  §§goto(addr0063);
               }
            }
            §§goto(addr00e8);
         }
         addr00fe:
         return _loc1_;
      }
      
      private function _QuestDetailTaskComponent_SolidColorStroke1_i() : SolidColorStroke
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         if(_loc3_)
         {
            _loc1_.weight = 1;
            if(_loc3_)
            {
               this._QuestDetailTaskComponent_SolidColorStroke1 = _loc1_;
               if(_loc3_)
               {
                  addr0044:
                  BindingManager.executeBindings(this,"_QuestDetailTaskComponent_SolidColorStroke1",this._QuestDetailTaskComponent_SolidColorStroke1);
               }
               return _loc1_;
            }
         }
         §§goto(addr0044);
      }
      
      private function _QuestDetailTaskComponent_Rect3_c() : Rect
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Rect = new Rect();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.left = 3;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.right = 1;
               if(_loc2_)
               {
                  _loc1_.top = 1;
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.bottom = 1;
                     if(!_loc3_)
                     {
                        addr0064:
                        _loc1_.bottomRightRadiusX = 10;
                        if(_loc2_)
                        {
                           _loc1_.bottomRightRadiusY = 10;
                           if(!_loc3_)
                           {
                              _loc1_.topRightRadiusX = 10;
                              if(_loc2_)
                              {
                                 _loc1_.topRightRadiusY = 10;
                                 if(_loc2_ || Boolean(this))
                                 {
                                    addr00a5:
                                    _loc1_.percentHeight = 100;
                                    if(_loc2_ || _loc2_)
                                    {
                                       §§goto(addr00b7);
                                    }
                                    §§goto(addr00fc);
                                 }
                                 addr00b7:
                                 _loc1_.percentWidth = 100;
                                 if(_loc2_ || _loc3_)
                                 {
                                    _loc1_.minHeight = 1;
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       addr00dc:
                                       _loc1_.maxHeight = 268;
                                       if(_loc2_ || Boolean(_loc1_))
                                       {
                                          addr00fc:
                                          _loc1_.fill = this._QuestDetailTaskComponent_LinearGradient2_c();
                                          if(!(_loc3_ && Boolean(this)))
                                          {
                                             addr0113:
                                             _loc1_.initialized(this,null);
                                          }
                                       }
                                       §§goto(addr011a);
                                    }
                                    §§goto(addr0113);
                                 }
                              }
                              §§goto(addr011a);
                           }
                           §§goto(addr00dc);
                        }
                        §§goto(addr00a5);
                     }
                     §§goto(addr0113);
                  }
                  §§goto(addr0064);
               }
               §§goto(addr00b7);
            }
            §§goto(addr00dc);
         }
         addr011a:
         return _loc1_;
      }
      
      private function _QuestDetailTaskComponent_LinearGradient2_c() : LinearGradient
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LinearGradient = new LinearGradient();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.rotation = 90;
            if(!(_loc2_ && _loc3_))
            {
               addr0049:
               _loc1_.entries = [this._QuestDetailTaskComponent_GradientEntry3_c(),this._QuestDetailTaskComponent_GradientEntry4_c()];
            }
            return _loc1_;
         }
         §§goto(addr0049);
      }
      
      private function _QuestDetailTaskComponent_GradientEntry3_c() : GradientEntry
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:GradientEntry = new GradientEntry();
         if(!_loc2_)
         {
            _loc1_.color = 16777215;
         }
         return _loc1_;
      }
      
      private function _QuestDetailTaskComponent_GradientEntry4_c() : GradientEntry
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:GradientEntry = new GradientEntry();
         if(!_loc3_)
         {
            _loc1_.color = 15855852;
         }
         return _loc1_;
      }
      
      private function _QuestDetailTaskComponent_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._QuestDetailTaskComponent_Group3_c(),this._QuestDetailTaskComponent_VGroup1_c()];
                  if(_loc2_ || _loc2_)
                  {
                     addr007d:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               §§goto(addr008d);
            }
            §§goto(addr007d);
         }
         addr008d:
         return _loc1_;
      }
      
      private function _QuestDetailTaskComponent_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.width = 60;
            if(_loc2_ || _loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc3_ && Boolean(this)))
               {
                  §§goto(addr0065);
               }
               §§goto(addr0083);
            }
            addr0065:
            _loc1_.mxmlContent = [this._QuestDetailTaskComponent_BriskImageDynaLib1_i(),this._QuestDetailTaskComponent_BriskImageDynaLib2_i()];
            if(_loc2_ || _loc2_)
            {
               addr0083:
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
            §§goto(addr0093);
         }
         addr0093:
         return _loc1_;
      }
      
      private function _QuestDetailTaskComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.verticalCenter = 0;
            if(_loc3_)
            {
               _loc1_.horizontalCenter = 0;
               if(!_loc2_)
               {
                  _loc1_.id = "taskIcon";
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr005e:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           _loc1_.document = this;
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              addr0091:
                              this.taskIcon = _loc1_;
                              if(_loc3_ || _loc3_)
                              {
                                 addr00a3:
                                 BindingManager.executeBindings(this,"taskIcon",this.taskIcon);
                              }
                           }
                           return _loc1_;
                        }
                        §§goto(addr00a3);
                     }
                     §§goto(addr0091);
                  }
               }
            }
            §§goto(addr00a3);
         }
         §§goto(addr005e);
      }
      
      private function _QuestDetailTaskComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.verticalCenter = -12;
            if(_loc2_ || _loc2_)
            {
               _loc1_.horizontalCenter = -10;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.visible = false;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0068:
                     _loc1_.dynaLibName = "gui_popups_questPopup";
                     if(!_loc3_)
                     {
                        §§goto(addr0073);
                     }
                     §§goto(addr008a);
                  }
                  §§goto(addr00ba);
               }
               §§goto(addr00a9);
            }
            §§goto(addr0068);
         }
         addr0073:
         _loc1_.dynaBmpSourceName = "icon_locked";
         if(!_loc3_)
         {
            _loc1_.id = "_QuestDetailTaskComponent_BriskImageDynaLib2";
            if(!_loc3_)
            {
               addr008a:
               if(!_loc1_.document)
               {
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr00a9:
                     _loc1_.document = this;
                     if(_loc2_ || Boolean(this))
                     {
                        §§goto(addr00ba);
                     }
                  }
                  §§goto(addr00c4);
               }
               addr00ba:
               this._QuestDetailTaskComponent_BriskImageDynaLib2 = _loc1_;
               if(!_loc3_)
               {
                  addr00c4:
                  BindingManager.executeBindings(this,"_QuestDetailTaskComponent_BriskImageDynaLib2",this._QuestDetailTaskComponent_BriskImageDynaLib2);
               }
               §§goto(addr00d1);
            }
            §§goto(addr00c4);
         }
         addr00d1:
         return _loc1_;
      }
      
      private function _QuestDetailTaskComponent_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.verticalAlign = "middle";
            if(_loc2_ || _loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc3_ && Boolean(this)))
               {
                  addr005a:
                  _loc1_.percentWidth = 100;
                  if(!_loc3_)
                  {
                     _loc1_.mxmlContent = [this._QuestDetailTaskComponent_HGroup3_c()];
                     if(_loc2_ || _loc2_)
                     {
                        §§goto(addr0089);
                     }
                  }
                  §§goto(addr0095);
               }
               addr0089:
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr0095:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0099);
            }
            addr0099:
            return _loc1_;
         }
         §§goto(addr005a);
      }
      
      private function _QuestDetailTaskComponent_HGroup3_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.verticalAlign = "bottom";
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._QuestDetailTaskComponent_VGroup2_c(),this._QuestDetailTaskComponent_HGroup5_c()];
                  §§goto(addr0041);
               }
            }
            §§goto(addr006a);
         }
         addr0041:
         if(!(_loc3_ && _loc3_))
         {
            addr006a:
            if(!_loc1_.document)
            {
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _QuestDetailTaskComponent_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.width = 280;
            if(!_loc2_)
            {
               _loc1_.verticalAlign = "middle";
               if(_loc3_)
               {
                  addr0040:
                  _loc1_.gap = 0;
                  if(!_loc2_)
                  {
                     _loc1_.percentHeight = 100;
                     addr004a:
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr0066:
                        _loc1_.minHeight = 40;
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr0079:
                           _loc1_.maxWidth = 280;
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              _loc1_.mxmlContent = [this._QuestDetailTaskComponent_LinkedText1_i(),this._QuestDetailTaskComponent_HGroup4_i()];
                              if(!_loc2_)
                              {
                                 if(!_loc1_.document)
                                 {
                                    if(_loc3_)
                                    {
                                       addr00bb:
                                       _loc1_.document = this;
                                    }
                                 }
                                 return _loc1_;
                              }
                           }
                        }
                        §§goto(addr00bb);
                     }
                     §§goto(addr0079);
                  }
               }
               §§goto(addr0066);
            }
            §§goto(addr004a);
         }
         §§goto(addr0040);
      }
      
      private function _QuestDetailTaskComponent_LinkedText1_i() : LinkedText
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LinkedText = new LinkedText();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.verticalCenter = 0;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.width = 278;
               if(!_loc3_)
               {
                  §§goto(addr0053);
               }
               §§goto(addr005e);
            }
            addr0053:
            _loc1_.maxHeight = 40;
            if(!_loc3_)
            {
               addr005e:
               _loc1_.setStyle("paddingLeft",2);
               if(_loc2_)
               {
                  addr006c:
                  _loc1_.id = "taskLabel";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              §§goto(addr00a0);
                           }
                           §§goto(addr00aa);
                        }
                     }
                     §§goto(addr00a0);
                  }
                  §§goto(addr00aa);
               }
               addr00a0:
               this.taskLabel = _loc1_;
               if(_loc2_)
               {
                  addr00aa:
                  BindingManager.executeBindings(this,"taskLabel",this.taskLabel);
               }
               §§goto(addr00b7);
            }
            addr00b7:
            return _loc1_;
         }
         §§goto(addr006c);
      }
      
      private function _QuestDetailTaskComponent_HGroup4_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.gap = 2;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.verticalAlign = "middle";
               if(_loc3_)
               {
                  addr003d:
                  _loc1_.width = 280;
                  if(_loc3_)
                  {
                     _loc1_.maxWidth = 280;
                     if(!_loc2_)
                     {
                        _loc1_.mxmlContent = [this._QuestDetailTaskComponent_Group4_c(),this._QuestDetailTaskComponent_SlimProgressBarComponent1_i(),this._QuestDetailTaskComponent_Group5_c(),this._QuestDetailTaskComponent_LocaLabel1_i()];
                        if(_loc3_ || _loc2_)
                        {
                           addr008b:
                           _loc1_.id = "depositProgressGroup";
                           if(_loc3_ || _loc3_)
                           {
                              addr009e:
                              if(!_loc1_.document)
                              {
                                 if(!_loc2_)
                                 {
                                    addr00b7:
                                    _loc1_.document = this;
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       §§goto(addr00c8);
                                    }
                                    §§goto(addr00d2);
                                 }
                              }
                              addr00c8:
                              this.depositProgressGroup = _loc1_;
                              if(_loc3_)
                              {
                                 addr00d2:
                                 BindingManager.executeBindings(this,"depositProgressGroup",this.depositProgressGroup);
                              }
                              §§goto(addr00df);
                           }
                        }
                        §§goto(addr00b7);
                     }
                     addr00df:
                     return _loc1_;
                  }
                  §§goto(addr008b);
               }
               §§goto(addr009e);
            }
            §§goto(addr003d);
         }
         §§goto(addr008b);
      }
      
      private function _QuestDetailTaskComponent_Group4_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.height = 20;
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_ || Boolean(this))
                  {
                     addr004b:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr004f);
            }
            §§goto(addr004b);
         }
         addr004f:
         return _loc1_;
      }
      
      private function _QuestDetailTaskComponent_SlimProgressBarComponent1_i() : SlimProgressBarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SlimProgressBarComponent = new SlimProgressBarComponent();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.tint = 10739019;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.width = 170;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.showTrophy = true;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr006f:
                     _loc1_.id = "depositProgressBar";
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 §§goto(addr00a3);
                              }
                              §§goto(addr00ad);
                           }
                        }
                     }
                     addr00a3:
                     this.depositProgressBar = _loc1_;
                     if(_loc3_)
                     {
                        addr00ad:
                        BindingManager.executeBindings(this,"depositProgressBar",this.depositProgressBar);
                     }
                     §§goto(addr00ba);
                  }
                  addr00ba:
                  return _loc1_;
               }
            }
            §§goto(addr006f);
         }
         §§goto(addr00ad);
      }
      
      private function _QuestDetailTaskComponent_Group5_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.width = 4;
            if(_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr004b:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr004b);
      }
      
      private function _QuestDetailTaskComponent_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.maxDisplayedLines = 1;
            if(!_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(!(_loc3_ && _loc2_))
               {
                  addr0051:
                  _loc1_.id = "depositProgressLabel";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr0074:
                           _loc1_.document = this;
                           if(!(_loc3_ && _loc2_))
                           {
                              §§goto(addr0085);
                           }
                           §§goto(addr008f);
                        }
                     }
                     addr0085:
                     this.depositProgressLabel = _loc1_;
                     if(!_loc3_)
                     {
                        addr008f:
                        BindingManager.executeBindings(this,"depositProgressLabel",this.depositProgressLabel);
                     }
                     return _loc1_;
                  }
                  §§goto(addr0074);
               }
            }
            §§goto(addr008f);
         }
         §§goto(addr0051);
      }
      
      private function _QuestDetailTaskComponent_HGroup5_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.verticalAlign = "middle";
            if(!_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc2_)
               {
                  _loc1_.gap = 0;
                  §§goto(addr0033);
               }
               §§goto(addr007c);
            }
            §§goto(addr004a);
         }
         addr0033:
         if(_loc2_)
         {
            addr004a:
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.mxmlContent = [this._QuestDetailTaskComponent_Group6_c(),this._QuestDetailTaskComponent_DynamicPlusButton1_i()];
               §§goto(addr0054);
            }
            §§goto(addr007c);
         }
         addr0054:
         if(_loc2_ || _loc2_)
         {
            addr007c:
            if(!_loc1_.document)
            {
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _QuestDetailTaskComponent_Group6_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.width = 125;
            if(_loc2_)
            {
               _loc1_.height = 40;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.mxmlContent = [this._QuestDetailTaskComponent_HGroup6_c(),this._QuestDetailTaskComponent_MultistateButton1_i()];
                  §§goto(addr004e);
               }
               §§goto(addr008c);
            }
            addr004e:
            if(_loc2_ || Boolean(_loc1_))
            {
               if(!_loc1_.document)
               {
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr008c:
                     _loc1_.document = this;
                  }
               }
            }
            §§goto(addr0090);
         }
         addr0090:
         return _loc1_;
      }
      
      private function _QuestDetailTaskComponent_HGroup6_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(!_loc2_)
                  {
                     addr004d:
                     _loc1_.horizontalAlign = "center";
                     if(_loc3_)
                     {
                        addr0063:
                        _loc1_.mxmlContent = [this._QuestDetailTaskComponent_LocaLabel2_i()];
                        if(!_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 addr0087:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr008b);
                        }
                        §§goto(addr0087);
                     }
                  }
                  addr008b:
                  return _loc1_;
               }
               §§goto(addr0063);
            }
            §§goto(addr004d);
         }
         §§goto(addr0087);
      }
      
      private function _QuestDetailTaskComponent_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc3_)
         {
            _loc1_.visible = false;
            if(_loc3_)
            {
               _loc1_.maxDisplayedLines = 2;
               if(!_loc2_)
               {
                  _loc1_.styleName = "rcTextnew";
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr0050:
                     _loc1_.maxWidth = 116;
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.maxHeight = 36;
                        if(_loc3_)
                        {
                           _loc1_.minWidth = 1;
                           if(!(_loc2_ && _loc3_))
                           {
                              addr008d:
                              _loc1_.minHeight = 1;
                              if(!_loc2_)
                              {
                                 _loc1_.id = "rcPriceLabel";
                                 if(!_loc2_)
                                 {
                                    if(!_loc1_.document)
                                    {
                                       if(!_loc2_)
                                       {
                                          addr00bc:
                                          _loc1_.document = this;
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             addr00cd:
                                             this.rcPriceLabel = _loc1_;
                                             if(!_loc2_)
                                             {
                                                BindingManager.executeBindings(this,"rcPriceLabel",this.rcPriceLabel);
                                             }
                                          }
                                          §§goto(addr00e4);
                                       }
                                    }
                                    §§goto(addr00cd);
                                 }
                                 §§goto(addr00e4);
                              }
                              §§goto(addr00cd);
                           }
                           §§goto(addr00bc);
                        }
                        §§goto(addr00e4);
                     }
                     §§goto(addr00bc);
                  }
                  addr00e4:
                  return _loc1_;
               }
               §§goto(addr0050);
            }
            §§goto(addr00bc);
         }
         §§goto(addr008d);
      }
      
      private function _QuestDetailTaskComponent_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  _loc1_.addEventListener("click",this.__depositButton_click);
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.id = "depositButton";
                     if(!_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              §§goto(addr0084);
                           }
                           §§goto(addr009f);
                        }
                     }
                     §§goto(addr0095);
                  }
                  addr0084:
                  _loc1_.document = this;
                  if(_loc2_ || _loc3_)
                  {
                     addr0095:
                     this.depositButton = _loc1_;
                     if(_loc2_)
                     {
                        addr009f:
                        BindingManager.executeBindings(this,"depositButton",this.depositButton);
                     }
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr009f);
      }
      
      public function __depositButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.handleDepositClick();
         }
      }
      
      private function _QuestDetailTaskComponent_DynamicPlusButton1_i() : DynamicPlusButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicPlusButton = new DynamicPlusButton();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.width = 40;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.height = 40;
               if(!_loc3_)
               {
                  _loc1_.useConfirmation = true;
                  if(!_loc3_)
                  {
                     _loc1_.iconImageName = "dd_button_icon";
                     if(_loc2_)
                     {
                        _loc1_.iconLibName = "gui_resources_icons";
                        if(!(_loc3_ && _loc2_))
                        {
                           _loc1_.setStyle("skinClass",DynamicPlusButtonSkin);
                           if(_loc2_)
                           {
                              _loc1_.addEventListener("rollOver",this.__skipButton_rollOver);
                              if(!_loc3_)
                              {
                                 addr009d:
                                 _loc1_.addEventListener("rollOut",this.__skipButton_rollOut);
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    addr00b6:
                                    _loc1_.addEventListener("click",this.__skipButton_click);
                                    if(!_loc3_)
                                    {
                                       addr00c6:
                                       _loc1_.id = "skipButton";
                                       if(!_loc3_)
                                       {
                                          addr00d1:
                                          if(!_loc1_.document)
                                          {
                                             if(_loc2_)
                                             {
                                                §§goto(addr00ea);
                                             }
                                             §§goto(addr0105);
                                          }
                                          §§goto(addr00f3);
                                       }
                                       §§goto(addr0105);
                                    }
                                    §§goto(addr00d1);
                                 }
                                 §§goto(addr00c6);
                              }
                              addr00ea:
                              _loc1_.document = this;
                              if(_loc2_)
                              {
                                 addr00f3:
                                 this.skipButton = _loc1_;
                                 if(_loc2_ || _loc3_)
                                 {
                                    addr0105:
                                    BindingManager.executeBindings(this,"skipButton",this.skipButton);
                                 }
                              }
                              return _loc1_;
                           }
                           §§goto(addr00c6);
                        }
                        §§goto(addr009d);
                     }
                     §§goto(addr00b6);
                  }
                  §§goto(addr00f3);
               }
               §§goto(addr009d);
            }
            §§goto(addr0105);
         }
         §§goto(addr009d);
      }
      
      public function __skipButton_rollOver(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this.skipButtonRollOver();
         }
      }
      
      public function __skipButton_rollOut(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this.skipButtonRollOut();
         }
      }
      
      public function __skipButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.skipButtonClick();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _QuestDetailTaskComponent_BriskImageDynaLib2() : BriskImageDynaLib
      {
         return this._1381421030_QuestDetailTaskComponent_BriskImageDynaLib2;
      }
      
      public function set _QuestDetailTaskComponent_BriskImageDynaLib2(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1381421030_QuestDetailTaskComponent_BriskImageDynaLib2;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  addr0049:
                  this._1381421030_QuestDetailTaskComponent_BriskImageDynaLib2 = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     §§goto(addr006a);
                  }
                  §§goto(addr0082);
               }
               addr006a:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || Boolean(this))
                  {
                     addr0082:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_QuestDetailTaskComponent_BriskImageDynaLib2",_loc2_,param1));
                  }
               }
               §§goto(addr0091);
            }
            addr0091:
            return;
         }
         §§goto(addr0049);
      }
      
      [Bindable(event="propertyChange")]
      public function get _QuestDetailTaskComponent_GlowFilter2() : GlowFilter
      {
         return this._1381374734_QuestDetailTaskComponent_GlowFilter2;
      }
      
      public function set _QuestDetailTaskComponent_GlowFilter2(param1:GlowFilter) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1381374734_QuestDetailTaskComponent_GlowFilter2;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._1381374734_QuestDetailTaskComponent_GlowFilter2 = param1;
                  if(_loc3_ || _loc3_)
                  {
                     addr005c:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_QuestDetailTaskComponent_GlowFilter2",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007a);
               }
               §§goto(addr006b);
            }
            addr007a:
            return;
         }
         §§goto(addr005c);
      }
      
      [Bindable(event="propertyChange")]
      public function get _QuestDetailTaskComponent_GradientEntry1() : GradientEntry
      {
         return this._976409514_QuestDetailTaskComponent_GradientEntry1;
      }
      
      public function set _QuestDetailTaskComponent_GradientEntry1(param1:GradientEntry) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._976409514_QuestDetailTaskComponent_GradientEntry1;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._976409514_QuestDetailTaskComponent_GradientEntry1 = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_QuestDetailTaskComponent_GradientEntry1",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr006d);
               }
            }
            addr007c:
            return;
         }
         §§goto(addr006d);
      }
      
      [Bindable(event="propertyChange")]
      public function get _QuestDetailTaskComponent_GradientEntry2() : GradientEntry
      {
         return this._976409515_QuestDetailTaskComponent_GradientEntry2;
      }
      
      public function set _QuestDetailTaskComponent_GradientEntry2(param1:GradientEntry) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._976409515_QuestDetailTaskComponent_GradientEntry2;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._976409515_QuestDetailTaskComponent_GradientEntry2 = param1;
                  addr0046:
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     §§goto(addr0067);
                  }
                  §§goto(addr0076);
               }
               addr0067:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_)
                  {
                     addr0076:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_QuestDetailTaskComponent_GradientEntry2",_loc2_,param1));
                  }
               }
               §§goto(addr0085);
            }
            addr0085:
            return;
         }
         §§goto(addr0046);
      }
      
      [Bindable(event="propertyChange")]
      public function get _QuestDetailTaskComponent_SolidColorStroke1() : SolidColorStroke
      {
         return this._1920013862_QuestDetailTaskComponent_SolidColorStroke1;
      }
      
      public function set _QuestDetailTaskComponent_SolidColorStroke1(param1:SolidColorStroke) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1920013862_QuestDetailTaskComponent_SolidColorStroke1;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  addr004a:
                  this._1920013862_QuestDetailTaskComponent_SolidColorStroke1 = param1;
                  if(!_loc4_)
                  {
                     §§goto(addr0055);
                  }
                  §§goto(addr0065);
               }
               addr0055:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr0065:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_QuestDetailTaskComponent_SolidColorStroke1",_loc2_,param1));
                  }
               }
               §§goto(addr0074);
            }
            addr0074:
            return;
         }
         §§goto(addr004a);
      }
      
      [Bindable(event="propertyChange")]
      public function get depositButton() : MultistateButton
      {
         return this._371311760depositButton;
      }
      
      public function set depositButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._371311760depositButton;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  addr003f:
                  this._371311760depositButton = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"depositButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr0075);
            }
            addr0084:
            return;
         }
         §§goto(addr003f);
      }
      
      [Bindable(event="propertyChange")]
      public function get depositProgressBar() : SlimProgressBarComponent
      {
         return this._1347528408depositProgressBar;
      }
      
      public function set depositProgressBar(param1:SlimProgressBarComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1347528408depositProgressBar;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._1347528408depositProgressBar = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"depositProgressBar",_loc2_,param1));
                        }
                     }
                     §§goto(addr0076);
                  }
                  §§goto(addr0067);
               }
            }
            addr0076:
            return;
         }
         §§goto(addr0067);
      }
      
      [Bindable(event="propertyChange")]
      public function get depositProgressGroup() : HGroup
      {
         return this._2110448212depositProgressGroup;
      }
      
      public function set depositProgressGroup(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2110448212depositProgressGroup;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  addr0054:
                  this._2110448212depositProgressGroup = param1;
                  if(_loc4_)
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"depositProgressGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr005f);
            }
            addr007d:
            return;
         }
         §§goto(addr0054);
      }
      
      [Bindable(event="propertyChange")]
      public function get depositProgressLabel() : LocaLabel
      {
         return this._2114546377depositProgressLabel;
      }
      
      public function set depositProgressLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2114546377depositProgressLabel;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  addr0050:
                  this._2114546377depositProgressLabel = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"depositProgressLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr007a);
                  }
               }
               §§goto(addr006b);
            }
            addr007a:
            return;
         }
         §§goto(addr0050);
      }
      
      [Bindable(event="propertyChange")]
      public function get rcPriceLabel() : LocaLabel
      {
         return this._538174524rcPriceLabel;
      }
      
      public function set rcPriceLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._538174524rcPriceLabel;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._538174524rcPriceLabel = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rcPriceLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr006e);
               }
            }
            addr007d:
            return;
         }
         §§goto(addr006e);
      }
      
      [Bindable(event="propertyChange")]
      public function get skipButton() : DynamicPlusButton
      {
         return this._319513199skipButton;
      }
      
      public function set skipButton(param1:DynamicPlusButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._319513199skipButton;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._319513199skipButton = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skipButton",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr006d);
      }
      
      [Bindable(event="propertyChange")]
      public function get taskIcon() : BriskImageDynaLib
      {
         return this._410477666taskIcon;
      }
      
      public function set taskIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._410477666taskIcon;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._410477666taskIcon = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     §§goto(addr0057);
                  }
                  §§goto(addr0067);
               }
               addr0057:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr0067:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"taskIcon",_loc2_,param1));
                  }
               }
               §§goto(addr0076);
            }
            addr0076:
            return;
         }
         §§goto(addr0067);
      }
      
      [Bindable(event="propertyChange")]
      public function get taskLabel() : LinkedText
      {
         return this._162792559taskLabel;
      }
      
      public function set taskLabel(param1:LinkedText) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._162792559taskLabel;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._162792559taskLabel = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"taskLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr007a);
                  }
                  §§goto(addr006b);
               }
            }
            addr007a:
            return;
         }
         §§goto(addr006b);
      }
   }
}

