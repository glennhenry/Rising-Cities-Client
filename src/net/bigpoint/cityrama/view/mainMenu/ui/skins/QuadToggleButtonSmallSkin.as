package net.bigpoint.cityrama.view.mainMenu.ui.skins
{
   import com.greensock.TweenMax;
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import mx.binding.*;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.events.BriskImageDynaLibEvent;
   import net.bigpoint.cityrama.view.mainMenu.ui.components.QuadToggleButton;
   import spark.components.Group;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class QuadToggleButtonSmallSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _QuadToggleButtonSmallSkin_BriskImageDynaLib2:BriskImageDynaLib;
      
      public var _QuadToggleButtonSmallSkin_BriskImageDynaLib3:BriskImageDynaLib;
      
      private var _934236280_QuadToggleButtonSmallSkin_BriskImageDynaLib4:BriskImageDynaLib;
      
      public var _QuadToggleButtonSmallSkin_BriskImageDynaLib5:BriskImageDynaLib;
      
      private var _1355974591_QuadToggleButtonSmallSkin_SetProperty1:SetProperty;
      
      private var _1355974590_QuadToggleButtonSmallSkin_SetProperty2:SetProperty;
      
      private var _1355974589_QuadToggleButtonSmallSkin_SetProperty3:SetProperty;
      
      private var _1355974588_QuadToggleButtonSmallSkin_SetProperty4:SetProperty;
      
      private var _1060367224badgeImage:BriskImageDynaLib;
      
      private var _1988292782blendGroup:Group;
      
      private var _410956671container:Group;
      
      private var _1412649594iconGroup:Group;
      
      private var _72342065maskImage:BriskImageDynaLib;
      
      private var _399041002middleGroup:Group;
      
      private var _1585954497shadowGroup:Group;
      
      private var _1584270309shadowImage:BriskImageDynaLib;
      
      private var _988229078topGroup:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:QuadToggleButton;
      
      public function QuadToggleButtonSmallSkin()
      {
         var bindings:Array;
         var watchers:Array;
         var target:Object;
         var i:uint;
         var watcherSetupUtilClass:Object;
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §§push(§§newactivation());
         if(_loc3_ || _loc3_)
         {
            §§push(null);
            if(!(_loc4_ && _loc1_))
            {
               §§pop().§§slot[1] = §§pop();
               if(!_loc4_)
               {
                  §§push(§§newactivation());
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(null);
                     if(_loc3_ || _loc3_)
                     {
                        addr005b:
                        §§pop().§§slot[3] = §§pop();
                        if(_loc3_ || Boolean(this))
                        {
                           §§push(§§newactivation());
                           if(_loc3_ || _loc2_)
                           {
                              addr007c:
                              §§pop().§§slot[5] = null;
                              if(_loc3_ || Boolean(this))
                              {
                                 this.mx_internal::_bindings = [];
                                 if(_loc3_)
                                 {
                                    this.mx_internal::_watchers = [];
                                    if(!(_loc4_ && _loc1_))
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             addr00d4:
                                             super();
                                             if(_loc3_)
                                             {
                                                addr00dc:
                                                mx_internal::_document = this;
                                                if(_loc3_ || _loc1_)
                                                {
                                                   §§push(§§newactivation());
                                                   if(_loc3_ || _loc1_)
                                                   {
                                                      addr0105:
                                                      §§pop().§§slot[1] = this._QuadToggleButtonSmallSkin_bindingsSetup();
                                                      if(_loc3_ || Boolean(this))
                                                      {
                                                         §§push(§§newactivation());
                                                         if(!(_loc4_ && _loc1_))
                                                         {
                                                            §§pop().§§slot[2] = [];
                                                            if(_loc3_ || _loc1_)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(_loc3_ || _loc2_)
                                                               {
                                                                  §§pop().§§slot[3] = this;
                                                                  if(_loc3_)
                                                                  {
                                                                     addr0158:
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_mainMenu_ui_skins_QuadToggleButtonSmallSkinWatcherSetupUtil");
                                                                              if(_loc3_ || _loc1_)
                                                                              {
                                                                                 addr0188:
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    addr018f:
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(!(_loc4_ && Boolean(this)))
                                                                                    {
                                                                                       addr01ae:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return QuadToggleButtonSmallSkin[param1];
                                                                                       },bindings,watchers);
                                                                                       if(_loc3_ || _loc3_)
                                                                                       {
                                                                                          addr01d1:
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             addr01f7:
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                addr021d:
                                                                                                this.mxmlContent = [this._QuadToggleButtonSmallSkin_Group1_i(),this._QuadToggleButtonSmallSkin_BriskImageDynaLib7_i()];
                                                                                                if(_loc3_ || _loc3_)
                                                                                                {
                                                                                                   addr023b:
                                                                                                   this.currentState = "up";
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      states = [new State({
                                                                                                         "name":"up",
                                                                                                         "stateGroups":["upStates","normalState"],
                                                                                                         "overrides":[]
                                                                                                      }),new State({
                                                                                                         "name":"over",
                                                                                                         "stateGroups":["overStates","normalState"],
                                                                                                         "overrides":[new SetProperty().initializeFromObject({
                                                                                                            "target":"topGroup",
                                                                                                            "name":"top",
                                                                                                            "value":0
                                                                                                         }),new SetProperty().initializeFromObject({
                                                                                                            "target":"iconGroup",
                                                                                                            "name":"top",
                                                                                                            "value":0
                                                                                                         }),new SetProperty().initializeFromObject({
                                                                                                            "target":"maskImage",
                                                                                                            "name":"top",
                                                                                                            "value":0
                                                                                                         })]
                                                                                                      }),new State({
                                                                                                         "name":"down",
                                                                                                         "stateGroups":["normalState","downStates"],
                                                                                                         "overrides":[new SetProperty().initializeFromObject({
                                                                                                            "target":"topGroup",
                                                                                                            "name":"top",
                                                                                                            "value":3
                                                                                                         }),new SetProperty().initializeFromObject({
                                                                                                            "target":"iconGroup",
                                                                                                            "name":"top",
                                                                                                            "value":3
                                                                                                         }),new SetProperty().initializeFromObject({
                                                                                                            "target":"maskImage",
                                                                                                            "name":"top",
                                                                                                            "value":3
                                                                                                         })]
                                                                                                      }),new State({
                                                                                                         "name":"disabled",
                                                                                                         "stateGroups":["disabledStates","normalState"],
                                                                                                         "overrides":[]
                                                                                                      }),new State({
                                                                                                         "name":"upAndSelected",
                                                                                                         "stateGroups":["upStates","selectedState"],
                                                                                                         "overrides":[new SetProperty().initializeFromObject({
                                                                                                            "target":"topGroup",
                                                                                                            "name":"top",
                                                                                                            "value":3
                                                                                                         }),new SetProperty().initializeFromObject({
                                                                                                            "target":"iconGroup",
                                                                                                            "name":"top",
                                                                                                            "value":3
                                                                                                         }),this._QuadToggleButtonSmallSkin_SetProperty1 = SetProperty(new SetProperty().initializeFromObject({
                                                                                                            "isBaseValueDataBound":true,
                                                                                                            "target":"_QuadToggleButtonSmallSkin_BriskImageDynaLib4",
                                                                                                            "name":"dynaBmpSourceName",
                                                                                                            "value":undefined
                                                                                                         })),new SetProperty().initializeFromObject({
                                                                                                            "target":"maskImage",
                                                                                                            "name":"top",
                                                                                                            "value":3
                                                                                                         })]
                                                                                                      }),new State({
                                                                                                         "name":"overAndSelected",
                                                                                                         "stateGroups":["overStates","selectedState"],
                                                                                                         "overrides":[new SetProperty().initializeFromObject({
                                                                                                            "target":"topGroup",
                                                                                                            "name":"top",
                                                                                                            "value":3
                                                                                                         }),new SetProperty().initializeFromObject({
                                                                                                            "target":"iconGroup",
                                                                                                            "name":"top",
                                                                                                            "value":3
                                                                                                         }),this._QuadToggleButtonSmallSkin_SetProperty2 = SetProperty(new SetProperty().initializeFromObject({
                                                                                                            "isBaseValueDataBound":true,
                                                                                                            "target":"_QuadToggleButtonSmallSkin_BriskImageDynaLib4",
                                                                                                            "name":"dynaBmpSourceName",
                                                                                                            "value":undefined
                                                                                                         })),new SetProperty().initializeFromObject({
                                                                                                            "target":"maskImage",
                                                                                                            "name":"top",
                                                                                                            "value":3
                                                                                                         })]
                                                                                                      }),new State({
                                                                                                         "name":"downAndSelected",
                                                                                                         "stateGroups":["downStates","selectedState"],
                                                                                                         "overrides":[new SetProperty().initializeFromObject({
                                                                                                            "target":"topGroup",
                                                                                                            "name":"top",
                                                                                                            "value":3
                                                                                                         }),new SetProperty().initializeFromObject({
                                                                                                            "target":"iconGroup",
                                                                                                            "name":"top",
                                                                                                            "value":3
                                                                                                         }),this._QuadToggleButtonSmallSkin_SetProperty3 = SetProperty(new SetProperty().initializeFromObject({
                                                                                                            "isBaseValueDataBound":true,
                                                                                                            "target":"_QuadToggleButtonSmallSkin_BriskImageDynaLib4",
                                                                                                            "name":"dynaBmpSourceName",
                                                                                                            "value":undefined
                                                                                                         })),new SetProperty().initializeFromObject({
                                                                                                            "target":"maskImage",
                                                                                                            "name":"top",
                                                                                                            "value":3
                                                                                                         })]
                                                                                                      }),new State({
                                                                                                         "name":"disabledAndSelected",
                                                                                                         "stateGroups":["disabledStates","selectedState"],
                                                                                                         "overrides":[this._QuadToggleButtonSmallSkin_SetProperty4 = SetProperty(new SetProperty().initializeFromObject({
                                                                                                            "isBaseValueDataBound":true,
                                                                                                            "target":"_QuadToggleButtonSmallSkin_BriskImageDynaLib4",
                                                                                                            "name":"dynaBmpSourceName",
                                                                                                            "value":undefined
                                                                                                         }))]
                                                                                                      }),new State({
                                                                                                         "name":"upAndInactive",
                                                                                                         "stateGroups":["inactiveState","upStates"],
                                                                                                         "overrides":[]
                                                                                                      }),new State({
                                                                                                         "name":"overAndInactive",
                                                                                                         "stateGroups":["overStates","inactiveState"],
                                                                                                         "overrides":[]
                                                                                                      }),new State({
                                                                                                         "name":"downAndInactive",
                                                                                                         "stateGroups":["inactiveState","downStates"],
                                                                                                         "overrides":[]
                                                                                                      }),new State({
                                                                                                         "name":"disabledAndInactive",
                                                                                                         "stateGroups":["disabledStates","inactiveState"],
                                                                                                         "overrides":[]
                                                                                                      }),new State({
                                                                                                         "name":"upAndBlinking",
                                                                                                         "stateGroups":["upStates","blinkingState"],
                                                                                                         "overrides":[]
                                                                                                      }),new State({
                                                                                                         "name":"overAndBlinking",
                                                                                                         "stateGroups":["overStates","blinkingState"],
                                                                                                         "overrides":[]
                                                                                                      }),new State({
                                                                                                         "name":"downAndBlinking",
                                                                                                         "stateGroups":["downStates","blinkingState"],
                                                                                                         "overrides":[]
                                                                                                      }),new State({
                                                                                                         "name":"disabledAndBlinking",
                                                                                                         "stateGroups":["disabledStates","blinkingState"],
                                                                                                         "overrides":[]
                                                                                                      })];
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         addr063b:
                                                                                                         BindingManager.executeBindings(this,"_QuadToggleButtonSmallSkin_SetProperty1",this._QuadToggleButtonSmallSkin_SetProperty1);
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            addr064e:
                                                                                                            BindingManager.executeBindings(this,"_QuadToggleButtonSmallSkin_SetProperty2",this._QuadToggleButtonSmallSkin_SetProperty2);
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               addr0660:
                                                                                                               BindingManager.executeBindings(this,"_QuadToggleButtonSmallSkin_SetProperty3",this._QuadToggleButtonSmallSkin_SetProperty3);
                                                                                                               if(!(_loc4_ && _loc1_))
                                                                                                               {
                                                                                                                  addr067b:
                                                                                                                  BindingManager.executeBindings(this,"_QuadToggleButtonSmallSkin_SetProperty4",this._QuadToggleButtonSmallSkin_SetProperty4);
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     addr068f:
                                                                                                                     i = 0;
                                                                                                                     addr068d:
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            loop0:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§newactivation());
                                                                                                               loop1:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().§§slot[4]);
                                                                                                                  loop2:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§newactivation());
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop() >= §§pop().§§slot[1].length)
                                                                                                                        {
                                                                                                                           break loop2;
                                                                                                                        }
                                                                                                                        Binding(bindings[i]).execute();
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§push(§§newactivation());
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().§§slot[4]);
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              §§push(uint(§§pop() + 1));
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 continue loop2;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§push(§§newactivation());
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              var _temp_29:* = §§pop();
                                                                                                                              §§pop().§§slot[4] = _temp_29;
                                                                                                                              if(_loc3_ || Boolean(this))
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              break loop2;
                                                                                                                           }
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        continue loop1;
                                                                                                                     }
                                                                                                                     break loop1;
                                                                                                                  }
                                                                                                                  break loop0;
                                                                                                               }
                                                                                                            }
                                                                                                            return;
                                                                                                            addr06eb:
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr068d);
                                                                                                }
                                                                                                §§goto(addr0660);
                                                                                             }
                                                                                             §§goto(addr06eb);
                                                                                          }
                                                                                          §§goto(addr023b);
                                                                                       }
                                                                                       §§goto(addr021d);
                                                                                    }
                                                                                    §§goto(addr0660);
                                                                                 }
                                                                                 §§goto(addr068f);
                                                                              }
                                                                              §§goto(addr067b);
                                                                           }
                                                                           §§goto(addr068f);
                                                                        }
                                                                        §§goto(addr068d);
                                                                     }
                                                                     §§goto(addr01ae);
                                                                  }
                                                                  §§goto(addr01f7);
                                                               }
                                                               §§goto(addr068f);
                                                            }
                                                            §§goto(addr0158);
                                                         }
                                                         §§goto(addr068f);
                                                      }
                                                      §§goto(addr06eb);
                                                   }
                                                   §§goto(addr068f);
                                                }
                                                §§goto(addr06eb);
                                             }
                                             §§goto(addr01d1);
                                          }
                                          §§goto(addr064e);
                                       }
                                       §§goto(addr0188);
                                    }
                                    §§goto(addr067b);
                                 }
                                 §§goto(addr00d4);
                              }
                              §§goto(addr00dc);
                           }
                           §§goto(addr068f);
                        }
                        §§goto(addr01ae);
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr018f);
               }
               §§goto(addr063b);
            }
            §§goto(addr005b);
         }
         §§goto(addr0105);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            QuadToggleButtonSmallSkin._watcherSetupUtil = param1;
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
            if(_loc3_)
            {
               §§goto(addr0030);
            }
            §§goto(addr0044);
         }
         addr0030:
         if(this.__moduleFactoryInitialized)
         {
            if(!_loc2_)
            {
               return;
            }
         }
         else
         {
            addr0044:
            this.__moduleFactoryInitialized = true;
         }
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super.initialize();
         }
      }
      
      override protected function stateChanged(param1:String, param2:String, param3:Boolean) : void
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc6_:State = null;
         if(!(_loc10_ && Boolean(param1)))
         {
            super.stateChanged(param1,param2,param3);
         }
         var _loc4_:State = null;
         var _loc5_:State = null;
         for each(_loc6_ in this.states)
         {
            if(_loc6_.name == param2)
            {
               _loc4_ = _loc6_;
               break;
            }
         }
         if(!(_loc10_ && param3))
         {
            TweenMax.killTweensOf(this,true);
            if(_loc9_ || Boolean(param1))
            {
               §§goto(addr0093);
            }
            §§goto(addr0177);
         }
         addr0093:
         if(_loc4_.stateGroups.indexOf("normalState") != -1)
         {
            if(!_loc10_)
            {
               if(_loc4_.stateGroups.indexOf("overStates") != -1)
               {
                  if(_loc9_ || Boolean(param1))
                  {
                     TweenMax.to(this.blendGroup,0.1,{"tint":this.hostComponent.getStyle("regularOverColor")});
                     if(_loc10_)
                     {
                     }
                  }
                  else
                  {
                     addr01d1:
                     TweenMax.to(this.blendGroup,0.1,{"tint":this.hostComponent.getStyle("inactiveColor")});
                  }
               }
               else
               {
                  TweenMax.to(this.blendGroup,0.1,{"tint":this.hostComponent.getStyle("regularColor")});
                  if(_loc10_)
                  {
                     §§goto(addr01d1);
                  }
               }
               §§goto(addr01ec);
            }
         }
         else if(_loc4_.stateGroups.indexOf("selectedState") != -1)
         {
            if(_loc9_)
            {
               TweenMax.to(this.blendGroup,0.1,{"tint":this.hostComponent.getStyle("selectedColor")});
               if(_loc10_)
               {
               }
            }
         }
         else if(_loc4_.stateGroups.indexOf("inactiveState") != -1)
         {
            if(!_loc10_)
            {
               addr0177:
               TweenMax.to(this.blendGroup,0.1,{"tint":this.hostComponent.getStyle("disabledColor")});
               if(_loc9_ || Boolean(param1))
               {
               }
            }
         }
         else if(_loc4_.stateGroups.indexOf("blinkingState") != -1)
         {
            if(_loc9_ || Boolean(this))
            {
               §§goto(addr01d1);
            }
         }
         addr01ec:
      }
      
      private function handleSizeChanged() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this.container.scrollRect = new Rectangle(0,0,this.shadowImage.width,this.shadowImage.height);
         }
      }
      
      private function _QuadToggleButtonSmallSkin_Group1_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.mxmlContent = [this._QuadToggleButtonSmallSkin_Group2_i(),this._QuadToggleButtonSmallSkin_Group3_i(),this._QuadToggleButtonSmallSkin_Group4_i(),this._QuadToggleButtonSmallSkin_Group5_i(),this._QuadToggleButtonSmallSkin_Group6_i()];
            if(_loc2_ || Boolean(_loc1_))
            {
               §§goto(addr0059);
            }
            §§goto(addr006c);
         }
         addr0059:
         _loc1_.id = "container";
         if(!(_loc3_ && Boolean(this)))
         {
            addr006c:
            if(!_loc1_.document)
            {
               if(!_loc3_)
               {
                  §§goto(addr0078);
               }
            }
            §§goto(addr0095);
         }
         addr0078:
         _loc1_.document = this;
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            addr0095:
            this.container = _loc1_;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               BindingManager.executeBindings(this,"container",this.container);
            }
         }
         return _loc1_;
      }
      
      private function _QuadToggleButtonSmallSkin_Group2_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.mxmlContent = [this._QuadToggleButtonSmallSkin_BriskImageDynaLib1_i()];
            if(_loc3_ || _loc3_)
            {
               _loc1_.id = "shadowGroup";
               if(!(_loc2_ && _loc3_))
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        _loc1_.document = this;
                        if(_loc3_ || _loc2_)
                        {
                           addr0086:
                           this.shadowGroup = _loc1_;
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              addr0098:
                              BindingManager.executeBindings(this,"shadowGroup",this.shadowGroup);
                           }
                           §§goto(addr00a5);
                        }
                        §§goto(addr0098);
                     }
                     addr00a5:
                     return _loc1_;
                  }
                  §§goto(addr0086);
               }
            }
         }
         §§goto(addr0098);
      }
      
      private function _QuadToggleButtonSmallSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.addEventListener("sizeChanged",this.__shadowImage_sizeChanged);
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.id = "shadowImage";
               if(!(_loc2_ && Boolean(this)))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr0071:
                        _loc1_.document = this;
                        if(_loc3_ || Boolean(this))
                        {
                           §§goto(addr0082);
                        }
                     }
                     §§goto(addr008c);
                  }
                  §§goto(addr0082);
               }
               §§goto(addr0071);
            }
            addr0082:
            this.shadowImage = _loc1_;
            if(_loc3_)
            {
               addr008c:
               BindingManager.executeBindings(this,"shadowImage",this.shadowImage);
            }
            §§goto(addr0099);
         }
         addr0099:
         return _loc1_;
      }
      
      public function __shadowImage_sizeChanged(param1:BriskImageDynaLibEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.handleSizeChanged();
         }
      }
      
      private function _QuadToggleButtonSmallSkin_Group3_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.mxmlContent = [this._QuadToggleButtonSmallSkin_BriskImageDynaLib2_i()];
            if(!_loc2_)
            {
               _loc1_.id = "middleGroup";
               if(!(_loc2_ && _loc3_))
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr0067:
                        _loc1_.document = this;
                        if(_loc3_)
                        {
                           addr0070:
                           this.middleGroup = _loc1_;
                           if(_loc3_)
                           {
                              addr007a:
                              BindingManager.executeBindings(this,"middleGroup",this.middleGroup);
                           }
                        }
                        §§goto(addr0087);
                     }
                  }
                  §§goto(addr0070);
               }
               addr0087:
               return _loc1_;
            }
            §§goto(addr0067);
         }
         §§goto(addr007a);
      }
      
      private function _QuadToggleButtonSmallSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.id = "_QuadToggleButtonSmallSkin_BriskImageDynaLib2";
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.document = this;
                     if(!(_loc3_ && _loc2_))
                     {
                        §§goto(addr0068);
                     }
                  }
                  §§goto(addr0072);
               }
            }
            addr0068:
            this._QuadToggleButtonSmallSkin_BriskImageDynaLib2 = _loc1_;
            if(!_loc3_)
            {
               addr0072:
               BindingManager.executeBindings(this,"_QuadToggleButtonSmallSkin_BriskImageDynaLib2",this._QuadToggleButtonSmallSkin_BriskImageDynaLib2);
            }
            §§goto(addr007f);
         }
         addr007f:
         return _loc1_;
      }
      
      private function _QuadToggleButtonSmallSkin_Group4_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.top = 0;
            if(!_loc3_)
            {
               _loc1_.mxmlContent = [this._QuadToggleButtonSmallSkin_BriskImageDynaLib3_i()];
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.id = "topGroup";
                  if(!(_loc3_ && _loc3_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           addr0087:
                           _loc1_.document = this;
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              §§goto(addr0098);
                           }
                        }
                        §§goto(addr00a2);
                     }
                     addr0098:
                     this.topGroup = _loc1_;
                     if(_loc2_)
                     {
                        addr00a2:
                        BindingManager.executeBindings(this,"topGroup",this.topGroup);
                     }
                     §§goto(addr00af);
                  }
                  §§goto(addr0087);
               }
            }
            addr00af:
            return _loc1_;
         }
         §§goto(addr0087);
      }
      
      private function _QuadToggleButtonSmallSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.id = "_QuadToggleButtonSmallSkin_BriskImageDynaLib3";
            if(_loc3_)
            {
               addr0039:
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.document = this;
                     if(_loc3_ || Boolean(this))
                     {
                        addr006c:
                        this._QuadToggleButtonSmallSkin_BriskImageDynaLib3 = _loc1_;
                        if(!_loc2_)
                        {
                           addr0077:
                           BindingManager.executeBindings(this,"_QuadToggleButtonSmallSkin_BriskImageDynaLib3",this._QuadToggleButtonSmallSkin_BriskImageDynaLib3);
                        }
                        §§goto(addr0085);
                     }
                     §§goto(addr0077);
                  }
                  addr0085:
                  return _loc1_;
               }
            }
            §§goto(addr006c);
         }
         §§goto(addr0039);
      }
      
      private function _QuadToggleButtonSmallSkin_Group5_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.top = 0;
            if(!_loc2_)
            {
               _loc1_.mxmlContent = [this._QuadToggleButtonSmallSkin_BriskImageDynaLib4_i()];
               if(_loc3_)
               {
                  _loc1_.id = "iconGroup";
                  if(_loc3_ || Boolean(this))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              addr0083:
                              this.iconGroup = _loc1_;
                              if(_loc3_ || Boolean(this))
                              {
                                 addr0095:
                                 BindingManager.executeBindings(this,"iconGroup",this.iconGroup);
                              }
                           }
                        }
                        §§goto(addr00a2);
                     }
                     §§goto(addr0083);
                  }
                  §§goto(addr00a2);
               }
               §§goto(addr0095);
            }
            addr00a2:
            return _loc1_;
         }
         §§goto(addr0095);
      }
      
      private function _QuadToggleButtonSmallSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.id = "_QuadToggleButtonSmallSkin_BriskImageDynaLib4";
            if(!(_loc2_ && _loc2_))
            {
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     _loc1_.document = this;
                     if(!_loc2_)
                     {
                        §§goto(addr0060);
                     }
                  }
                  §§goto(addr0072);
               }
               addr0060:
               this._QuadToggleButtonSmallSkin_BriskImageDynaLib4 = _loc1_;
               if(!(_loc2_ && _loc2_))
               {
                  addr0072:
                  BindingManager.executeBindings(this,"_QuadToggleButtonSmallSkin_BriskImageDynaLib4",this._QuadToggleButtonSmallSkin_BriskImageDynaLib4);
               }
               §§goto(addr007f);
            }
            addr007f:
            return _loc1_;
         }
         §§goto(addr0072);
      }
      
      private function _QuadToggleButtonSmallSkin_Group6_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.blendMode = "overlay";
            if(_loc3_ || _loc2_)
            {
               _loc1_.mxmlContent = [this._QuadToggleButtonSmallSkin_BriskImageDynaLib5_i(),this._QuadToggleButtonSmallSkin_BriskImageDynaLib6_i()];
               if(!_loc2_)
               {
                  §§goto(addr005c);
               }
               §§goto(addr0067);
            }
            §§goto(addr007b);
         }
         addr005c:
         _loc1_.id = "blendGroup";
         if(_loc3_)
         {
            addr0067:
            if(!_loc1_.document)
            {
               if(_loc3_ || _loc2_)
               {
                  addr007b:
                  _loc1_.document = this;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr0098:
                     this.blendGroup = _loc1_;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        BindingManager.executeBindings(this,"blendGroup",this.blendGroup);
                     }
                  }
                  §§goto(addr00b7);
               }
            }
            §§goto(addr0098);
         }
         addr00b7:
         return _loc1_;
      }
      
      private function _QuadToggleButtonSmallSkin_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.id = "_QuadToggleButtonSmallSkin_BriskImageDynaLib5";
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     §§goto(addr0057);
                  }
               }
               §§goto(addr0068);
            }
         }
         addr0057:
         _loc1_.document = this;
         if(!(_loc3_ && _loc2_))
         {
            addr0068:
            this._QuadToggleButtonSmallSkin_BriskImageDynaLib5 = _loc1_;
            if(_loc2_)
            {
               BindingManager.executeBindings(this,"_QuadToggleButtonSmallSkin_BriskImageDynaLib5",this._QuadToggleButtonSmallSkin_BriskImageDynaLib5);
            }
         }
         return _loc1_;
      }
      
      private function _QuadToggleButtonSmallSkin_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.top = 0;
            if(_loc2_ || _loc3_)
            {
               _loc1_.id = "maskImage";
               if(_loc2_)
               {
                  addr0049:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        _loc1_.document = this;
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           §§goto(addr0072);
                        }
                        §§goto(addr007c);
                     }
                  }
                  addr0072:
                  this.maskImage = _loc1_;
                  if(_loc2_)
                  {
                     addr007c:
                     BindingManager.executeBindings(this,"maskImage",this.maskImage);
                  }
                  §§goto(addr0089);
               }
            }
            addr0089:
            return _loc1_;
         }
         §§goto(addr0049);
      }
      
      private function _QuadToggleButtonSmallSkin_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.top = -5;
            if(_loc2_)
            {
               _loc1_.right = -5;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.dynaBmpSourceName = "symbol_new_small";
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.dynaLibName = "gui_ui_questSide";
                     addr0054:
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.includeInLayout = false;
                        if(!(_loc3_ && _loc3_))
                        {
                           _loc1_.visible = false;
                           if(_loc2_)
                           {
                              addr008e:
                              _loc1_.id = "badgeImage";
                              if(_loc2_)
                              {
                                 if(!_loc1_.document)
                                 {
                                    if(!_loc3_)
                                    {
                                       §§goto(addr00b2);
                                    }
                                 }
                                 §§goto(addr00c3);
                              }
                           }
                           §§goto(addr00b2);
                        }
                        §§goto(addr00c3);
                     }
                     addr00b2:
                     _loc1_.document = this;
                     if(_loc2_ || Boolean(this))
                     {
                        addr00c3:
                        this.badgeImage = _loc1_;
                        if(!_loc3_)
                        {
                           addr00cd:
                           BindingManager.executeBindings(this,"badgeImage",this.badgeImage);
                        }
                     }
                     §§goto(addr00da);
                  }
                  §§goto(addr008e);
               }
               addr00da:
               return _loc1_;
            }
            §§goto(addr0054);
         }
         §§goto(addr00cd);
      }
      
      private function _QuadToggleButtonSmallSkin_bindingsSetup() : Array
      {
         var result:Array;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§newactivation());
         if(_loc2_ || _loc3_)
         {
            §§pop().§§slot[1] = [];
            if(_loc2_ || _loc2_)
            {
               §§push(§§newactivation());
               if(_loc2_ || _loc2_)
               {
                  §§push(§§pop().§§slot[1]);
                  if(!_loc3_)
                  {
                     §§push(0);
                     if(_loc2_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():Number
                        {
                           return shadowImage.width;
                        },null,"container.width");
                        if(_loc2_ || _loc1_)
                        {
                           addr0072:
                           §§push(§§newactivation());
                           if(_loc2_)
                           {
                              §§push(§§pop().§§slot[1]);
                              if(!(_loc3_ && _loc1_))
                              {
                                 §§push(1);
                                 if(_loc2_)
                                 {
                                    §§pop()[§§pop()] = new Binding(this,function():Number
                                    {
                                       return shadowImage.height;
                                    },null,"container.height");
                                    if(_loc2_)
                                    {
                                       §§push(§§newactivation());
                                       if(_loc2_ || _loc2_)
                                       {
                                          §§push(§§pop().§§slot[1]);
                                          if(_loc2_)
                                          {
                                             §§push(2);
                                             if(_loc2_ || _loc2_)
                                             {
                                                addr00ca:
                                                §§pop()[§§pop()] = new Binding(this,function():String
                                                {
                                                   var _loc1_:* = hostComponent.getStyle("libraryName");
                                                   return _loc1_ == undefined ? null : String(_loc1_);
                                                },null,"shadowImage.dynaLibName");
                                                if(_loc2_)
                                                {
                                                   §§push(§§newactivation());
                                                   if(_loc2_)
                                                   {
                                                      §§push(§§pop().§§slot[1]);
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         addr00f6:
                                                         §§push(3);
                                                         if(_loc2_ || _loc3_)
                                                         {
                                                            §§pop()[§§pop()] = new Binding(this,function():String
                                                            {
                                                               var _loc1_:* = hostComponent.getStyle("shadowImage");
                                                               return _loc1_ == undefined ? null : String(_loc1_);
                                                            },null,"shadowImage.dynaBmpSourceName");
                                                            if(_loc2_ || _loc1_)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(_loc2_)
                                                               {
                                                                  §§push(§§pop().§§slot[1]);
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§push(4);
                                                                     if(_loc2_)
                                                                     {
                                                                        §§pop()[§§pop()] = new Binding(this,function():String
                                                                        {
                                                                           var _loc1_:* = hostComponent.getStyle("fileName");
                                                                           return _loc1_ == undefined ? null : String(_loc1_);
                                                                        },null,"shadowImage.dynaSWFFileName");
                                                                        if(_loc2_ || Boolean(this))
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(_loc2_ || Boolean(this))
                                                                           {
                                                                              §§push(§§pop().§§slot[1]);
                                                                              if(_loc2_ || _loc1_)
                                                                              {
                                                                                 §§push(5);
                                                                                 if(!(_loc3_ && Boolean(this)))
                                                                                 {
                                                                                    §§pop()[§§pop()] = new Binding(this,function():String
                                                                                    {
                                                                                       var _loc1_:* = hostComponent.getStyle("libraryName");
                                                                                       return _loc1_ == undefined ? null : String(_loc1_);
                                                                                    },null,"_QuadToggleButtonSmallSkin_BriskImageDynaLib2.dynaLibName");
                                                                                    if(!(_loc3_ && _loc1_))
                                                                                    {
                                                                                       addr01a1:
                                                                                       §§push(§§newactivation());
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          §§push(§§pop().§§slot[1]);
                                                                                          if(!(_loc3_ && Boolean(this)))
                                                                                          {
                                                                                             §§push(6);
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                addr01be:
                                                                                                §§pop()[§§pop()] = new Binding(this,function():String
                                                                                                {
                                                                                                   var _loc1_:* = hostComponent.getStyle("middleImage");
                                                                                                   return _loc1_ == undefined ? null : String(_loc1_);
                                                                                                },null,"_QuadToggleButtonSmallSkin_BriskImageDynaLib2.dynaBmpSourceName");
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   §§push(§§newactivation());
                                                                                                   if(!(_loc3_ && _loc3_))
                                                                                                   {
                                                                                                      §§push(§§pop().§§slot[1]);
                                                                                                      if(_loc2_ || _loc2_)
                                                                                                      {
                                                                                                         §§push(7);
                                                                                                         if(!(_loc3_ && _loc2_))
                                                                                                         {
                                                                                                            addr0201:
                                                                                                            §§pop()[§§pop()] = new Binding(this,function():String
                                                                                                            {
                                                                                                               var _loc1_:* = hostComponent.getStyle("fileName");
                                                                                                               return _loc1_ == undefined ? null : String(_loc1_);
                                                                                                            },null,"_QuadToggleButtonSmallSkin_BriskImageDynaLib2.dynaSWFFileName");
                                                                                                            if(_loc2_)
                                                                                                            {
                                                                                                               §§push(§§newactivation());
                                                                                                               if(!(_loc3_ && _loc3_))
                                                                                                               {
                                                                                                                  addr0226:
                                                                                                                  §§push(§§pop().§§slot[1]);
                                                                                                                  if(_loc2_ || _loc2_)
                                                                                                                  {
                                                                                                                     addr0235:
                                                                                                                     §§push(8);
                                                                                                                     if(_loc2_)
                                                                                                                     {
                                                                                                                        §§pop()[§§pop()] = new Binding(this,function():String
                                                                                                                        {
                                                                                                                           var _loc1_:* = hostComponent.getStyle("libraryName");
                                                                                                                           return _loc1_ == undefined ? null : String(_loc1_);
                                                                                                                        },null,"_QuadToggleButtonSmallSkin_BriskImageDynaLib3.dynaLibName");
                                                                                                                        if(_loc2_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§push(§§newactivation());
                                                                                                                           if(_loc2_)
                                                                                                                           {
                                                                                                                              addr0261:
                                                                                                                              §§push(§§pop().§§slot[1]);
                                                                                                                              if(!(_loc3_ && Boolean(this)))
                                                                                                                              {
                                                                                                                                 §§push(9);
                                                                                                                                 if(_loc2_)
                                                                                                                                 {
                                                                                                                                    §§pop()[§§pop()] = new Binding(this,function():String
                                                                                                                                    {
                                                                                                                                       var _loc1_:* = hostComponent.getStyle("topImage");
                                                                                                                                       return _loc1_ == undefined ? null : String(_loc1_);
                                                                                                                                    },null,"_QuadToggleButtonSmallSkin_BriskImageDynaLib3.dynaBmpSourceName");
                                                                                                                                    if(_loc2_)
                                                                                                                                    {
                                                                                                                                       §§push(§§newactivation());
                                                                                                                                       if(!_loc3_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().§§slot[1]);
                                                                                                                                          if(!(_loc3_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             addr02a3:
                                                                                                                                             §§push(10);
                                                                                                                                             if(_loc2_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                §§pop()[§§pop()] = new Binding(this,function():String
                                                                                                                                                {
                                                                                                                                                   var _loc1_:* = hostComponent.getStyle("fileName");
                                                                                                                                                   return _loc1_ == undefined ? null : String(_loc1_);
                                                                                                                                                },null,"_QuadToggleButtonSmallSkin_BriskImageDynaLib3.dynaSWFFileName");
                                                                                                                                                if(_loc2_)
                                                                                                                                                {
                                                                                                                                                   addr02c8:
                                                                                                                                                   §§push(§§newactivation());
                                                                                                                                                   if(!(_loc3_ && _loc1_))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().§§slot[1]);
                                                                                                                                                      if(_loc2_)
                                                                                                                                                      {
                                                                                                                                                         addr02de:
                                                                                                                                                         §§push(11);
                                                                                                                                                         if(!_loc3_)
                                                                                                                                                         {
                                                                                                                                                            §§pop()[§§pop()] = new Binding(this,function():String
                                                                                                                                                            {
                                                                                                                                                               var _loc1_:* = hostComponent.getStyle("libraryName");
                                                                                                                                                               return _loc1_ == undefined ? null : String(_loc1_);
                                                                                                                                                            },null,"_QuadToggleButtonSmallSkin_BriskImageDynaLib4.dynaLibName");
                                                                                                                                                            if(_loc2_)
                                                                                                                                                            {
                                                                                                                                                               addr0306:
                                                                                                                                                               §§push(§§newactivation());
                                                                                                                                                               if(_loc2_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  addr0315:
                                                                                                                                                                  §§push(§§pop().§§slot[1]);
                                                                                                                                                                  if(!(_loc3_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(12);
                                                                                                                                                                     if(!(_loc3_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        §§pop()[§§pop()] = new Binding(this,function():String
                                                                                                                                                                        {
                                                                                                                                                                           var _loc1_:* = hostComponent.getStyle("iconImage");
                                                                                                                                                                           return _loc1_ == undefined ? null : String(_loc1_);
                                                                                                                                                                        },null,"_QuadToggleButtonSmallSkin_BriskImageDynaLib4.dynaBmpSourceName");
                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§newactivation());
                                                                                                                                                                           if(!(_loc3_ && _loc1_))
                                                                                                                                                                           {
                                                                                                                                                                              addr0358:
                                                                                                                                                                              §§push(§§pop().§§slot[1]);
                                                                                                                                                                              if(!(_loc3_ && _loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(13);
                                                                                                                                                                                 if(!(_loc3_ && _loc1_))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr0376:
                                                                                                                                                                                    §§pop()[§§pop()] = new Binding(this,function():*
                                                                                                                                                                                    {
                                                                                                                                                                                       return hostComponent.getStyle("iconSelectedImage");
                                                                                                                                                                                    },null,"_QuadToggleButtonSmallSkin_SetProperty1.value");
                                                                                                                                                                                    if(!_loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§newactivation());
                                                                                                                                                                                       if(_loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr0393:
                                                                                                                                                                                          §§push(§§pop().§§slot[1]);
                                                                                                                                                                                          if(_loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(14);
                                                                                                                                                                                             if(_loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop()[§§pop()] = new Binding(this,function():*
                                                                                                                                                                                                {
                                                                                                                                                                                                   return hostComponent.getStyle("iconSelectedImage");
                                                                                                                                                                                                },null,"_QuadToggleButtonSmallSkin_SetProperty2.value");
                                                                                                                                                                                                if(!_loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§newactivation());
                                                                                                                                                                                                   if(!(_loc3_ && _loc1_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr03c6:
                                                                                                                                                                                                      §§push(§§pop().§§slot[1]);
                                                                                                                                                                                                      if(!(_loc3_ && _loc1_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr03d5:
                                                                                                                                                                                                         §§push(15);
                                                                                                                                                                                                         if(!_loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr03dc:
                                                                                                                                                                                                            §§pop()[§§pop()] = new Binding(this,function():*
                                                                                                                                                                                                            {
                                                                                                                                                                                                               return hostComponent.getStyle("iconSelectedImage");
                                                                                                                                                                                                            },null,"_QuadToggleButtonSmallSkin_SetProperty3.value");
                                                                                                                                                                                                            if(!_loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr03f2:
                                                                                                                                                                                                               §§push(§§newactivation());
                                                                                                                                                                                                               if(_loc2_ || _loc1_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr0401:
                                                                                                                                                                                                                  §§push(§§pop().§§slot[1]);
                                                                                                                                                                                                                  if(_loc2_ || _loc1_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(16);
                                                                                                                                                                                                                     if(_loc2_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr0417:
                                                                                                                                                                                                                        §§pop()[§§pop()] = new Binding(this,function():*
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           return hostComponent.getStyle("iconSelectedImage");
                                                                                                                                                                                                                        },null,"_QuadToggleButtonSmallSkin_SetProperty4.value");
                                                                                                                                                                                                                        if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr0435:
                                                                                                                                                                                                                           §§push(§§newactivation());
                                                                                                                                                                                                                           if(_loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr043c:
                                                                                                                                                                                                                              §§push(§§pop().§§slot[1]);
                                                                                                                                                                                                                              if(!_loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr0443:
                                                                                                                                                                                                                                 §§push(17);
                                                                                                                                                                                                                                 if(_loc2_ || Boolean(this))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr0452:
                                                                                                                                                                                                                                    §§pop()[§§pop()] = new Binding(this,function():String
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       var _loc1_:* = hostComponent.getStyle("fileName");
                                                                                                                                                                                                                                       return _loc1_ == undefined ? null : String(_loc1_);
                                                                                                                                                                                                                                    },null,"_QuadToggleButtonSmallSkin_BriskImageDynaLib4.dynaSWFFileName");
                                                                                                                                                                                                                                    if(_loc2_ || _loc2_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§newactivation());
                                                                                                                                                                                                                                       if(!(_loc3_ && Boolean(this)))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr047f:
                                                                                                                                                                                                                                          §§push(§§pop().§§slot[1]);
                                                                                                                                                                                                                                          if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(18);
                                                                                                                                                                                                                                             if(!(_loc3_ && Boolean(this)))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr049d:
                                                                                                                                                                                                                                                §§pop()[§§pop()] = new Binding(this,function():String
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   var _loc1_:* = hostComponent.getStyle("libraryName");
                                                                                                                                                                                                                                                   return _loc1_ == undefined ? null : String(_loc1_);
                                                                                                                                                                                                                                                },null,"_QuadToggleButtonSmallSkin_BriskImageDynaLib5.dynaLibName");
                                                                                                                                                                                                                                                if(!_loc3_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr04b3:
                                                                                                                                                                                                                                                   §§push(§§newactivation());
                                                                                                                                                                                                                                                   if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr04c2:
                                                                                                                                                                                                                                                      §§push(§§pop().§§slot[1]);
                                                                                                                                                                                                                                                      if(_loc2_ || Boolean(this))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr04d1:
                                                                                                                                                                                                                                                         §§push(19);
                                                                                                                                                                                                                                                         if(_loc2_ || Boolean(this))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr04e0:
                                                                                                                                                                                                                                                            §§pop()[§§pop()] = new Binding(this,function():String
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               var _loc1_:* = hostComponent.getStyle("maskImage");
                                                                                                                                                                                                                                                               return _loc1_ == undefined ? null : String(_loc1_);
                                                                                                                                                                                                                                                            },null,"_QuadToggleButtonSmallSkin_BriskImageDynaLib5.dynaBmpSourceName");
                                                                                                                                                                                                                                                            if(_loc2_ || Boolean(this))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr04fe:
                                                                                                                                                                                                                                                               §§push(§§newactivation());
                                                                                                                                                                                                                                                               if(!_loc3_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr0505:
                                                                                                                                                                                                                                                                  §§push(§§pop().§§slot[1]);
                                                                                                                                                                                                                                                                  if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr0514:
                                                                                                                                                                                                                                                                     §§push(20);
                                                                                                                                                                                                                                                                     if(!(_loc3_ && _loc1_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr0523:
                                                                                                                                                                                                                                                                        §§pop()[§§pop()] = new Binding(this,function():String
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           var _loc1_:* = hostComponent.getStyle("fileName");
                                                                                                                                                                                                                                                                           return _loc1_ == undefined ? null : String(_loc1_);
                                                                                                                                                                                                                                                                        },null,"_QuadToggleButtonSmallSkin_BriskImageDynaLib5.dynaSWFFileName");
                                                                                                                                                                                                                                                                        if(_loc2_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr0539:
                                                                                                                                                                                                                                                                           §§push(§§newactivation());
                                                                                                                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr0540:
                                                                                                                                                                                                                                                                              §§push(§§pop().§§slot[1]);
                                                                                                                                                                                                                                                                              if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr054f:
                                                                                                                                                                                                                                                                                 §§push(21);
                                                                                                                                                                                                                                                                                 if(!(_loc3_ && Boolean(this)))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr055e:
                                                                                                                                                                                                                                                                                    §§pop()[§§pop()] = new Binding(this,null,null,"_QuadToggleButtonSmallSkin_BriskImageDynaLib5.mask","maskImage");
                                                                                                                                                                                                                                                                                    if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr057d:
                                                                                                                                                                                                                                                                                       §§push(§§newactivation());
                                                                                                                                                                                                                                                                                       if(_loc2_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr0584:
                                                                                                                                                                                                                                                                                          §§push(§§pop().§§slot[1]);
                                                                                                                                                                                                                                                                                          if(_loc2_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr058b:
                                                                                                                                                                                                                                                                                             §§push(22);
                                                                                                                                                                                                                                                                                             if(!_loc3_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr0592:
                                                                                                                                                                                                                                                                                                §§pop()[§§pop()] = new Binding(this,function():String
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   var _loc1_:* = hostComponent.getStyle("libraryName");
                                                                                                                                                                                                                                                                                                   return _loc1_ == undefined ? null : String(_loc1_);
                                                                                                                                                                                                                                                                                                },null,"maskImage.dynaLibName");
                                                                                                                                                                                                                                                                                                if(_loc2_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr05a8);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr05e3);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr060f);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr0624);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr05b7);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr0620);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr0592);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr058b);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr0622);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr057d);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr055e);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr054f);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr0584);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr05e3);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr0523);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr058b);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr0540);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr0620);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr05cd);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr0624);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr0622);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr04fe);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr055e);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr05be);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr0540);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr0539);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr055e);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr05be);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr04c2);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr05a8);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr0417);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr05be);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr0505);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr0435);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr0417);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr04d1);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr047f);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr05a8);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr04e0);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr0443);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr0401);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr04b3);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr0523);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr05be);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr03c6);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr057d);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0452);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr03d5);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0315);
                                                                                                                                                }
                                                                                                                                                §§goto(addr04fe);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0523);
                                                                                                                                          }
                                                                                                                                          §§goto(addr054f);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0358);
                                                                                                                                    }
                                                                                                                                    §§goto(addr03f2);
                                                                                                                                 }
                                                                                                                                 §§goto(addr03dc);
                                                                                                                              }
                                                                                                                              §§goto(addr02a3);
                                                                                                                           }
                                                                                                                           §§goto(addr03c6);
                                                                                                                        }
                                                                                                                        §§goto(addr0306);
                                                                                                                     }
                                                                                                                     §§goto(addr060f);
                                                                                                                  }
                                                                                                                  §§goto(addr0624);
                                                                                                               }
                                                                                                               §§goto(addr0584);
                                                                                                            }
                                                                                                            §§goto(addr04fe);
                                                                                                         }
                                                                                                         §§goto(addr049d);
                                                                                                      }
                                                                                                      §§goto(addr0443);
                                                                                                   }
                                                                                                   §§goto(addr04c2);
                                                                                                }
                                                                                                §§goto(addr04b3);
                                                                                             }
                                                                                             §§goto(addr0452);
                                                                                          }
                                                                                          §§goto(addr04d1);
                                                                                       }
                                                                                       §§goto(addr0358);
                                                                                    }
                                                                                    §§goto(addr02c8);
                                                                                 }
                                                                                 §§goto(addr0201);
                                                                              }
                                                                              §§goto(addr02de);
                                                                           }
                                                                           §§goto(addr0584);
                                                                        }
                                                                        §§goto(addr0620);
                                                                     }
                                                                     §§goto(addr05cd);
                                                                  }
                                                                  §§goto(addr0514);
                                                               }
                                                               §§goto(addr0226);
                                                            }
                                                            addr05a8:
                                                            §§push(§§newactivation());
                                                            if(!(_loc3_ && _loc2_))
                                                            {
                                                               addr05b7:
                                                               §§push(§§pop().§§slot[1]);
                                                               if(!_loc3_)
                                                               {
                                                                  addr05be:
                                                                  §§push(23);
                                                                  if(_loc2_ || Boolean(this))
                                                                  {
                                                                     addr05cd:
                                                                     §§pop()[§§pop()] = new Binding(this,function():String
                                                                     {
                                                                        var _loc1_:* = hostComponent.getStyle("maskImage");
                                                                        return _loc1_ == undefined ? null : String(_loc1_);
                                                                     },null,"maskImage.dynaBmpSourceName");
                                                                     if(_loc2_)
                                                                     {
                                                                        addr05e3:
                                                                        §§push(§§newactivation());
                                                                        if(!(_loc3_ && _loc1_))
                                                                        {
                                                                           §§goto(addr0624);
                                                                        }
                                                                        §§goto(addr0622);
                                                                     }
                                                                     §§goto(addr0620);
                                                                  }
                                                                  §§goto(addr060f);
                                                               }
                                                               addr0624:
                                                               §§goto(addr05fe);
                                                            }
                                                            addr05fe:
                                                            §§push(§§pop().§§slot[1]);
                                                            if(!(_loc3_ && Boolean(this)))
                                                            {
                                                               addr060f:
                                                               §§pop()[24] = new Binding(this,function():String
                                                               {
                                                                  var _loc1_:* = hostComponent.getStyle("fileName");
                                                                  return _loc1_ == undefined ? null : String(_loc1_);
                                                               },null,"maskImage.dynaSWFFileName");
                                                               addr0622:
                                                               addr0620:
                                                               return result;
                                                            }
                                                         }
                                                         §§goto(addr01be);
                                                      }
                                                      §§goto(addr0235);
                                                   }
                                                   §§goto(addr0226);
                                                }
                                                §§goto(addr0306);
                                             }
                                             §§goto(addr055e);
                                          }
                                          §§goto(addr00f6);
                                       }
                                       §§goto(addr043c);
                                    }
                                    §§goto(addr0306);
                                 }
                                 §§goto(addr0376);
                              }
                              §§goto(addr058b);
                           }
                           §§goto(addr0261);
                        }
                        §§goto(addr01a1);
                     }
                     §§goto(addr00ca);
                  }
                  §§goto(addr0235);
               }
               §§goto(addr0393);
            }
            §§goto(addr0072);
         }
         §§goto(addr043c);
      }
      
      [Bindable(event="propertyChange")]
      public function get _QuadToggleButtonSmallSkin_BriskImageDynaLib4() : BriskImageDynaLib
      {
         return this._934236280_QuadToggleButtonSmallSkin_BriskImageDynaLib4;
      }
      
      public function set _QuadToggleButtonSmallSkin_BriskImageDynaLib4(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._934236280_QuadToggleButtonSmallSkin_BriskImageDynaLib4;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._934236280_QuadToggleButtonSmallSkin_BriskImageDynaLib4 = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_QuadToggleButtonSmallSkin_BriskImageDynaLib4",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr006c);
      }
      
      [Bindable(event="propertyChange")]
      public function get _QuadToggleButtonSmallSkin_SetProperty1() : SetProperty
      {
         return this._1355974591_QuadToggleButtonSmallSkin_SetProperty1;
      }
      
      public function set _QuadToggleButtonSmallSkin_SetProperty1(param1:SetProperty) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1355974591_QuadToggleButtonSmallSkin_SetProperty1;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  addr0040:
                  this._1355974591_QuadToggleButtonSmallSkin_SetProperty1 = param1;
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_QuadToggleButtonSmallSkin_SetProperty1",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0040);
      }
      
      [Bindable(event="propertyChange")]
      public function get _QuadToggleButtonSmallSkin_SetProperty2() : SetProperty
      {
         return this._1355974590_QuadToggleButtonSmallSkin_SetProperty2;
      }
      
      public function set _QuadToggleButtonSmallSkin_SetProperty2(param1:SetProperty) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1355974590_QuadToggleButtonSmallSkin_SetProperty2;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1355974590_QuadToggleButtonSmallSkin_SetProperty2 = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_QuadToggleButtonSmallSkin_SetProperty2",_loc2_,param1));
                        }
                     }
                     §§goto(addr0075);
                  }
               }
               §§goto(addr0066);
            }
         }
         addr0075:
      }
      
      [Bindable(event="propertyChange")]
      public function get _QuadToggleButtonSmallSkin_SetProperty3() : SetProperty
      {
         return this._1355974589_QuadToggleButtonSmallSkin_SetProperty3;
      }
      
      public function set _QuadToggleButtonSmallSkin_SetProperty3(param1:SetProperty) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1355974589_QuadToggleButtonSmallSkin_SetProperty3;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr0037:
                  this._1355974589_QuadToggleButtonSmallSkin_SetProperty3 = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     addr0054:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_QuadToggleButtonSmallSkin_SetProperty3",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr0054);
            }
            addr007b:
            return;
         }
         §§goto(addr0037);
      }
      
      [Bindable(event="propertyChange")]
      public function get _QuadToggleButtonSmallSkin_SetProperty4() : SetProperty
      {
         return this._1355974588_QuadToggleButtonSmallSkin_SetProperty4;
      }
      
      public function set _QuadToggleButtonSmallSkin_SetProperty4(param1:SetProperty) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1355974588_QuadToggleButtonSmallSkin_SetProperty4;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._1355974588_QuadToggleButtonSmallSkin_SetProperty4 = param1;
                  if(!_loc3_)
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_QuadToggleButtonSmallSkin_SetProperty4",_loc2_,param1));
                        }
                     }
                     §§goto(addr0084);
                  }
                  §§goto(addr0075);
               }
            }
            addr0084:
            return;
         }
         §§goto(addr005e);
      }
      
      [Bindable(event="propertyChange")]
      public function get badgeImage() : BriskImageDynaLib
      {
         return this._1060367224badgeImage;
      }
      
      public function set badgeImage(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1060367224badgeImage;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._1060367224badgeImage = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"badgeImage",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr005d);
            }
         }
         addr007b:
      }
      
      [Bindable(event="propertyChange")]
      public function get blendGroup() : Group
      {
         return this._1988292782blendGroup;
      }
      
      public function set blendGroup(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1988292782blendGroup;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._1988292782blendGroup = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"blendGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0077);
      }
      
      [Bindable(event="propertyChange")]
      public function get container() : Group
      {
         return this._410956671container;
      }
      
      public function set container(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._410956671container;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._410956671container = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     addr0064:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"container",_loc2_,param1));
                        }
                     }
                     §§goto(addr0083);
                  }
               }
               §§goto(addr0074);
            }
            addr0083:
            return;
         }
         §§goto(addr0064);
      }
      
      [Bindable(event="propertyChange")]
      public function get iconGroup() : Group
      {
         return this._1412649594iconGroup;
      }
      
      public function set iconGroup(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1412649594iconGroup;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1412649594iconGroup = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     §§goto(addr0050);
                  }
                  §§goto(addr0068);
               }
               addr0050:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr0068:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconGroup",_loc2_,param1));
                  }
               }
               §§goto(addr0077);
            }
            addr0077:
            return;
         }
         §§goto(addr0050);
      }
      
      [Bindable(event="propertyChange")]
      public function get maskImage() : BriskImageDynaLib
      {
         return this._72342065maskImage;
      }
      
      public function set maskImage(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._72342065maskImage;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._72342065maskImage = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maskImage",_loc2_,param1));
                        }
                     }
                     §§goto(addr0075);
                  }
                  §§goto(addr0066);
               }
            }
            addr0075:
            return;
         }
         §§goto(addr0056);
      }
      
      [Bindable(event="propertyChange")]
      public function get middleGroup() : Group
      {
         return this._399041002middleGroup;
      }
      
      public function set middleGroup(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._399041002middleGroup;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._399041002middleGroup = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"middleGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shadowGroup() : Group
      {
         return this._1585954497shadowGroup;
      }
      
      public function set shadowGroup(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1585954497shadowGroup;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._1585954497shadowGroup = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0072:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shadowGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0081);
                  }
                  §§goto(addr0072);
               }
            }
            addr0081:
            return;
         }
         §§goto(addr0072);
      }
      
      [Bindable(event="propertyChange")]
      public function get shadowImage() : BriskImageDynaLib
      {
         return this._1584270309shadowImage;
      }
      
      public function set shadowImage(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1584270309shadowImage;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1584270309shadowImage = param1;
                  addr003d:
                  if(_loc4_ || _loc3_)
                  {
                     §§goto(addr005c);
                  }
                  §§goto(addr006b);
               }
               addr005c:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr006b:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shadowImage",_loc2_,param1));
                  }
               }
               §§goto(addr007a);
            }
            addr007a:
            return;
         }
         §§goto(addr003d);
      }
      
      [Bindable(event="propertyChange")]
      public function get topGroup() : Group
      {
         return this._988229078topGroup;
      }
      
      public function set topGroup(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._988229078topGroup;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._988229078topGroup = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     §§goto(addr0068);
                  }
                  §§goto(addr0080);
               }
               addr0068:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     addr0080:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"topGroup",_loc2_,param1));
                  }
               }
               §§goto(addr008f);
            }
            addr008f:
            return;
         }
         §§goto(addr0068);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : QuadToggleButton
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:QuadToggleButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._213507019hostComponent = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0066);
            }
         }
         addr0075:
      }
   }
}

