package net.bigpoint.cityrama.view.constructionLayer
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.clearInterval;
   import flash.utils.setInterval;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.events.ToolTipEvent;
   import mx.graphics.GradientEntry;
   import mx.graphics.LinearGradient;
   import mx.graphics.SolidColorStroke;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.model.construction.ConstructionLayerMediator;
   import net.bigpoint.cityrama.model.construction.ConstructionLayerStepVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.filters.DropShadowFilter;
   import spark.filters.GlowFilter;
   import spark.primitives.Rect;
   
   public class ConstructionStepDetailComponent extends Group implements IStateClient2
   {
      
      private var _912060846_ConstructionStepDetailComponent_BriskImageDynaLib2:BriskImageDynaLib;
      
      private var _912060848_ConstructionStepDetailComponent_BriskImageDynaLib4:BriskImageDynaLib;
      
      private var _976486878_ConstructionStepDetailComponent_GlowFilter2:GlowFilter;
      
      private var _158433474_ConstructionStepDetailComponent_GradientEntry1:GradientEntry;
      
      private var _158433473_ConstructionStepDetailComponent_GradientEntry2:GradientEntry;
      
      private var _677651186_ConstructionStepDetailComponent_HGroup4:HGroup;
      
      private var _677651185_ConstructionStepDetailComponent_HGroup5:HGroup;
      
      private var _499854830_ConstructionStepDetailComponent_SolidColorStroke1:SolidColorStroke;
      
      private var _122527168durationLabel:LocaLabel;
      
      private var _538174524rcPriceLabel:LocaLabel;
      
      private var _384713305resourceIcon:BriskImageDynaLib;
      
      private var _961487750resourceLabel:LocaLabel;
      
      private var _1101940077runningTimerBar:TimerBarComponent;
      
      private var _399615367runningTimerBarLabel:LocaLabel;
      
      private var _1943111220startButton:MultistateButton;
      
      private var _428266566stepInstantFinishButton:MultistateButton;
      
      private var _2083403412stepInstantFinishLabel:LocaLabel;
      
      private var _1326901128stepLabel:LocaLabel;
      
      private var _410477666taskIcon:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ConstructionLayerStepVo;
      
      private var _dataDirty:Boolean;
      
      private var _hasInterval:Boolean;
      
      private var _intervalId:uint;
      
      private var _toolTipDirty:Boolean;
      
      private var _toolTipVisible:Boolean;
      
      private var _toolTipEvent:ToolTipEvent;
      
      public function ConstructionStepDetailComponent()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super();
            if(!(_loc2_ && Boolean(this)))
            {
               mx_internal::_document = this;
               if(!_loc2_)
               {
                  this.percentWidth = 100;
                  if(!_loc2_)
                  {
                     §§goto(addr0049);
                  }
               }
               §§goto(addr009f);
            }
         }
         addr0049:
         this.percentHeight = 100;
         if(_loc1_)
         {
            this.mxmlContent = [this._ConstructionStepDetailComponent_HGroup1_c(),this._ConstructionStepDetailComponent_HGroup2_c()];
            if(_loc1_)
            {
               this.currentState = "normal";
               if(_loc1_)
               {
                  §§goto(addr0075);
               }
            }
            §§goto(addr008e);
         }
         addr0075:
         this.addEventListener("creationComplete",this.___ConstructionStepDetailComponent_Group1_creationComplete);
         if(_loc1_ || _loc2_)
         {
            addr008e:
            this.addEventListener("removedFromStage",this.___ConstructionStepDetailComponent_Group1_removedFromStage);
            if(_loc1_)
            {
               states = [new State({
                  "name":"normal",
                  "overrides":[new SetProperty().initializeFromObject({
                     "target":"_ConstructionStepDetailComponent_GradientEntry1",
                     "name":"color",
                     "value":8639213
                  }),new SetProperty().initializeFromObject({
                     "target":"_ConstructionStepDetailComponent_GradientEntry2",
                     "name":"color",
                     "value":5747938
                  }),new SetProperty().initializeFromObject({
                     "target":"_ConstructionStepDetailComponent_GlowFilter2",
                     "name":"color",
                     "value":8648959
                  }),new SetProperty().initializeFromObject({
                     "target":"_ConstructionStepDetailComponent_SolidColorStroke1",
                     "name":"color",
                     "value":1813193
                  }),new SetProperty().initializeFromObject({
                     "target":"stepLabel",
                     "name":"styleName",
                     "value":"blueElevenLeft"
                  }),new SetProperty().initializeFromObject({
                     "target":"_ConstructionStepDetailComponent_HGroup4",
                     "name":"visible",
                     "value":true
                  }),new SetProperty().initializeFromObject({
                     "target":"_ConstructionStepDetailComponent_HGroup4",
                     "name":"includeInLayout",
                     "value":true
                  }),new SetProperty().initializeFromObject({
                     "target":"_ConstructionStepDetailComponent_HGroup5",
                     "name":"visible",
                     "value":false
                  }),new SetProperty().initializeFromObject({
                     "target":"_ConstructionStepDetailComponent_HGroup5",
                     "name":"includeInLayout",
                     "value":false
                  })]
               }),new State({
                  "name":"locked",
                  "overrides":[new SetProperty().initializeFromObject({
                     "target":"_ConstructionStepDetailComponent_GradientEntry1",
                     "name":"color",
                     "value":15527148
                  }),new SetProperty().initializeFromObject({
                     "target":"_ConstructionStepDetailComponent_GradientEntry2",
                     "name":"color",
                     "value":14013905
                  }),new SetProperty().initializeFromObject({
                     "target":"_ConstructionStepDetailComponent_GlowFilter2",
                     "name":"color",
                     "value":15790319
                  }),new SetProperty().initializeFromObject({
                     "target":"_ConstructionStepDetailComponent_SolidColorStroke1",
                     "name":"color",
                     "value":13750737
                  }),new SetProperty().initializeFromObject({
                     "target":"taskIcon",
                     "name":"alpha",
                     "value":0.4
                  }),new SetProperty().initializeFromObject({
                     "target":"_ConstructionStepDetailComponent_BriskImageDynaLib2",
                     "name":"visible",
                     "value":true
                  }),new SetProperty().initializeFromObject({
                     "target":"stepLabel",
                     "name":"styleName",
                     "value":"taskLabelActiveNew"
                  }),new SetProperty().initializeFromObject({
                     "target":"stepLabel",
                     "name":"alpha",
                     "value":0.4
                  }),new SetProperty().initializeFromObject({
                     "target":"_ConstructionStepDetailComponent_HGroup4",
                     "name":"visible",
                     "value":true
                  }),new SetProperty().initializeFromObject({
                     "target":"_ConstructionStepDetailComponent_HGroup4",
                     "name":"includeInLayout",
                     "value":true
                  }),new SetProperty().initializeFromObject({
                     "target":"resourceIcon",
                     "name":"alpha",
                     "value":0.4
                  }),new SetProperty().initializeFromObject({
                     "target":"resourceLabel",
                     "name":"styleName",
                     "value":"taskLabelActiveNew"
                  }),new SetProperty().initializeFromObject({
                     "target":"resourceLabel",
                     "name":"alpha",
                     "value":0.4
                  }),new SetProperty().initializeFromObject({
                     "target":"_ConstructionStepDetailComponent_BriskImageDynaLib4",
                     "name":"alpha",
                     "value":0.4
                  }),new SetProperty().initializeFromObject({
                     "target":"durationLabel",
                     "name":"alpha",
                     "value":0.4
                  }),new SetProperty().initializeFromObject({
                     "target":"_ConstructionStepDetailComponent_HGroup5",
                     "name":"visible",
                     "value":false
                  }),new SetProperty().initializeFromObject({
                     "target":"_ConstructionStepDetailComponent_HGroup5",
                     "name":"includeInLayout",
                     "value":false
                  }),new SetProperty().initializeFromObject({
                     "target":"startButton",
                     "name":"enabled",
                     "value":false
                  }),new SetProperty().initializeFromObject({
                     "target":"startButton",
                     "name":"alpha",
                     "value":0.2
                  }),new SetProperty().initializeFromObject({
                     "target":"stepInstantFinishButton",
                     "name":"enabled",
                     "value":false
                  }),new SetProperty().initializeFromObject({
                     "target":"stepInstantFinishButton",
                     "name":"alpha",
                     "value":0.2
                  })]
               }),new State({
                  "name":"done",
                  "overrides":[new SetProperty().initializeFromObject({
                     "target":"_ConstructionStepDetailComponent_GradientEntry1",
                     "name":"color",
                     "value":11197005
                  }),new SetProperty().initializeFromObject({
                     "target":"_ConstructionStepDetailComponent_GradientEntry2",
                     "name":"color",
                     "value":7520562
                  }),new SetProperty().initializeFromObject({
                     "target":"_ConstructionStepDetailComponent_GlowFilter2",
                     "name":"color",
                     "value":14090129
                  }),new SetProperty().initializeFromObject({
                     "target":"_ConstructionStepDetailComponent_SolidColorStroke1",
                     "name":"color",
                     "value":8044035
                  }),new SetProperty().initializeFromObject({
                     "target":"stepLabel",
                     "name":"styleName",
                     "value":"questTaskDone"
                  }),new SetProperty().initializeFromObject({
                     "target":"_ConstructionStepDetailComponent_HGroup4",
                     "name":"visible",
                     "value":true
                  }),new SetProperty().initializeFromObject({
                     "target":"_ConstructionStepDetailComponent_HGroup4",
                     "name":"includeInLayout",
                     "value":true
                  }),new SetProperty().initializeFromObject({
                     "target":"resourceLabel",
                     "name":"styleName",
                     "value":"questTaskDone"
                  }),new SetProperty().initializeFromObject({
                     "target":"_ConstructionStepDetailComponent_BriskImageDynaLib4",
                     "name":"visible",
                     "value":false
                  }),new SetProperty().initializeFromObject({
                     "target":"_ConstructionStepDetailComponent_BriskImageDynaLib4",
                     "name":"includeInLayout",
                     "value":false
                  }),new SetProperty().initializeFromObject({
                     "target":"durationLabel",
                     "name":"visible",
                     "value":false
                  }),new SetProperty().initializeFromObject({
                     "target":"durationLabel",
                     "name":"includeInLayout",
                     "value":false
                  }),new SetProperty().initializeFromObject({
                     "target":"_ConstructionStepDetailComponent_HGroup5",
                     "name":"visible",
                     "value":false
                  }),new SetProperty().initializeFromObject({
                     "target":"_ConstructionStepDetailComponent_HGroup5",
                     "name":"includeInLayout",
                     "value":false
                  }),new SetProperty().initializeFromObject({
                     "target":"rcPriceLabel",
                     "name":"visible",
                     "value":false
                  }),new SetProperty().initializeFromObject({
                     "target":"startButton",
                     "name":"visible",
                     "value":false
                  }),new SetProperty().initializeFromObject({
                     "target":"startButton",
                     "name":"enabled",
                     "value":false
                  }),new SetProperty().initializeFromObject({
                     "target":"stepInstantFinishButton",
                     "name":"visible",
                     "value":false
                  }),new SetProperty().initializeFromObject({
                     "target":"stepInstantFinishButton",
                     "name":"enabled",
                     "value":false
                  })]
               }),new State({
                  "name":"donePreview",
                  "overrides":[new SetProperty().initializeFromObject({
                     "target":"_ConstructionStepDetailComponent_GradientEntry1",
                     "name":"color",
                     "value":11197005
                  }),new SetProperty().initializeFromObject({
                     "target":"_ConstructionStepDetailComponent_GradientEntry2",
                     "name":"color",
                     "value":7520562
                  }),new SetProperty().initializeFromObject({
                     "target":"_ConstructionStepDetailComponent_GlowFilter2",
                     "name":"color",
                     "value":14090129
                  }),new SetProperty().initializeFromObject({
                     "target":"_ConstructionStepDetailComponent_SolidColorStroke1",
                     "name":"color",
                     "value":8044035
                  }),new SetProperty().initializeFromObject({
                     "target":"stepLabel",
                     "name":"styleName",
                     "value":"questTaskDone"
                  }),new SetProperty().initializeFromObject({
                     "target":"_ConstructionStepDetailComponent_HGroup4",
                     "name":"visible",
                     "value":true
                  }),new SetProperty().initializeFromObject({
                     "target":"_ConstructionStepDetailComponent_HGroup4",
                     "name":"includeInLayout",
                     "value":true
                  }),new SetProperty().initializeFromObject({
                     "target":"resourceLabel",
                     "name":"styleName",
                     "value":"questTaskDone"
                  }),new SetProperty().initializeFromObject({
                     "target":"_ConstructionStepDetailComponent_BriskImageDynaLib4",
                     "name":"visible",
                     "value":false
                  }),new SetProperty().initializeFromObject({
                     "target":"_ConstructionStepDetailComponent_BriskImageDynaLib4",
                     "name":"includeInLayout",
                     "value":false
                  }),new SetProperty().initializeFromObject({
                     "target":"durationLabel",
                     "name":"visible",
                     "value":false
                  }),new SetProperty().initializeFromObject({
                     "target":"durationLabel",
                     "name":"includeInLayout",
                     "value":false
                  }),new SetProperty().initializeFromObject({
                     "target":"_ConstructionStepDetailComponent_HGroup5",
                     "name":"visible",
                     "value":false
                  }),new SetProperty().initializeFromObject({
                     "target":"_ConstructionStepDetailComponent_HGroup5",
                     "name":"includeInLayout",
                     "value":false
                  }),new SetProperty().initializeFromObject({
                     "target":"startButton",
                     "name":"visible",
                     "value":false
                  }),new SetProperty().initializeFromObject({
                     "target":"startButton",
                     "name":"enabled",
                     "value":false
                  }),new SetProperty().initializeFromObject({
                     "target":"startButton",
                     "name":"includeInLayout",
                     "value":false
                  }),new SetProperty().initializeFromObject({
                     "target":"stepInstantFinishLabel",
                     "name":"visible",
                     "value":true
                  }),new SetProperty().initializeFromObject({
                     "target":"stepInstantFinishLabel",
                     "name":"includeInLayout",
                     "value":true
                  })]
               }),new State({
                  "name":"running",
                  "overrides":[new SetProperty().initializeFromObject({
                     "target":"_ConstructionStepDetailComponent_GradientEntry1",
                     "name":"color",
                     "value":8639213
                  }),new SetProperty().initializeFromObject({
                     "target":"_ConstructionStepDetailComponent_GradientEntry2",
                     "name":"color",
                     "value":5747938
                  }),new SetProperty().initializeFromObject({
                     "target":"_ConstructionStepDetailComponent_GlowFilter2",
                     "name":"color",
                     "value":8648959
                  }),new SetProperty().initializeFromObject({
                     "target":"_ConstructionStepDetailComponent_SolidColorStroke1",
                     "name":"color",
                     "value":1813193
                  }),new SetProperty().initializeFromObject({
                     "target":"stepLabel",
                     "name":"styleName",
                     "value":"blueElevenLeft"
                  }),new SetProperty().initializeFromObject({
                     "target":"_ConstructionStepDetailComponent_HGroup4",
                     "name":"visible",
                     "value":false
                  }),new SetProperty().initializeFromObject({
                     "target":"_ConstructionStepDetailComponent_HGroup4",
                     "name":"includeInLayout",
                     "value":false
                  }),new SetProperty().initializeFromObject({
                     "target":"_ConstructionStepDetailComponent_HGroup5",
                     "name":"visible",
                     "value":true
                  }),new SetProperty().initializeFromObject({
                     "target":"_ConstructionStepDetailComponent_HGroup5",
                     "name":"includeInLayout",
                     "value":true
                  }),new SetProperty().initializeFromObject({
                     "target":"startButton",
                     "name":"visible",
                     "value":false
                  }),new SetProperty().initializeFromObject({
                     "target":"startButton",
                     "name":"enabled",
                     "value":false
                  })]
               })];
               addr009f:
            }
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(!_loc2_)
            {
               §§goto(addr002d);
            }
            §§goto(addr003b);
         }
         addr002d:
         if(this.__moduleFactoryInitialized)
         {
            if(!_loc2_)
            {
               addr003b:
               return;
            }
         }
         else
         {
            this.__moduleFactoryInitialized = true;
         }
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super.initialize();
         }
      }
      
      public function set data(param1:ConstructionLayerStepVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._data = param1;
            if(_loc3_)
            {
               this._dataDirty = true;
               if(_loc3_ || Boolean(this))
               {
                  addr0047:
                  this.setState();
                  if(_loc3_)
                  {
                     addr0051:
                     invalidateProperties();
                  }
                  §§goto(addr0056);
               }
               §§goto(addr0051);
            }
            addr0056:
            return;
         }
         §§goto(addr0047);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super.commitProperties();
            if(_loc2_ || Boolean(this))
            {
               §§goto(addr0030);
            }
            §§goto(addr0089);
         }
         addr0030:
         if(this._dataDirty)
         {
            if(_loc2_ || _loc1_)
            {
               this._dataDirty = false;
               if(_loc2_)
               {
                  this.setIcon();
                  if(!(_loc1_ && _loc2_))
                  {
                     addr006b:
                     this.setResourceIcon();
                     if(_loc2_ || _loc2_)
                     {
                        this.setStepLabel();
                        if(!_loc1_)
                        {
                           addr0089:
                           this.setStepDetailText();
                           if(_loc2_)
                           {
                              addr0093:
                              this.setTimer();
                              if(!_loc1_)
                              {
                                 this.setDurationText();
                                 if(!_loc1_)
                                 {
                                    this.startButton.label = LocaUtils.getString("rcl.miniLayer.construction","rcl.miniLayer.construction.button");
                                    if(_loc2_)
                                    {
                                       addr00cb:
                                       this.setStepInstantFinishLabel();
                                       if(_loc2_ || _loc2_)
                                       {
                                          addr00dd:
                                          this.setStartButton();
                                       }
                                    }
                                    §§goto(addr00e3);
                                 }
                                 §§goto(addr00dd);
                              }
                           }
                           §§goto(addr00cb);
                        }
                        §§goto(addr00e3);
                     }
                     §§goto(addr0093);
                  }
                  §§goto(addr00e3);
               }
            }
            §§goto(addr006b);
         }
         addr00e3:
      }
      
      private function setState() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(this._data)
            {
               addr00b8:
               §§push(this._data);
               if(_loc3_)
               {
                  §§push(§§pop().state);
                  if(_loc3_ || _loc2_)
                  {
                     var _loc1_:* = §§pop();
                     if(_loc3_ || Boolean(this))
                     {
                        §§push(ConstructionLayerStepVo.STATE_AVAILABLE);
                        if(_loc3_)
                        {
                           §§push(_loc1_);
                           if(_loc3_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    §§push(0);
                                    if(_loc3_ || Boolean(this))
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr014a:
                                    §§push(1);
                                    if(_loc2_ && _loc1_)
                                    {
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(ConstructionLayerStepVo.STATE_RUNNING);
                                 if(_loc3_ || _loc2_)
                                 {
                                    addr0133:
                                    §§push(_loc1_);
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc2_)
                                          {
                                             §§goto(addr014a);
                                          }
                                          else
                                          {
                                             addr019d:
                                             §§push(3);
                                             if(_loc2_ && _loc2_)
                                             {
                                             }
                                          }
                                          §§goto(addr01bc);
                                       }
                                       else
                                       {
                                          §§push(ConstructionLayerStepVo.STATE_DONE);
                                          if(_loc3_)
                                          {
                                             §§push(_loc1_);
                                             if(!_loc2_)
                                             {
                                                addr016e:
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!(_loc2_ && _loc1_))
                                                   {
                                                      addr017f:
                                                      §§push(2);
                                                      if(_loc3_ || _loc1_)
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr019d);
                                                   }
                                                   §§goto(addr01bc);
                                                }
                                                else
                                                {
                                                   §§goto(addr0199);
                                                }
                                             }
                                             addr0199:
                                          }
                                          §§goto(addr0198);
                                       }
                                    }
                                    §§goto(addr016e);
                                 }
                                 addr0198:
                                 if(ConstructionLayerStepVo.STATE_UNAVAILABLE === _loc1_)
                                 {
                                    §§goto(addr019d);
                                 }
                                 else
                                 {
                                    §§push(4);
                                 }
                                 §§goto(addr01bc);
                              }
                              addr01bc:
                              switch(§§pop())
                              {
                                 case 0:
                                    currentState = "normal";
                                    if(_loc2_)
                                    {
                                       addr005f:
                                       this._intervalId = setInterval(this.updateCostInterval,1000);
                                       if(_loc2_)
                                       {
                                          break;
                                       }
                                       this._hasInterval = true;
                                       if(_loc2_)
                                       {
                                       }
                                    }
                                    addr01df:
                                    addr01e6:
                                    addr01e3:
                                    if(this._data.state != ConstructionLayerStepVo.STATE_RUNNING)
                                    {
                                       if(_loc3_)
                                       {
                                          addr0206:
                                          if(!this._hasInterval)
                                          {
                                             break;
                                          }
                                          if(!_loc3_)
                                          {
                                             break;
                                          }
                                          clearInterval(this._intervalId);
                                          if(_loc2_ && _loc2_)
                                          {
                                             break;
                                          }
                                       }
                                       addr0227:
                                       this._hasInterval = false;
                                    }
                                    break;
                                 case 1:
                                    currentState = "running";
                                    if(_loc3_)
                                    {
                                       §§push(this._hasInterval);
                                       if(_loc3_)
                                       {
                                          if(!§§pop())
                                          {
                                             if(_loc3_ || _loc2_)
                                             {
                                                §§goto(addr005f);
                                             }
                                             §§goto(addr0227);
                                          }
                                          §§goto(addr01df);
                                       }
                                       §§goto(addr0206);
                                    }
                                    §§goto(addr0227);
                                 case 2:
                                    currentState = "done";
                                    if(_loc2_)
                                    {
                                    }
                                    §§goto(addr01df);
                                 case 3:
                                    currentState = "locked";
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§goto(addr01df);
                                    }
                                    §§goto(addr0227);
                                 default:
                                    §§goto(addr01df);
                              }
                              §§goto(addr022c);
                           }
                           §§goto(addr016e);
                        }
                        §§goto(addr0133);
                     }
                     §§goto(addr017f);
                  }
                  §§goto(addr01e6);
               }
               §§goto(addr01e3);
            }
            addr022c:
            return;
         }
         §§goto(addr00b8);
      }
      
      private function setIcon() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            if(this._data)
            {
               if(_loc2_ || _loc1_)
               {
                  §§push(this.taskIcon);
                  if(!(_loc1_ && _loc1_))
                  {
                     §§push(this._data);
                     if(_loc2_)
                     {
                        §§push(§§pop().icon);
                        if(!(_loc1_ && _loc1_))
                        {
                           §§pop().dynaBmpSourceName = §§pop();
                           if(!_loc1_)
                           {
                              §§push(this.taskIcon);
                              if(!_loc1_)
                              {
                                 addr0076:
                                 §§pop().dynaLibName = this._data.iconLibName;
                                 addr0073:
                                 if(_loc1_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr009c:
                                 §§push("");
                                 if(!(_loc1_ && Boolean(this)))
                                 {
                                    §§pop().dynaBmpSourceName = §§pop();
                                    if(_loc2_)
                                    {
                                       addr00b8:
                                       this.taskIcon.dynaLibName = "";
                                       addr00b6:
                                       addr00b2:
                                    }
                                    §§goto(addr00ba);
                                 }
                                 §§goto(addr00b8);
                              }
                           }
                           §§goto(addr00ba);
                        }
                        §§goto(addr0076);
                     }
                     §§goto(addr0073);
                  }
                  §§goto(addr009c);
               }
               addr00ba:
               return;
            }
            §§push(this.taskIcon);
            if(!(_loc1_ && _loc2_))
            {
               §§goto(addr009c);
            }
            §§goto(addr00b6);
         }
         §§goto(addr00b2);
      }
      
      private function setResourceIcon() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            if(this._data)
            {
               if(_loc1_)
               {
                  §§push(this.resourceIcon);
                  if(_loc1_)
                  {
                     §§push(this._data);
                     if(!(_loc2_ && _loc1_))
                     {
                        §§push(§§pop().resourceIcon);
                        if(_loc1_ || _loc1_)
                        {
                           §§pop().dynaBmpSourceName = §§pop();
                           if(_loc1_ || _loc2_)
                           {
                              §§push(this.resourceIcon);
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr0088:
                                 §§pop().dynaLibName = this._data.resourceIconLibName;
                                 addr007a:
                                 addr0076:
                                 if(!_loc1_)
                                 {
                                    addr00b8:
                                    this.resourceIcon.dynaLibName = "";
                                    addr00b6:
                                    addr00b2:
                                 }
                                 §§goto(addr00ba);
                              }
                              §§goto(addr00b6);
                           }
                           §§goto(addr00ba);
                        }
                        §§goto(addr0088);
                     }
                     §§goto(addr007a);
                  }
                  §§goto(addr0076);
               }
               §§goto(addr00ba);
            }
            else
            {
               §§push(this.resourceIcon);
               if(!_loc2_)
               {
                  §§push("");
                  if(!(_loc2_ && _loc1_))
                  {
                     §§pop().dynaBmpSourceName = §§pop();
                     if(_loc1_)
                     {
                        §§goto(addr00b2);
                     }
                     addr00ba:
                     return;
                  }
                  §§goto(addr00b8);
               }
            }
            §§goto(addr00b6);
         }
         §§goto(addr00b2);
      }
      
      private function stepInstantFinishButton_rollOverHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            currentState = "donePreview";
            if(_loc3_)
            {
               addr0028:
               §§push(this.taskIcon);
               if(_loc3_)
               {
                  §§push("task_checkmark_grey");
                  if(!_loc2_)
                  {
                     §§pop().dynaBmpSourceName = §§pop();
                     if(!(_loc2_ && Boolean(this)))
                     {
                        §§goto(addr0066);
                     }
                     §§goto(addr0075);
                  }
                  addr0066:
                  this.taskIcon.dynaLibName = "gui_popups_questPopup";
                  §§goto(addr0063);
               }
               addr0063:
               §§goto(addr005f);
            }
            addr005f:
            if(_loc3_ || Boolean(param1))
            {
               addr0075:
               this.setStepDetailText(true);
            }
            return;
         }
         §§goto(addr0028);
      }
      
      private function stepInstantFinishButton_rollOutHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.setState();
            if(!(_loc3_ && Boolean(this)))
            {
               this.setIcon();
               if(!(_loc3_ && Boolean(this)))
               {
                  this.setStepDetailText();
               }
            }
         }
      }
      
      private function setStepLabel() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         if(!_loc4_)
         {
            §§push(this._data);
            if(_loc3_ || _loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(this._data);
                     if(!(_loc4_ && _loc3_))
                     {
                        addr0056:
                        §§push(§§pop().stepIndex);
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           §§push(§§pop());
                           if(!_loc4_)
                           {
                              _loc1_ = §§pop();
                              if(_loc3_)
                              {
                                 §§push(this._data);
                                 if(!_loc4_)
                                 {
                                    addr007d:
                                    §§push(§§pop().numIndices);
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop());
                                       if(_loc3_)
                                       {
                                          §§goto(addr008c);
                                       }
                                    }
                                    §§goto(addr00ac);
                                 }
                                 §§goto(addr009f);
                              }
                              §§goto(addr010f);
                           }
                           addr008c:
                           _loc2_ = §§pop();
                           if(!(_loc4_ && _loc3_))
                           {
                              addr009f:
                              if(this._data.isUpgrade)
                              {
                                 if(_loc3_)
                                 {
                                    addr00ac:
                                    addr00ab:
                                    if(_loc1_ == 0)
                                    {
                                       if(!(_loc4_ && Boolean(_loc2_)))
                                       {
                                          addr00ce:
                                          §§push(this.stepLabel);
                                          if(_loc3_)
                                          {
                                             §§push(LocaUtils.getString("rcl.booklayer.constructionLayer","rcl.booklayer.constructionLayer.step.label.unlock.upgrade.capital"));
                                             if(!(_loc4_ && Boolean(_loc2_)))
                                             {
                                                §§pop().text = §§pop();
                                                if(_loc3_ || Boolean(this))
                                                {
                                                   §§goto(addr0100);
                                                }
                                                else
                                                {
                                                   addr0113:
                                                   addr010f:
                                                   §§push(this.stepLabel);
                                                   §§push(LocaUtils);
                                                   §§push("rcl.booklayer.constructionLayer");
                                                   §§push("rcl.booklayer.constructionLayer.step.label.");
                                                   if(_loc3_ || Boolean(_loc1_))
                                                   {
                                                      if(this._data.isUpgrade)
                                                      {
                                                         if(_loc3_ || Boolean(this))
                                                         {
                                                            addr0141:
                                                            §§push("upgrade");
                                                            if(!(_loc4_ && Boolean(_loc1_)))
                                                            {
                                                               §§goto(addr0188);
                                                            }
                                                            §§goto(addr0187);
                                                         }
                                                         addr0188:
                                                         §§goto(addr0175);
                                                      }
                                                      else
                                                      {
                                                         §§push("construction");
                                                         if(!(_loc4_ && Boolean(_loc2_)))
                                                         {
                                                            addr0175:
                                                            addr018f:
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc4_ && Boolean(_loc1_)))
                                                            {
                                                               addr0187:
                                                               §§push(§§pop() + ".capital");
                                                            }
                                                            §§pop().text = §§pop().getString(§§pop(),§§pop(),[_loc1_,_loc2_]);
                                                            addr0191:
                                                            return;
                                                            §§push(§§pop());
                                                         }
                                                      }
                                                      §§goto(addr0187);
                                                   }
                                                   §§goto(addr0141);
                                                }
                                             }
                                             §§goto(addr018f);
                                          }
                                          §§goto(addr0113);
                                       }
                                       §§goto(addr0191);
                                    }
                                    §§goto(addr010f);
                                 }
                                 §§goto(addr00ce);
                              }
                              §§goto(addr010f);
                           }
                           §§goto(addr0100);
                        }
                        §§goto(addr00ac);
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr00ab);
               }
               §§goto(addr0191);
            }
            §§goto(addr0056);
         }
         addr0100:
      }
      
      private function setStepDetailText(param1:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:* = 0;
         var _loc3_:* = 1;
         if(!_loc4_)
         {
            §§push(this._data);
            if(!(_loc4_ && Boolean(_loc2_)))
            {
               if(§§pop())
               {
                  if(_loc5_ || Boolean(this))
                  {
                     §§push(this._data);
                     if(!_loc4_)
                     {
                        §§push(§§pop().progressTarget);
                        if(!_loc4_)
                        {
                           §§push(§§pop());
                           if(!(_loc4_ && Boolean(_loc3_)))
                           {
                              _loc3_ = §§pop();
                              if(_loc5_)
                              {
                                 §§push(int(Math.min(this._data.currentProgress,_loc3_)));
                                 if(!_loc4_)
                                 {
                                    _loc2_ = §§pop();
                                    if(_loc5_ || Boolean(this))
                                    {
                                       addr0092:
                                       §§push(param1);
                                       if(_loc5_ || Boolean(_loc3_))
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc5_)
                                             {
                                                addr00ab:
                                                §§push(_loc3_);
                                                if(_loc5_ || Boolean(_loc2_))
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc4_ && Boolean(this)))
                                                   {
                                                      addr00c9:
                                                      _loc2_ = §§pop();
                                                      if(!_loc4_)
                                                      {
                                                         addr00d1:
                                                         addr00d0:
                                                         §§push(_loc2_ == _loc3_);
                                                         if(_loc5_ || Boolean(this))
                                                         {
                                                            addr00e1:
                                                            var _temp_10:* = §§pop();
                                                            §§push(_temp_10);
                                                            §§push(_temp_10);
                                                            if(!_loc4_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     §§pop();
                                                                     if(!(_loc4_ && Boolean(_loc2_)))
                                                                     {
                                                                        §§push(this._data);
                                                                        if(!(_loc4_ && param1))
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(!_loc4_)
                                                                           {
                                                                              var _temp_13:* = §§pop();
                                                                              §§push(_temp_13);
                                                                              §§push(_temp_13);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 addr012e:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!(_loc4_ && Boolean(_loc2_)))
                                                                                    {
                                                                                       addr0140:
                                                                                       §§pop();
                                                                                       if(!(_loc4_ && param1))
                                                                                       {
                                                                                          addr014f:
                                                                                          §§push(this._data);
                                                                                          if(!(_loc4_ && Boolean(_loc2_)))
                                                                                          {
                                                                                             addr0161:
                                                                                             §§push(§§pop().state);
                                                                                             if(!(_loc4_ && Boolean(this)))
                                                                                             {
                                                                                                §§push(ConstructionLayerStepVo.STATE_AVAILABLE);
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   §§push(§§pop() == §§pop());
                                                                                                   if(!(_loc4_ && param1))
                                                                                                   {
                                                                                                      addr018d:
                                                                                                      var _temp_19:* = §§pop();
                                                                                                      addr018e:
                                                                                                      §§push(_temp_19);
                                                                                                      if(!_temp_19)
                                                                                                      {
                                                                                                         if(_loc5_ || param1)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            if(!(_loc4_ && Boolean(_loc3_)))
                                                                                                            {
                                                                                                               addr01bc:
                                                                                                               addr01b6:
                                                                                                               addr01b3:
                                                                                                               addr01c5:
                                                                                                               addr01af:
                                                                                                               §§push(this._data.state == ConstructionLayerStepVo.STATE_DONE);
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  addr01c3:
                                                                                                                  §§push(§§pop());
                                                                                                               }
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(_loc5_ || param1)
                                                                                                                  {
                                                                                                                     addr01d7:
                                                                                                                     §§push(this.resourceLabel);
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        §§push("questTaskDone");
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           §§pop().styleName = §§pop();
                                                                                                                           if(_loc4_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           addr022d:
                                                                                                                           addr0231:
                                                                                                                           addr0246:
                                                                                                                           §§push(this.resourceLabel);
                                                                                                                           §§push(_loc2_ + " / ");
                                                                                                                           if(!(_loc4_ && Boolean(this)))
                                                                                                                           {
                                                                                                                              §§push(§§pop() + _loc3_);
                                                                                                                           }
                                                                                                                           §§pop().text = §§pop();
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr021d:
                                                                                                                           §§pop().styleName = §§pop();
                                                                                                                           if(_loc5_ || Boolean(_loc2_))
                                                                                                                           {
                                                                                                                              §§goto(addr022d);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        return;
                                                                                                                     }
                                                                                                                     §§goto(addr0231);
                                                                                                                  }
                                                                                                                  §§goto(addr022d);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§push(this.resourceLabel);
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     §§push("taskLabelActiveNew");
                                                                                                                     if(_loc5_ || param1)
                                                                                                                     {
                                                                                                                        §§goto(addr021d);
                                                                                                                     }
                                                                                                                     §§goto(addr0246);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr0231);
                                                                                                            }
                                                                                                            §§goto(addr022d);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr01c3);
                                                                                                }
                                                                                                §§goto(addr01bc);
                                                                                             }
                                                                                             §§goto(addr01b6);
                                                                                          }
                                                                                          §§goto(addr01b3);
                                                                                       }
                                                                                       §§goto(addr022d);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr01c5);
                                                                              }
                                                                              §§goto(addr018e);
                                                                           }
                                                                           §§goto(addr018d);
                                                                        }
                                                                        §§goto(addr0161);
                                                                     }
                                                                     §§goto(addr014f);
                                                                  }
                                                                  §§goto(addr0140);
                                                               }
                                                               §§goto(addr01c5);
                                                            }
                                                            §§goto(addr012e);
                                                         }
                                                         §§goto(addr01c5);
                                                      }
                                                      §§goto(addr01af);
                                                   }
                                                   §§goto(addr00d1);
                                                }
                                                §§goto(addr00c9);
                                             }
                                             §§goto(addr01d7);
                                          }
                                          §§goto(addr00d0);
                                       }
                                       §§goto(addr00e1);
                                    }
                                    §§goto(addr01d7);
                                 }
                                 §§goto(addr00c9);
                              }
                              §§goto(addr014f);
                           }
                           §§goto(addr00d1);
                        }
                        §§goto(addr00c9);
                     }
                     §§goto(addr0161);
                  }
                  §§goto(addr014f);
               }
               §§goto(addr0092);
            }
            §§goto(addr01b3);
         }
         §§goto(addr00ab);
      }
      
      private function setTimer() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            if(this._data.state == ConstructionLayerStepVo.STATE_RUNNING)
            {
               if(_loc2_ || _loc2_)
               {
                  addr0046:
                  this.runningTimerBar.data = this._data.timerBarData;
                  if(!(_loc1_ && _loc2_))
                  {
                     §§push(this.runningTimerBarLabel);
                     §§push(LocaUtils);
                     §§push("rcl.booklayer.constructionLayer");
                     §§push("rcl.booklayer.constructionLayer.step.running.");
                     if(_loc2_)
                     {
                        if(this._data.isUpgrade)
                        {
                           §§goto(addr00a7);
                        }
                        else
                        {
                           §§push("construction");
                        }
                        §§goto(addr00a5);
                     }
                     addr00a7:
                     if(_loc2_)
                     {
                        §§push("upgrade" + (_loc2_ || _loc1_ ? §§pop() : §§pop()));
                     }
                     §§pop().text = §§pop().getString(§§pop(),§§pop());
                     §§goto(addr00ac);
                  }
               }
            }
            addr00ac:
            return;
         }
         §§goto(addr0046);
      }
      
      private function setDurationText() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            if(this._data)
            {
               if(_loc1_)
               {
                  addr0034:
                  this.durationLabel.text = LocaUtils.getDuration(this._data.duration / 1000);
               }
            }
            return;
         }
         §§goto(addr0034);
      }
      
      private function setStepInstantFinishLabel() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:* = NaN;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this._data);
            if(!(_loc3_ && Boolean(this)))
            {
               if(§§pop())
               {
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     §§push(this._data);
                     if(_loc2_ || _loc2_)
                     {
                        §§push(§§pop().instantFinishCost);
                        if(_loc2_ || _loc3_)
                        {
                           §§push(§§pop());
                           if(_loc2_)
                           {
                              _loc1_ = §§pop();
                              if(!_loc3_)
                              {
                                 addr0073:
                                 §§push(this._data);
                                 if(!_loc3_)
                                 {
                                    addr007c:
                                    §§push(§§pop().displayInstantButton);
                                    if(!_loc3_)
                                    {
                                       §§push(§§pop());
                                       if(_loc2_)
                                       {
                                          var _temp_6:* = §§pop();
                                          §§push(_temp_6);
                                          if(_temp_6)
                                          {
                                             if(!_loc3_)
                                             {
                                                addr0094:
                                                §§pop();
                                                if(_loc2_)
                                                {
                                                   addr00ac:
                                                   addr009b:
                                                   §§push(_loc1_ == 0);
                                                   if(_loc2_ || Boolean(_loc1_))
                                                   {
                                                      addr00ab:
                                                      §§push(!§§pop());
                                                   }
                                                   if(§§pop())
                                                   {
                                                      if(_loc2_ || Boolean(this))
                                                      {
                                                         §§push(this.stepInstantFinishLabel);
                                                         §§push(LocaUtils);
                                                         §§push("rcl.booklayer.constructionLayer");
                                                         §§push("rcl.booklayer.constructionLayer.step.instantFinish.");
                                                         if(_loc2_ || Boolean(this))
                                                         {
                                                            if(this._data.isUpgrade)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  addr00e7:
                                                                  §§push("upgrade" + (!(_loc3_ && Boolean(this)) ? §§pop() : §§pop()));
                                                               }
                                                               §§pop().text = §§pop().getString(§§pop(),§§pop(),[_loc1_]);
                                                               if(_loc2_)
                                                               {
                                                                  §§push(this.stepInstantFinishButton);
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     §§push(LocaUtils);
                                                                     §§push("rcl.booklayer.constructionLayer");
                                                                     §§push("rcl.booklayer.constructionLayer.button.tooltip.instantFinishStep.");
                                                                     if(!(_loc3_ && _loc2_))
                                                                     {
                                                                        if(this._data.isUpgrade)
                                                                        {
                                                                           if(_loc2_ || Boolean(this))
                                                                           {
                                                                              addr014c:
                                                                              §§push("upgrade" + (!(_loc3_ && Boolean(_loc1_)) ? §§pop() : §§pop()));
                                                                           }
                                                                           §§pop().toolTip = §§pop().getString(§§pop(),§§pop(),[_loc1_]);
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§push(this.stepInstantFinishButton);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 §§push(true);
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    §§pop().visible = §§pop();
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       addr0196:
                                                                                       §§push(this.stepInstantFinishButton);
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          addr019f:
                                                                                          §§push(true);
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             §§pop().includeInLayout = §§pop();
                                                                                             if(!(_loc3_ && Boolean(_loc1_)))
                                                                                             {
                                                                                                addr01b4:
                                                                                                §§push(this.stepInstantFinishButton);
                                                                                                if(_loc2_ || Boolean(_loc1_))
                                                                                                {
                                                                                                   §§push(_loc1_);
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      §§pop().priceToConfirm = §§pop();
                                                                                                      if(_loc2_ || Boolean(this))
                                                                                                      {
                                                                                                         addr01df:
                                                                                                         if(this._data.state != ConstructionLayerStepVo.STATE_UNAVAILABLE)
                                                                                                         {
                                                                                                            if(_loc2_ || Boolean(this))
                                                                                                            {
                                                                                                               addr01f9:
                                                                                                               §§push(this.stepInstantFinishButton);
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  addr0203:
                                                                                                                  §§push(_loc1_ > this._data.rcStock);
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     addr0210:
                                                                                                                     §§pop().showPlus = §§pop();
                                                                                                                     if(_loc2_)
                                                                                                                     {
                                                                                                                        addr0218:
                                                                                                                        §§push(this.stepInstantFinishButton);
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           §§push(!this.stepInstantFinishButton.showPlus);
                                                                                                                           if(_loc2_ || Boolean(this))
                                                                                                                           {
                                                                                                                              §§pop().showSparkle = §§pop();
                                                                                                                              if(_loc3_)
                                                                                                                              {
                                                                                                                                 addr02d4:
                                                                                                                                 this.stepInstantFinishButton.includeInLayout = false;
                                                                                                                                 addr02cf:
                                                                                                                                 addr02d3:
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr02c0:
                                                                                                                              §§pop().visible = §§pop();
                                                                                                                              if(_loc2_ || Boolean(this))
                                                                                                                              {
                                                                                                                                 §§goto(addr02cf);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr02d6);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr02b2:
                                                                                                                           §§push(false);
                                                                                                                           if(!(_loc3_ && Boolean(_loc1_)))
                                                                                                                           {
                                                                                                                              §§goto(addr02c0);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr02d4);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr0261:
                                                                                                                     §§pop().showPlus = §§pop();
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        §§push(this.stepInstantFinishButton);
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           §§push(true);
                                                                                                                           if(_loc2_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§pop().showSparkle = §§pop();
                                                                                                                              if(!(_loc2_ || Boolean(this)))
                                                                                                                              {
                                                                                                                                 §§goto(addr02cf);
                                                                                                                              }
                                                                                                                              §§goto(addr02d6);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr02b2);
                                                                                                                        }
                                                                                                                        §§goto(addr02d4);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr02cf);
                                                                                                               }
                                                                                                               §§goto(addr02d3);
                                                                                                            }
                                                                                                            §§goto(addr02d6);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(this.stepInstantFinishButton);
                                                                                                            if(!(_loc3_ && _loc3_))
                                                                                                            {
                                                                                                               addr0253:
                                                                                                               §§push(false);
                                                                                                               if(!(_loc3_ && _loc2_))
                                                                                                               {
                                                                                                                  §§goto(addr0261);
                                                                                                               }
                                                                                                               §§goto(addr02c0);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr02d3);
                                                                                                      }
                                                                                                      §§goto(addr02cf);
                                                                                                   }
                                                                                                   §§goto(addr0203);
                                                                                                }
                                                                                                §§goto(addr02d3);
                                                                                             }
                                                                                             §§goto(addr02d6);
                                                                                          }
                                                                                          §§goto(addr0261);
                                                                                       }
                                                                                       §§goto(addr02d3);
                                                                                    }
                                                                                    §§goto(addr01f9);
                                                                                 }
                                                                                 §§goto(addr0210);
                                                                              }
                                                                              §§goto(addr0253);
                                                                           }
                                                                           §§goto(addr01f9);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push("construction");
                                                                        }
                                                                        §§goto(addr0171);
                                                                     }
                                                                     §§goto(addr014c);
                                                                  }
                                                                  §§goto(addr019f);
                                                               }
                                                               §§goto(addr0196);
                                                            }
                                                            else
                                                            {
                                                               §§push("construction");
                                                            }
                                                            §§goto(addr00ff);
                                                         }
                                                         §§goto(addr00e7);
                                                      }
                                                      §§goto(addr0218);
                                                   }
                                                   else
                                                   {
                                                      §§push(this.stepInstantFinishButton);
                                                      if(_loc2_ || _loc3_)
                                                      {
                                                         §§goto(addr02b2);
                                                      }
                                                   }
                                                   §§goto(addr02d3);
                                                }
                                                §§goto(addr0196);
                                             }
                                          }
                                          §§goto(addr00ac);
                                       }
                                       §§goto(addr0094);
                                    }
                                    §§goto(addr00ab);
                                 }
                                 §§goto(addr01df);
                              }
                              §§goto(addr01b4);
                           }
                        }
                        §§goto(addr009b);
                     }
                     §§goto(addr007c);
                  }
               }
               addr02d6:
               return;
            }
            §§goto(addr007c);
         }
         §§goto(addr0073);
      }
      
      private function setStartButton() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:int = 0;
         var _loc2_:* = 1;
         if(_loc4_)
         {
            §§push(this._data);
            if(!_loc3_)
            {
               §§push(§§pop());
               if(_loc4_ || Boolean(_loc1_))
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(_temp_3)
                  {
                     if(!_loc3_)
                     {
                        addr0042:
                        §§pop();
                        if(_loc4_ || _loc3_)
                        {
                           §§push(this._data);
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              §§goto(addr0078);
                           }
                           §§goto(addr0085);
                        }
                        §§goto(addr0081);
                     }
                  }
                  addr0078:
                  §§goto(addr006e);
               }
               §§goto(addr0042);
            }
            addr006e:
            if(§§pop().state == ConstructionLayerStepVo.STATE_AVAILABLE)
            {
               if(!_loc3_)
               {
                  addr0085:
                  addr0081:
                  §§push(this._data.progressTarget);
                  if(_loc4_ || _loc3_)
                  {
                     §§push(§§pop());
                     if(_loc4_)
                     {
                        addr009d:
                        _loc2_ = §§pop();
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           §§goto(addr00c6);
                        }
                        §§goto(addr00d5);
                     }
                     addr00c6:
                     _loc1_ = Math.min(this._data.currentProgress,_loc2_);
                     §§goto(addr00b7);
                  }
                  §§goto(addr009d);
               }
               addr00b7:
               if(_loc4_ || _loc3_)
               {
                  addr00d5:
                  this.startButton.enabled = _loc1_ >= _loc2_;
               }
               §§goto(addr00df);
            }
            addr00df:
            return;
         }
         §§goto(addr00b7);
      }
      
      private function startButton_clickHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.startButton.enabled = false;
            if(!_loc3_)
            {
               addr0024:
               dispatchEvent(new Event(ConstructionLayerMediator.START_STEP_NORMAL,true,true));
            }
            return;
         }
         §§goto(addr0024);
      }
      
      private function stepInstantFinishButton_clickHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this.stepInstantFinishButton.enabled = false;
            if(!_loc3_)
            {
               this.startButton.enabled = false;
               if(!_loc3_)
               {
                  addr0045:
                  dispatchEvent(new Event(ConstructionLayerMediator.INSTANT_FINISH_STEP,true,true));
               }
               §§goto(addr0057);
            }
            §§goto(addr0045);
         }
         addr0057:
      }
      
      private function updateCostInterval() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(this._data.instantFinishCost);
         if(_loc3_ || Boolean(this))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            §§push(this._data);
            §§push(this._data.currentTime);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop() + 1000);
            }
            §§pop().currentTime = §§pop();
            if(!(_loc2_ && _loc1_))
            {
               this.setStepInstantFinishLabel();
               if(_loc3_)
               {
                  §§goto(addr0079);
               }
               §§goto(addr00a0);
            }
            §§goto(addr0095);
         }
         addr0079:
         if(_loc1_ != this._data.instantFinishCost)
         {
            if(_loc3_)
            {
               addr0095:
               this._toolTipDirty = true;
               if(!_loc2_)
               {
                  §§goto(addr00a0);
               }
               §§goto(addr00b5);
            }
            addr00a0:
            if(this._toolTipVisible)
            {
               if(_loc3_ || _loc1_)
               {
                  addr00b5:
                  this.toolTipShowHandler(this._toolTipEvent);
               }
            }
            §§goto(addr00bf);
         }
         addr00bf:
      }
      
      private function removedFromStageHandler(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(this._hasInterval)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  addr002d:
                  clearInterval(this._intervalId);
               }
            }
            return;
         }
         §§goto(addr002d);
      }
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §§push(this.stepInstantFinishButton);
            if(!_loc3_)
            {
               §§pop().addEventListener(ToolTipEvent.TOOL_TIP_SHOW,this.toolTipShowHandler);
               if(_loc2_ || _loc3_)
               {
                  addr004f:
                  this.stepInstantFinishButton.addEventListener(ToolTipEvent.TOOL_TIP_HIDE,this.toolTipHideHandler);
               }
               §§goto(addr005e);
            }
            §§goto(addr004f);
         }
         addr005e:
      }
      
      protected function toolTipHideHandler(param1:ToolTipEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._toolTipVisible = false;
         }
      }
      
      private function toolTipShowHandler(param1:ToolTipEvent) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:* = NaN;
         if(_loc4_ || _loc3_)
         {
            this._toolTipVisible = true;
            if(!_loc5_)
            {
               this._toolTipEvent = param1;
               if(_loc4_)
               {
                  if(this._toolTipDirty)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        §§push(this._data.instantFinishCost);
                        if(_loc4_ || Boolean(this))
                        {
                           §§push(§§pop());
                        }
                        _loc2_ = §§pop();
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           param1.toolTip.text = this.stepInstantFinishButton.toolTip = LocaUtils.getString("rcl.booklayer.constructionLayer","rcl.booklayer.constructionLayer.button.tooltip.instantFinishStep." + (this._data.isUpgrade ? "upgrade" : "construction"),[_loc2_]);
                           addr0082:
                        }
                     }
                  }
               }
               §§goto(addr00c7);
            }
            §§goto(addr0082);
         }
         addr00c7:
      }
      
      private function _ConstructionStepDetailComponent_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  _loc1_.minHeight = 1;
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.maxHeight = 268;
                     if(_loc2_)
                     {
                        _loc1_.minWidth = 1;
                        if(_loc2_ || _loc2_)
                        {
                           _loc1_.gap = 0;
                           if(!_loc3_)
                           {
                              _loc1_.filters = [this._ConstructionStepDetailComponent_GlowFilter1_c(),this._ConstructionStepDetailComponent_DropShadowFilter1_c()];
                              if(!_loc3_)
                              {
                                 addr00a7:
                                 _loc1_.mxmlContent = [this._ConstructionStepDetailComponent_Group2_c(),this._ConstructionStepDetailComponent_Rect3_c()];
                                 if(!_loc3_)
                                 {
                                    addr00bd:
                                    if(!_loc1_.document)
                                    {
                                       if(_loc2_ || _loc3_)
                                       {
                                          addr00d1:
                                          _loc1_.document = this;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr00d5);
                           }
                           §§goto(addr00bd);
                        }
                        §§goto(addr00a7);
                     }
                     addr00d5:
                     return _loc1_;
                  }
                  §§goto(addr00d1);
               }
               §§goto(addr00a7);
            }
         }
         §§goto(addr00bd);
      }
      
      private function _ConstructionStepDetailComponent_GlowFilter1_c() : GlowFilter
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:GlowFilter = new GlowFilter();
         if(_loc2_ || _loc2_)
         {
            _loc1_.inner = false;
            if(_loc2_ || _loc3_)
            {
               _loc1_.strength = 1;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.blurX = 1;
                  addr005b:
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr0079:
                     _loc1_.blurY = 1;
                     if(_loc2_ || _loc2_)
                     {
                        _loc1_.color = 16777215;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0079);
         }
         §§goto(addr005b);
      }
      
      private function _ConstructionStepDetailComponent_DropShadowFilter1_c() : DropShadowFilter
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DropShadowFilter = new DropShadowFilter();
         if(_loc2_ || _loc3_)
         {
            _loc1_.angle = 90;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.distance = 1;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.strength = 4;
                  addr005b:
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.alpha = 0.4;
                     if(_loc2_ || _loc2_)
                     {
                        addr008f:
                        _loc1_.color = 0;
                     }
                     §§goto(addr0095);
                  }
                  §§goto(addr008f);
               }
               §§goto(addr0095);
            }
            §§goto(addr005b);
         }
         addr0095:
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.width = 60;
            if(_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc3_ && _loc3_))
               {
                  addr005c:
                  _loc1_.mxmlContent = [this._ConstructionStepDetailComponent_Rect1_c(),this._ConstructionStepDetailComponent_Rect2_c()];
                  if(!_loc3_)
                  {
                     §§goto(addr0072);
                  }
               }
               §§goto(addr007e);
            }
            §§goto(addr005c);
         }
         addr0072:
         if(!_loc1_.document)
         {
            if(_loc2_)
            {
               addr007e:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_Rect1_c() : Rect
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Rect = new Rect();
         if(!_loc2_)
         {
            _loc1_.left = 3;
            if(_loc3_)
            {
               _loc1_.right = 1;
               if(_loc3_)
               {
                  _loc1_.top = 1;
                  if(!_loc2_)
                  {
                     _loc1_.bottom = 1;
                     if(!_loc2_)
                     {
                        _loc1_.bottomLeftRadiusX = 10;
                        if(_loc3_ || Boolean(this))
                        {
                           addr005f:
                           _loc1_.bottomLeftRadiusY = 10;
                           if(_loc3_)
                           {
                              _loc1_.topLeftRadiusX = 10;
                              if(!(_loc2_ && _loc2_))
                              {
                                 _loc1_.topLeftRadiusY = 10;
                                 if(!_loc2_)
                                 {
                                    _loc1_.percentHeight = 100;
                                    if(_loc3_)
                                    {
                                       addr009c:
                                       _loc1_.width = 60;
                                       if(_loc3_)
                                       {
                                          addr00a6:
                                          _loc1_.minHeight = 1;
                                          if(_loc3_)
                                          {
                                             _loc1_.maxHeight = 268;
                                             if(_loc3_ || _loc3_)
                                             {
                                                addr00d0:
                                                _loc1_.fill = this._ConstructionStepDetailComponent_LinearGradient1_c();
                                                if(_loc3_)
                                                {
                                                   addr00df:
                                                   _loc1_.filters = [this._ConstructionStepDetailComponent_GlowFilter2_i()];
                                                   if(!(_loc2_ && Boolean(_loc1_)))
                                                   {
                                                      addr00f8:
                                                      _loc1_.initialized(this,null);
                                                   }
                                                }
                                             }
                                             return _loc1_;
                                          }
                                          §§goto(addr00f8);
                                       }
                                       §§goto(addr00df);
                                    }
                                 }
                                 §§goto(addr00a6);
                              }
                           }
                           §§goto(addr009c);
                        }
                        §§goto(addr00d0);
                     }
                     §§goto(addr005f);
                  }
                  §§goto(addr00f8);
               }
               §§goto(addr00df);
            }
            §§goto(addr005f);
         }
         §§goto(addr009c);
      }
      
      private function _ConstructionStepDetailComponent_LinearGradient1_c() : LinearGradient
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LinearGradient = new LinearGradient();
         if(!_loc2_)
         {
            _loc1_.rotation = 90;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.entries = [this._ConstructionStepDetailComponent_GradientEntry1_i(),this._ConstructionStepDetailComponent_GradientEntry2_i()];
            }
         }
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_GradientEntry1_i() : GradientEntry
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:GradientEntry = new GradientEntry();
         if(!_loc2_)
         {
            this._ConstructionStepDetailComponent_GradientEntry1 = _loc1_;
            if(!_loc2_)
            {
               addr0038:
               BindingManager.executeBindings(this,"_ConstructionStepDetailComponent_GradientEntry1",this._ConstructionStepDetailComponent_GradientEntry1);
            }
            return _loc1_;
         }
         §§goto(addr0038);
      }
      
      private function _ConstructionStepDetailComponent_GradientEntry2_i() : GradientEntry
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:GradientEntry = new GradientEntry();
         if(!(_loc3_ && Boolean(this)))
         {
            this._ConstructionStepDetailComponent_GradientEntry2 = _loc1_;
            if(_loc2_ || Boolean(_loc1_))
            {
               BindingManager.executeBindings(this,"_ConstructionStepDetailComponent_GradientEntry2",this._ConstructionStepDetailComponent_GradientEntry2);
            }
         }
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_GlowFilter2_i() : GlowFilter
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:GlowFilter = new GlowFilter();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.inner = true;
            if(_loc2_)
            {
               §§goto(addr0033);
            }
            §§goto(addr003e);
         }
         addr0033:
         _loc1_.strength = 1;
         if(_loc2_)
         {
            addr003e:
            _loc1_.quality = 3;
            if(_loc2_ || _loc2_)
            {
               _loc1_.blurX = 6;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.blurY = 6;
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr008e);
                  }
                  §§goto(addr00a0);
               }
               addr008e:
               this._ConstructionStepDetailComponent_GlowFilter2 = _loc1_;
               if(_loc2_ || Boolean(this))
               {
                  addr00a0:
                  BindingManager.executeBindings(this,"_ConstructionStepDetailComponent_GlowFilter2",this._ConstructionStepDetailComponent_GlowFilter2);
               }
               §§goto(addr00ad);
            }
         }
         addr00ad:
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_Rect2_c() : Rect
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Rect = new Rect();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.left = 2;
            if(_loc2_)
            {
               _loc1_.right = 0;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.top = 0;
                  if(_loc2_)
                  {
                     _loc1_.bottom = 0;
                     if(!_loc3_)
                     {
                        _loc1_.bottomLeftRadiusX = 10;
                        if(_loc2_)
                        {
                           addr0067:
                           _loc1_.bottomLeftRadiusY = 10;
                           if(_loc2_)
                           {
                              addr007e:
                              _loc1_.topLeftRadiusX = 10;
                              if(_loc2_)
                              {
                                 addr0089:
                                 _loc1_.topLeftRadiusY = 10;
                                 if(_loc2_ || _loc3_)
                                 {
                                    §§goto(addr009c);
                                 }
                                 §§goto(addr00ae);
                              }
                              §§goto(addr009c);
                           }
                           §§goto(addr00fb);
                        }
                        addr009c:
                        _loc1_.percentHeight = 100;
                        if(!(_loc3_ && _loc2_))
                        {
                           addr00ae:
                           _loc1_.width = 60;
                           if(!_loc3_)
                           {
                              _loc1_.minHeight = 1;
                              if(_loc2_ || _loc2_)
                              {
                                 addr00d8:
                                 _loc1_.maxHeight = 268;
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§goto(addr00ec);
                                 }
                                 §§goto(addr00fb);
                              }
                              addr00ec:
                              _loc1_.stroke = this._ConstructionStepDetailComponent_SolidColorStroke1_i();
                              if(!_loc3_)
                              {
                                 addr00fb:
                                 _loc1_.initialized(this,null);
                              }
                              §§goto(addr0102);
                           }
                           §§goto(addr00d8);
                        }
                        §§goto(addr0102);
                     }
                     §§goto(addr0067);
                  }
                  addr0102:
                  return _loc1_;
               }
               §§goto(addr0089);
            }
            §§goto(addr009c);
         }
         §§goto(addr007e);
      }
      
      private function _ConstructionStepDetailComponent_SolidColorStroke1_i() : SolidColorStroke
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.weight = 1;
            if(!_loc3_)
            {
               this._ConstructionStepDetailComponent_SolidColorStroke1 = _loc1_;
               if(_loc2_)
               {
                  addr004b:
                  BindingManager.executeBindings(this,"_ConstructionStepDetailComponent_SolidColorStroke1",this._ConstructionStepDetailComponent_SolidColorStroke1);
               }
               §§goto(addr0058);
            }
            §§goto(addr004b);
         }
         addr0058:
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_Rect3_c() : Rect
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Rect = new Rect();
         if(!_loc2_)
         {
            _loc1_.left = 3;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.right = 1;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.top = 1;
                  if(!_loc2_)
                  {
                     _loc1_.bottom = 1;
                     if(!_loc2_)
                     {
                        _loc1_.bottomRightRadiusX = 10;
                        if(_loc3_)
                        {
                           addr0071:
                           _loc1_.bottomRightRadiusY = 10;
                           if(!_loc2_)
                           {
                              addr007c:
                              _loc1_.topRightRadiusX = 10;
                              if(_loc3_ || _loc2_)
                              {
                                 addr008f:
                                 _loc1_.topRightRadiusY = 10;
                                 if(_loc3_ || _loc2_)
                                 {
                                    _loc1_.percentHeight = 100;
                                    if(_loc3_)
                                    {
                                       _loc1_.percentWidth = 100;
                                       if(_loc3_)
                                       {
                                          addr00b6:
                                          _loc1_.minHeight = 1;
                                          if(!_loc2_)
                                          {
                                             _loc1_.maxHeight = 268;
                                             if(_loc3_ || _loc2_)
                                             {
                                                addr00e1:
                                                _loc1_.fill = this._ConstructionStepDetailComponent_LinearGradient2_c();
                                                if(_loc3_)
                                                {
                                                   addr00f0:
                                                   _loc1_.initialized(this,null);
                                                }
                                             }
                                          }
                                          §§goto(addr00f7);
                                       }
                                       §§goto(addr00e1);
                                    }
                                    addr00f7:
                                    return _loc1_;
                                 }
                              }
                              §§goto(addr00e1);
                           }
                           §§goto(addr00b6);
                        }
                     }
                  }
                  §§goto(addr00f0);
               }
               §§goto(addr008f);
            }
            §§goto(addr007c);
         }
         §§goto(addr0071);
      }
      
      private function _ConstructionStepDetailComponent_LinearGradient2_c() : LinearGradient
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LinearGradient = new LinearGradient();
         if(_loc2_ || _loc2_)
         {
            _loc1_.rotation = 90;
            if(_loc2_ || _loc3_)
            {
               addr004b:
               _loc1_.entries = [this._ConstructionStepDetailComponent_GradientEntry3_c(),this._ConstructionStepDetailComponent_GradientEntry4_c()];
            }
            return _loc1_;
         }
         §§goto(addr004b);
      }
      
      private function _ConstructionStepDetailComponent_GradientEntry3_c() : GradientEntry
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:GradientEntry = new GradientEntry();
         if(!_loc3_)
         {
            _loc1_.color = 16777215;
         }
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_GradientEntry4_c() : GradientEntry
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
      
      private function _ConstructionStepDetailComponent_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               addr003b:
               _loc1_.percentHeight = 100;
               if(!(_loc3_ && Boolean(this)))
               {
                  §§goto(addr0059);
               }
               §§goto(addr0083);
            }
            addr0059:
            _loc1_.mxmlContent = [this._ConstructionStepDetailComponent_Group3_c(),this._ConstructionStepDetailComponent_VGroup1_c()];
            if(_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     addr0083:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr003b);
      }
      
      private function _ConstructionStepDetailComponent_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.width = 60;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && _loc3_))
               {
                  addr005c:
                  _loc1_.mxmlContent = [this._ConstructionStepDetailComponent_BriskImageDynaLib1_i(),this._ConstructionStepDetailComponent_BriskImageDynaLib2_i()];
                  if(!_loc2_)
                  {
                     §§goto(addr0072);
                  }
                  §§goto(addr0086);
               }
               addr0072:
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr0086:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
            §§goto(addr0086);
         }
         §§goto(addr005c);
      }
      
      private function _ConstructionStepDetailComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.verticalCenter = 0;
            if(_loc2_)
            {
               _loc1_.horizontalCenter = 0;
               if(_loc2_)
               {
                  _loc1_.id = "taskIcon";
                  if(!(_loc3_ && _loc2_))
                  {
                     addr005f:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr0074:
                              this.taskIcon = _loc1_;
                              if(!_loc3_)
                              {
                                 addr007e:
                                 BindingManager.executeBindings(this,"taskIcon",this.taskIcon);
                              }
                              §§goto(addr008b);
                           }
                           §§goto(addr007e);
                        }
                        addr008b:
                        return _loc1_;
                     }
                     §§goto(addr0074);
                  }
               }
               §§goto(addr007e);
            }
            §§goto(addr005f);
         }
         §§goto(addr007e);
      }
      
      private function _ConstructionStepDetailComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.verticalCenter = -12;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.horizontalCenter = -10;
               if(_loc2_)
               {
                  _loc1_.visible = false;
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.dynaLibName = "gui_popups_questPopup";
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.dynaBmpSourceName = "icon_locked";
                        if(!_loc3_)
                        {
                           _loc1_.id = "_ConstructionStepDetailComponent_BriskImageDynaLib2";
                           if(_loc2_ || Boolean(this))
                           {
                              addr009c:
                              if(!_loc1_.document)
                              {
                                 if(!_loc3_)
                                 {
                                    addr00a8:
                                    _loc1_.document = this;
                                    if(!_loc3_)
                                    {
                                       §§goto(addr00b1);
                                    }
                                    §§goto(addr00bb);
                                 }
                              }
                              addr00b1:
                              this._ConstructionStepDetailComponent_BriskImageDynaLib2 = _loc1_;
                              if(_loc2_)
                              {
                                 addr00bb:
                                 BindingManager.executeBindings(this,"_ConstructionStepDetailComponent_BriskImageDynaLib2",this._ConstructionStepDetailComponent_BriskImageDynaLib2);
                              }
                              §§goto(addr00c8);
                           }
                           §§goto(addr00bb);
                        }
                        §§goto(addr00a8);
                     }
                     addr00c8:
                     return _loc1_;
                  }
               }
               §§goto(addr009c);
            }
         }
         §§goto(addr00bb);
      }
      
      private function _ConstructionStepDetailComponent_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.verticalAlign = "middle";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.percentHeight = 100;
               if(!_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(_loc3_)
                  {
                     §§goto(addr0068);
                  }
                  §§goto(addr008c);
               }
               §§goto(addr0078);
            }
            §§goto(addr008c);
         }
         addr0068:
         _loc1_.mxmlContent = [this._ConstructionStepDetailComponent_HGroup3_c()];
         if(_loc3_)
         {
            addr0078:
            if(!_loc1_.document)
            {
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr008c:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_HGroup3_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.verticalAlign = "bottom";
               if(_loc2_)
               {
                  §§goto(addr005d);
               }
               §§goto(addr0073);
            }
            addr005d:
            _loc1_.mxmlContent = [this._ConstructionStepDetailComponent_VGroup2_c(),this._ConstructionStepDetailComponent_HGroup6_c()];
            if(!_loc3_)
            {
               addr0073:
               if(!_loc1_.document)
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr0087:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0087);
      }
      
      private function _ConstructionStepDetailComponent_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.width = 280;
            if(_loc3_ || _loc3_)
            {
               _loc1_.verticalAlign = "middle";
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.gap = 5;
                  if(!_loc2_)
                  {
                     _loc1_.percentHeight = 100;
                     if(!_loc2_)
                     {
                        §§goto(addr006f);
                     }
                     §§goto(addr007a);
                  }
                  addr006f:
                  _loc1_.minHeight = 40;
                  if(!_loc2_)
                  {
                     _loc1_.mxmlContent = [this._ConstructionStepDetailComponent_LocaLabel1_i(),this._ConstructionStepDetailComponent_HGroup4_i(),this._ConstructionStepDetailComponent_HGroup5_i()];
                     addr007a:
                     if(_loc3_ || Boolean(this))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr00b5:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr00b9);
                     }
                     §§goto(addr00b5);
                  }
                  §§goto(addr00b9);
               }
            }
            §§goto(addr00b5);
         }
         addr00b9:
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.maxDisplayedLines = 1;
            if(_loc3_)
            {
               _loc1_.id = "stepLabel";
               if(_loc3_ || _loc2_)
               {
                  addr0054:
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           §§goto(addr007d);
                        }
                     }
                     §§goto(addr0087);
                  }
               }
               addr007d:
               this.stepLabel = _loc1_;
               if(_loc3_)
               {
                  addr0087:
                  BindingManager.executeBindings(this,"stepLabel",this.stepLabel);
               }
               §§goto(addr0094);
            }
            §§goto(addr0054);
         }
         addr0094:
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_HGroup4_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.gap = 2;
            if(!_loc3_)
            {
               _loc1_.verticalAlign = "middle";
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.height = 28;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0062:
                     _loc1_.mxmlContent = [this._ConstructionStepDetailComponent_BriskImageDynaLib3_i(),this._ConstructionStepDetailComponent_LocaLabel2_i(),this._ConstructionStepDetailComponent_BriskImageDynaLib4_i(),this._ConstructionStepDetailComponent_LocaLabel3_i()];
                     if(!_loc3_)
                     {
                        _loc1_.id = "_ConstructionStepDetailComponent_HGroup4";
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr0097:
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 _loc1_.document = this;
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    addr00bf:
                                    this._ConstructionStepDetailComponent_HGroup4 = _loc1_;
                                    if(_loc2_)
                                    {
                                       addr00c9:
                                       BindingManager.executeBindings(this,"_ConstructionStepDetailComponent_HGroup4",this._ConstructionStepDetailComponent_HGroup4);
                                    }
                                 }
                                 return _loc1_;
                              }
                              §§goto(addr00c9);
                           }
                           §§goto(addr00bf);
                        }
                     }
                  }
                  §§goto(addr00c9);
               }
               §§goto(addr0097);
            }
            §§goto(addr00c9);
         }
         §§goto(addr0062);
      }
      
      private function _ConstructionStepDetailComponent_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_resources_icons";
            if(_loc3_ || Boolean(_loc1_))
            {
               addr0043:
               _loc1_.id = "resourceIcon";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        §§goto(addr005a);
                     }
                  }
                  §§goto(addr0078);
               }
            }
            addr005a:
            _loc1_.document = this;
            if(!(_loc2_ && _loc2_))
            {
               addr0078:
               this.resourceIcon = _loc1_;
               if(_loc3_ || _loc3_)
               {
                  BindingManager.executeBindings(this,"resourceIcon",this.resourceIcon);
               }
            }
            return _loc1_;
         }
         §§goto(addr0043);
      }
      
      private function _ConstructionStepDetailComponent_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.maxDisplayedLines = 1;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.minWidth = 110;
               if(_loc2_)
               {
                  addr0046:
                  _loc1_.id = "resourceLabel";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           §§goto(addr0068);
                        }
                        §§goto(addr0083);
                     }
                     §§goto(addr0071);
                  }
               }
               addr0068:
               _loc1_.document = this;
               if(_loc2_)
               {
                  addr0071:
                  this.resourceLabel = _loc1_;
                  if(_loc2_ || Boolean(this))
                  {
                     addr0083:
                     BindingManager.executeBindings(this,"resourceLabel",this.resourceLabel);
                  }
               }
               return _loc1_;
            }
            §§goto(addr0046);
         }
         §§goto(addr0083);
      }
      
      private function _ConstructionStepDetailComponent_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopup";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "layer_clock_mini_icon";
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.id = "_ConstructionStepDetailComponent_BriskImageDynaLib4";
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr0067:
                           _loc1_.document = this;
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              §§goto(addr0084);
                           }
                           §§goto(addr0096);
                        }
                     }
                     addr0084:
                     this._ConstructionStepDetailComponent_BriskImageDynaLib4 = _loc1_;
                     if(_loc3_ || _loc3_)
                     {
                        addr0096:
                        BindingManager.executeBindings(this,"_ConstructionStepDetailComponent_BriskImageDynaLib4",this._ConstructionStepDetailComponent_BriskImageDynaLib4);
                     }
                     §§goto(addr00a3);
                  }
                  §§goto(addr0067);
               }
               addr00a3:
               return _loc1_;
            }
            §§goto(addr0096);
         }
         §§goto(addr0084);
      }
      
      private function _ConstructionStepDetailComponent_LocaLabel3_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.styleName = "taskLabelActiveNew";
            if(!_loc3_)
            {
               _loc1_.id = "durationLabel";
               if(_loc2_ || _loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        §§goto(addr006f);
                     }
                  }
               }
               §§goto(addr0078);
            }
         }
         addr006f:
         _loc1_.document = this;
         if(_loc2_)
         {
            addr0078:
            this.durationLabel = _loc1_;
            if(_loc2_ || _loc2_)
            {
               BindingManager.executeBindings(this,"durationLabel",this.durationLabel);
            }
         }
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_HGroup5_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc2_)
         {
            _loc1_.gap = 5;
            if(_loc3_)
            {
               _loc1_.verticalAlign = "middle";
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.height = 28;
                  if(!_loc2_)
                  {
                     _loc1_.mxmlContent = [this._ConstructionStepDetailComponent_TimerBarComponent1_i(),this._ConstructionStepDetailComponent_LocaLabel4_i()];
                     if(!_loc2_)
                     {
                        addr0074:
                        _loc1_.id = "_ConstructionStepDetailComponent_HGroup5";
                        if(!(_loc2_ && _loc2_))
                        {
                           addr0087:
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 §§goto(addr0093);
                              }
                              §§goto(addr00c4);
                           }
                           §§goto(addr00b2);
                        }
                        §§goto(addr00c4);
                     }
                     addr0093:
                     _loc1_.document = this;
                     if(!(_loc2_ && _loc2_))
                     {
                        addr00b2:
                        this._ConstructionStepDetailComponent_HGroup5 = _loc1_;
                        if(_loc3_ || _loc3_)
                        {
                           addr00c4:
                           BindingManager.executeBindings(this,"_ConstructionStepDetailComponent_HGroup5",this._ConstructionStepDetailComponent_HGroup5);
                        }
                     }
                     §§goto(addr00d1);
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0087);
            }
            §§goto(addr0074);
         }
         addr00d1:
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_TimerBarComponent1_i() : TimerBarComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:TimerBarComponent = new TimerBarComponent();
         if(_loc2_)
         {
            _loc1_.width = 140;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.showBoostButton = false;
               if(!(_loc3_ && _loc3_))
               {
                  §§goto(addr0054);
               }
               §§goto(addr0067);
            }
            addr0054:
            _loc1_.id = "runningTimerBar";
            if(_loc2_ || _loc3_)
            {
               addr0067:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr0089:
                     _loc1_.document = this;
                     if(!_loc3_)
                     {
                        §§goto(addr0092);
                     }
                     §§goto(addr00a4);
                  }
               }
            }
            addr0092:
            this.runningTimerBar = _loc1_;
            if(_loc2_ || _loc2_)
            {
               addr00a4:
               BindingManager.executeBindings(this,"runningTimerBar",this.runningTimerBar);
            }
            return _loc1_;
         }
         §§goto(addr0089);
      }
      
      private function _ConstructionStepDetailComponent_LocaLabel4_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.styleName = "taskLabelActiveNew";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.id = "runningTimerBarLabel";
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr0065:
                        _loc1_.document = this;
                        if(_loc2_ || _loc2_)
                        {
                           §§goto(addr0081);
                        }
                     }
                     §§goto(addr0093);
                  }
                  addr0081:
                  this.runningTimerBarLabel = _loc1_;
                  if(_loc2_ || _loc2_)
                  {
                     addr0093:
                     BindingManager.executeBindings(this,"runningTimerBarLabel",this.runningTimerBarLabel);
                  }
                  §§goto(addr00a0);
               }
               addr00a0:
               return _loc1_;
            }
         }
         §§goto(addr0065);
      }
      
      private function _ConstructionStepDetailComponent_HGroup6_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.verticalAlign = "middle";
            if(!(_loc2_ && _loc2_))
            {
               §§goto(addr0032);
            }
            §§goto(addr009d);
         }
         addr0032:
         _loc1_.horizontalAlign = "center";
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.gap = 0;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.percentWidth = 100;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.mxmlContent = [this._ConstructionStepDetailComponent_Group4_c()];
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr009d:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr00a1);
                  }
               }
               §§goto(addr009d);
            }
         }
         addr00a1:
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_Group4_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.width = 170;
            if(_loc2_)
            {
               _loc1_.height = 40;
               if(!(_loc3_ && _loc3_))
               {
                  addr005e:
                  _loc1_.mxmlContent = [this._ConstructionStepDetailComponent_HGroup7_c(),this._ConstructionStepDetailComponent_HGroup8_c()];
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr007c);
                  }
                  §§goto(addr0088);
               }
               addr007c:
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr0088:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr008c);
            }
            §§goto(addr005e);
         }
         addr008c:
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_HGroup7_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     §§goto(addr005b);
                  }
                  §§goto(addr0077);
               }
               addr005b:
               _loc1_.horizontalAlign = "center";
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr0077:
                  _loc1_.mxmlContent = [this._ConstructionStepDetailComponent_LocaLabel5_i()];
                  if(_loc2_ || _loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               §§goto(addr009f);
            }
            §§goto(addr0077);
         }
         addr009f:
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_LocaLabel5_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.visible = false;
            if(!_loc2_)
            {
               addr0027:
               _loc1_.maxDisplayedLines = 2;
               if(_loc3_)
               {
                  _loc1_.styleName = "rcTextnew";
                  if(!_loc2_)
                  {
                     addr003d:
                     _loc1_.maxWidth = 116;
                     if(!_loc2_)
                     {
                        _loc1_.maxHeight = 36;
                        if(_loc3_)
                        {
                           _loc1_.minWidth = 1;
                           if(_loc3_)
                           {
                              _loc1_.minHeight = 1;
                              if(_loc3_ || _loc3_)
                              {
                                 _loc1_.id = "rcPriceLabel";
                                 if(!_loc2_)
                                 {
                                    addr0094:
                                    if(!_loc1_.document)
                                    {
                                       if(_loc3_)
                                       {
                                          _loc1_.document = this;
                                          if(!_loc2_)
                                          {
                                             addr00a9:
                                             this.rcPriceLabel = _loc1_;
                                             if(_loc3_)
                                             {
                                                addr00b3:
                                                BindingManager.executeBindings(this,"rcPriceLabel",this.rcPriceLabel);
                                             }
                                          }
                                       }
                                       §§goto(addr00c0);
                                    }
                                    §§goto(addr00a9);
                                 }
                                 §§goto(addr00c0);
                              }
                              §§goto(addr0094);
                           }
                           §§goto(addr00c0);
                        }
                        §§goto(addr00b3);
                     }
                     §§goto(addr00a9);
                  }
                  §§goto(addr00b3);
               }
               §§goto(addr003d);
            }
            addr00c0:
            return _loc1_;
         }
         §§goto(addr0027);
      }
      
      private function _ConstructionStepDetailComponent_HGroup8_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.percentHeight = 100;
               if(!_loc2_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.mxmlContent = [this._ConstructionStepDetailComponent_MultistateButton1_i(),this._ConstructionStepDetailComponent_LocaLabel6_i(),this._ConstructionStepDetailComponent_MultistateButton2_i()];
                     if(!(_loc2_ && _loc2_))
                     {
                        addr008a:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr0096:
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
                  §§goto(addr009a);
               }
               §§goto(addr008a);
            }
            addr009a:
            return _loc1_;
         }
         §§goto(addr0096);
      }
      
      private function _ConstructionStepDetailComponent_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.width = 124;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr0059:
                  _loc1_.addEventListener("click",this.__startButton_click);
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.id = "startButton";
                     if(!_loc2_)
                     {
                        addr007c:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              §§goto(addr009c);
                           }
                           §§goto(addr00b7);
                        }
                        §§goto(addr00ad);
                     }
                     addr009c:
                     _loc1_.document = this;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr00ad:
                        this.startButton = _loc1_;
                        if(_loc3_)
                        {
                           addr00b7:
                           BindingManager.executeBindings(this,"startButton",this.startButton);
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr007c);
               }
               §§goto(addr00b7);
            }
         }
         §§goto(addr0059);
      }
      
      public function __startButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this.startButton_clickHandler(param1);
         }
      }
      
      private function _ConstructionStepDetailComponent_LocaLabel6_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.maxDisplayedLines = 2;
            if(!_loc2_)
            {
               _loc1_.width = 124;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.maxWidth = 124;
                  if(!_loc2_)
                  {
                     _loc1_.visible = false;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        §§goto(addr006f);
                     }
                     §§goto(addr008b);
                  }
                  §§goto(addr00b5);
               }
               §§goto(addr00d0);
            }
            addr006f:
            _loc1_.includeInLayout = false;
            if(_loc3_)
            {
               _loc1_.styleName = "blueThirteenCenter";
               if(_loc3_ || Boolean(this))
               {
                  addr008b:
                  _loc1_.id = "stepInstantFinishLabel";
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           addr00b5:
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              §§goto(addr00be);
                           }
                        }
                        §§goto(addr00d0);
                     }
                     addr00be:
                     this.stepInstantFinishLabel = _loc1_;
                     if(_loc3_ || _loc2_)
                     {
                        addr00d0:
                        BindingManager.executeBindings(this,"stepInstantFinishLabel",this.stepInstantFinishLabel);
                     }
                     §§goto(addr00dd);
                  }
               }
               §§goto(addr00b5);
            }
            addr00dd:
            return _loc1_;
         }
         §§goto(addr00be);
      }
      
      private function _ConstructionStepDetailComponent_MultistateButton2_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.width = 40;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.useConfirmation = true;
               if(!(_loc3_ && _loc3_))
               {
                  addr004d:
                  _loc1_.imageNameLeft = "dd_button_icon";
                  if(!_loc3_)
                  {
                     _loc1_.libNameLeft = "gui_resources_icons";
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.showSparkle = true;
                        if(_loc2_)
                        {
                           _loc1_.addEventListener("rollOver",this.__stepInstantFinishButton_rollOver);
                           if(!_loc3_)
                           {
                              addr0093:
                              _loc1_.addEventListener("rollOut",this.__stepInstantFinishButton_rollOut);
                              if(!_loc3_)
                              {
                                 _loc1_.addEventListener("click",this.__stepInstantFinishButton_click);
                                 if(!_loc3_)
                                 {
                                    addr00b5:
                                    _loc1_.id = "stepInstantFinishButton";
                                    if(_loc2_)
                                    {
                                       addr00c0:
                                       if(!_loc1_.document)
                                       {
                                          if(_loc2_)
                                          {
                                             addr00cc:
                                             _loc1_.document = this;
                                             if(!(_loc3_ && Boolean(_loc1_)))
                                             {
                                                addr00ea:
                                                this.stepInstantFinishButton = _loc1_;
                                                if(_loc2_ || Boolean(this))
                                                {
                                                   addr00fc:
                                                   BindingManager.executeBindings(this,"stepInstantFinishButton",this.stepInstantFinishButton);
                                                }
                                             }
                                          }
                                          §§goto(addr0109);
                                       }
                                    }
                                    §§goto(addr00ea);
                                 }
                                 §§goto(addr0109);
                              }
                              §§goto(addr00b5);
                           }
                           §§goto(addr00fc);
                        }
                        addr0109:
                        return _loc1_;
                     }
                     §§goto(addr00cc);
                  }
                  §§goto(addr00b5);
               }
               §§goto(addr00c0);
            }
            §§goto(addr004d);
         }
         §§goto(addr0093);
      }
      
      public function __stepInstantFinishButton_rollOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this.stepInstantFinishButton_rollOverHandler(param1);
         }
      }
      
      public function __stepInstantFinishButton_rollOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this.stepInstantFinishButton_rollOutHandler(param1);
         }
      }
      
      public function __stepInstantFinishButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this.stepInstantFinishButton_clickHandler(param1);
         }
      }
      
      public function ___ConstructionStepDetailComponent_Group1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.creationCompleteHandler(param1);
         }
      }
      
      public function ___ConstructionStepDetailComponent_Group1_removedFromStage(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.removedFromStageHandler(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _ConstructionStepDetailComponent_BriskImageDynaLib2() : BriskImageDynaLib
      {
         return this._912060846_ConstructionStepDetailComponent_BriskImageDynaLib2;
      }
      
      public function set _ConstructionStepDetailComponent_BriskImageDynaLib2(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._912060846_ConstructionStepDetailComponent_BriskImageDynaLib2;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._912060846_ConstructionStepDetailComponent_BriskImageDynaLib2 = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ConstructionStepDetailComponent_BriskImageDynaLib2",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0076);
      }
      
      [Bindable(event="propertyChange")]
      public function get _ConstructionStepDetailComponent_BriskImageDynaLib4() : BriskImageDynaLib
      {
         return this._912060848_ConstructionStepDetailComponent_BriskImageDynaLib4;
      }
      
      public function set _ConstructionStepDetailComponent_BriskImageDynaLib4(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._912060848_ConstructionStepDetailComponent_BriskImageDynaLib4;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._912060848_ConstructionStepDetailComponent_BriskImageDynaLib4 = param1;
                  if(_loc4_)
                  {
                     addr0059:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ConstructionStepDetailComponent_BriskImageDynaLib4",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0059);
            }
            addr007f:
            return;
         }
         §§goto(addr0070);
      }
      
      [Bindable(event="propertyChange")]
      public function get _ConstructionStepDetailComponent_GlowFilter2() : GlowFilter
      {
         return this._976486878_ConstructionStepDetailComponent_GlowFilter2;
      }
      
      public function set _ConstructionStepDetailComponent_GlowFilter2(param1:GlowFilter) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._976486878_ConstructionStepDetailComponent_GlowFilter2;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._976486878_ConstructionStepDetailComponent_GlowFilter2 = param1;
                  if(!_loc4_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ConstructionStepDetailComponent_GlowFilter2",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0076);
               }
               §§goto(addr0057);
            }
         }
         addr0076:
      }
      
      [Bindable(event="propertyChange")]
      public function get _ConstructionStepDetailComponent_GradientEntry1() : GradientEntry
      {
         return this._158433474_ConstructionStepDetailComponent_GradientEntry1;
      }
      
      public function set _ConstructionStepDetailComponent_GradientEntry1(param1:GradientEntry) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._158433474_ConstructionStepDetailComponent_GradientEntry1;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._158433474_ConstructionStepDetailComponent_GradientEntry1 = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     §§goto(addr005c);
                  }
                  §§goto(addr006c);
               }
               addr005c:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr006c:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ConstructionStepDetailComponent_GradientEntry1",_loc2_,param1));
                  }
               }
               §§goto(addr007b);
            }
            addr007b:
            return;
         }
         §§goto(addr006c);
      }
      
      [Bindable(event="propertyChange")]
      public function get _ConstructionStepDetailComponent_GradientEntry2() : GradientEntry
      {
         return this._158433473_ConstructionStepDetailComponent_GradientEntry2;
      }
      
      public function set _ConstructionStepDetailComponent_GradientEntry2(param1:GradientEntry) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._158433473_ConstructionStepDetailComponent_GradientEntry2;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  addr0055:
                  this._158433473_ConstructionStepDetailComponent_GradientEntry2 = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ConstructionStepDetailComponent_GradientEntry2",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr006e);
            }
            addr007d:
            return;
         }
         §§goto(addr0055);
      }
      
      [Bindable(event="propertyChange")]
      public function get _ConstructionStepDetailComponent_HGroup4() : HGroup
      {
         return this._677651186_ConstructionStepDetailComponent_HGroup4;
      }
      
      public function set _ConstructionStepDetailComponent_HGroup4(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._677651186_ConstructionStepDetailComponent_HGroup4;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._677651186_ConstructionStepDetailComponent_HGroup4 = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ConstructionStepDetailComponent_HGroup4",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0064);
      }
      
      [Bindable(event="propertyChange")]
      public function get _ConstructionStepDetailComponent_HGroup5() : HGroup
      {
         return this._677651185_ConstructionStepDetailComponent_HGroup5;
      }
      
      public function set _ConstructionStepDetailComponent_HGroup5(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._677651185_ConstructionStepDetailComponent_HGroup5;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._677651185_ConstructionStepDetailComponent_HGroup5 = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ConstructionStepDetailComponent_HGroup5",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr006c);
            }
         }
         addr007b:
      }
      
      [Bindable(event="propertyChange")]
      public function get _ConstructionStepDetailComponent_SolidColorStroke1() : SolidColorStroke
      {
         return this._499854830_ConstructionStepDetailComponent_SolidColorStroke1;
      }
      
      public function set _ConstructionStepDetailComponent_SolidColorStroke1(param1:SolidColorStroke) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._499854830_ConstructionStepDetailComponent_SolidColorStroke1;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._499854830_ConstructionStepDetailComponent_SolidColorStroke1 = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr0061:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ConstructionStepDetailComponent_SolidColorStroke1",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0061);
            }
         }
         addr007f:
      }
      
      [Bindable(event="propertyChange")]
      public function get durationLabel() : LocaLabel
      {
         return this._122527168durationLabel;
      }
      
      public function set durationLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._122527168durationLabel;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  addr0042:
                  this._122527168durationLabel = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     §§goto(addr0060);
                  }
                  §§goto(addr0078);
               }
               addr0060:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     addr0078:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"durationLabel",_loc2_,param1));
                  }
               }
               §§goto(addr0087);
            }
            addr0087:
            return;
         }
         §§goto(addr0042);
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._538174524rcPriceLabel = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rcPriceLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr007d);
                  }
               }
               §§goto(addr006e);
            }
            addr007d:
            return;
         }
         §§goto(addr005f);
      }
      
      [Bindable(event="propertyChange")]
      public function get resourceIcon() : BriskImageDynaLib
      {
         return this._384713305resourceIcon;
      }
      
      public function set resourceIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._384713305resourceIcon;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._384713305resourceIcon = param1;
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"resourceIcon",_loc2_,param1));
                        }
                     }
                     §§goto(addr0083);
                  }
                  §§goto(addr0074);
               }
            }
            addr0083:
            return;
         }
         §§goto(addr0074);
      }
      
      [Bindable(event="propertyChange")]
      public function get resourceLabel() : LocaLabel
      {
         return this._961487750resourceLabel;
      }
      
      public function set resourceLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._961487750resourceLabel;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._961487750resourceLabel = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"resourceLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0085);
                  }
               }
               §§goto(addr0076);
            }
            addr0085:
            return;
         }
         §§goto(addr0076);
      }
      
      [Bindable(event="propertyChange")]
      public function get runningTimerBar() : TimerBarComponent
      {
         return this._1101940077runningTimerBar;
      }
      
      public function set runningTimerBar(param1:TimerBarComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1101940077runningTimerBar;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._1101940077runningTimerBar = param1;
                  if(_loc3_)
                  {
                     addr0058:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"runningTimerBar",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007e);
               }
               §§goto(addr0058);
            }
            addr007e:
            return;
         }
         §§goto(addr0058);
      }
      
      [Bindable(event="propertyChange")]
      public function get runningTimerBarLabel() : LocaLabel
      {
         return this._399615367runningTimerBarLabel;
      }
      
      public function set runningTimerBarLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._399615367runningTimerBarLabel;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._399615367runningTimerBarLabel = param1;
                  if(!_loc4_)
                  {
                     addr005a:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"runningTimerBarLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0079);
               }
               §§goto(addr005a);
            }
            addr0079:
            return;
         }
         §§goto(addr005a);
      }
      
      [Bindable(event="propertyChange")]
      public function get startButton() : MultistateButton
      {
         return this._1943111220startButton;
      }
      
      public function set startButton(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1943111220startButton;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._1943111220startButton = param1;
                  if(_loc3_)
                  {
                     addr005c:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"startButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr007b);
                  }
               }
               §§goto(addr006c);
            }
            addr007b:
            return;
         }
         §§goto(addr005c);
      }
      
      [Bindable(event="propertyChange")]
      public function get stepInstantFinishButton() : MultistateButton
      {
         return this._428266566stepInstantFinishButton;
      }
      
      public function set stepInstantFinishButton(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._428266566stepInstantFinishButton;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._428266566stepInstantFinishButton = param1;
                  if(!_loc4_)
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stepInstantFinishButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr005d);
            }
         }
         addr007c:
      }
      
      [Bindable(event="propertyChange")]
      public function get stepInstantFinishLabel() : LocaLabel
      {
         return this._2083403412stepInstantFinishLabel;
      }
      
      public function set stepInstantFinishLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2083403412stepInstantFinishLabel;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._2083403412stepInstantFinishLabel = param1;
                  if(_loc3_)
                  {
                     §§goto(addr0041);
                  }
                  §§goto(addr0050);
               }
               addr0041:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_)
                  {
                     addr0050:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stepInstantFinishLabel",_loc2_,param1));
                  }
               }
               §§goto(addr005f);
            }
            addr005f:
            return;
         }
         §§goto(addr0050);
      }
      
      [Bindable(event="propertyChange")]
      public function get stepLabel() : LocaLabel
      {
         return this._1326901128stepLabel;
      }
      
      public function set stepLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1326901128stepLabel;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1326901128stepLabel = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stepLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0086);
                  }
                  §§goto(addr0077);
               }
            }
            addr0086:
            return;
         }
         §§goto(addr005f);
      }
      
      [Bindable(event="propertyChange")]
      public function get taskIcon() : BriskImageDynaLib
      {
         return this._410477666taskIcon;
      }
      
      public function set taskIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._410477666taskIcon;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._410477666taskIcon = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     addr0067:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"taskIcon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr0067);
            }
         }
         addr0085:
      }
   }
}

