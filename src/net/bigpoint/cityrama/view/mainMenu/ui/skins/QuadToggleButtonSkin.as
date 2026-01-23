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
   
   public class QuadToggleButtonSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _QuadToggleButtonSkin_BriskImageDynaLib2:BriskImageDynaLib;
      
      public var _QuadToggleButtonSkin_BriskImageDynaLib3:BriskImageDynaLib;
      
      private var _749892279_QuadToggleButtonSkin_BriskImageDynaLib4:BriskImageDynaLib;
      
      public var _QuadToggleButtonSkin_BriskImageDynaLib5:BriskImageDynaLib;
      
      private var _466548048_QuadToggleButtonSkin_SetProperty1:SetProperty;
      
      private var _466548047_QuadToggleButtonSkin_SetProperty2:SetProperty;
      
      private var _466548046_QuadToggleButtonSkin_SetProperty3:SetProperty;
      
      private var _466548045_QuadToggleButtonSkin_SetProperty4:SetProperty;
      
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
      
      public function QuadToggleButtonSkin()
      {
         var bindings:Array;
         var watchers:Array;
         var target:Object;
         var i:uint;
         var watcherSetupUtilClass:Object;
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(_loc4_)
         {
            §§push(null);
            if(!_loc3_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!_loc3_)
               {
                  §§push(§§newactivation());
                  if(_loc4_)
                  {
                     §§push(null);
                     if(!_loc3_)
                     {
                        addr003c:
                        §§pop().§§slot[3] = §§pop();
                        if(!_loc3_)
                        {
                           §§push(§§newactivation());
                           if(!_loc3_)
                           {
                              addr004d:
                              §§pop().§§slot[5] = null;
                              if(!_loc3_)
                              {
                                 this.mx_internal::_bindings = [];
                                 if(_loc4_)
                                 {
                                    this.mx_internal::_watchers = [];
                                    if(_loc4_ || _loc2_)
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(_loc4_)
                                       {
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(_loc4_)
                                          {
                                             addr008e:
                                             super();
                                             if(_loc4_)
                                             {
                                                mx_internal::_document = this;
                                                if(_loc4_)
                                                {
                                                   §§push(§§newactivation());
                                                   if(!(_loc3_ && _loc1_))
                                                   {
                                                      addr00b9:
                                                      §§pop().§§slot[1] = this._QuadToggleButtonSkin_bindingsSetup();
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         addr00d0:
                                                         §§push(§§newactivation());
                                                         if(_loc4_ || _loc2_)
                                                         {
                                                            §§pop().§§slot[2] = [];
                                                            if(_loc4_)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  addr00fb:
                                                                  §§pop().§§slot[3] = this;
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(_loc4_ || Boolean(this))
                                                                        {
                                                                           addr0123:
                                                                           §§push(§§newactivation());
                                                                           if(!(_loc3_ && Boolean(this)))
                                                                           {
                                                                              addr0132:
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_mainMenu_ui_skins_QuadToggleButtonSkinWatcherSetupUtil");
                                                                              if(_loc4_)
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       addr0164:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return QuadToggleButtonSkin[param1];
                                                                                       },bindings,watchers);
                                                                                       if(!(_loc3_ && _loc2_))
                                                                                       {
                                                                                          addr0187:
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(_loc4_ || _loc1_)
                                                                                          {
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(_loc4_ || Boolean(this))
                                                                                             {
                                                                                                addr01e5:
                                                                                                this.mxmlContent = [this._QuadToggleButtonSkin_Group1_i(),this._QuadToggleButtonSkin_BriskImageDynaLib7_i()];
                                                                                                if(!(_loc3_ && _loc3_))
                                                                                                {
                                                                                                   addr0203:
                                                                                                   this.currentState = "up";
                                                                                                   if(!(_loc3_ && _loc1_))
                                                                                                   {
                                                                                                      var _temp_32:* = new State({
                                                                                                         "name":"up",
                                                                                                         "stateGroups":["upStates","normalState"],
                                                                                                         "overrides":[]
                                                                                                      });
                                                                                                      var _temp_31:* = new State({
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
                                                                                                      });
                                                                                                      var _temp_30:* = new State({
                                                                                                         "name":"down",
                                                                                                         "stateGroups":["normalState","downStates"],
                                                                                                         "overrides":[new SetProperty().initializeFromObject({
                                                                                                            "target":"topGroup",
                                                                                                            "name":"top",
                                                                                                            "value":6
                                                                                                         }),new SetProperty().initializeFromObject({
                                                                                                            "target":"iconGroup",
                                                                                                            "name":"top",
                                                                                                            "value":6
                                                                                                         }),new SetProperty().initializeFromObject({
                                                                                                            "target":"maskImage",
                                                                                                            "name":"top",
                                                                                                            "value":6
                                                                                                         })]
                                                                                                      });
                                                                                                      var _temp_29:* = new State({
                                                                                                         "name":"disabled",
                                                                                                         "stateGroups":["disabledStates","normalState"],
                                                                                                         "overrides":[]
                                                                                                      });
                                                                                                      var _temp_28:* = new State({
                                                                                                         "name":"upAndSelected",
                                                                                                         "stateGroups":["upStates","selectedState"],
                                                                                                         "overrides":[new SetProperty().initializeFromObject({
                                                                                                            "target":"topGroup",
                                                                                                            "name":"top",
                                                                                                            "value":6
                                                                                                         }),new SetProperty().initializeFromObject({
                                                                                                            "target":"iconGroup",
                                                                                                            "name":"top",
                                                                                                            "value":6
                                                                                                         }),this._QuadToggleButtonSkin_SetProperty1 = SetProperty(new SetProperty().initializeFromObject({
                                                                                                            "isBaseValueDataBound":true,
                                                                                                            "target":"_QuadToggleButtonSkin_BriskImageDynaLib4",
                                                                                                            "name":"dynaBmpSourceName",
                                                                                                            "value":undefined
                                                                                                         })),new SetProperty().initializeFromObject({
                                                                                                            "target":"maskImage",
                                                                                                            "name":"top",
                                                                                                            "value":6
                                                                                                         })]
                                                                                                      });
                                                                                                      var _temp_27:* = new State({
                                                                                                         "name":"overAndSelected",
                                                                                                         "stateGroups":["overStates","selectedState"],
                                                                                                         "overrides":[new SetProperty().initializeFromObject({
                                                                                                            "target":"topGroup",
                                                                                                            "name":"top",
                                                                                                            "value":6
                                                                                                         }),new SetProperty().initializeFromObject({
                                                                                                            "target":"iconGroup",
                                                                                                            "name":"top",
                                                                                                            "value":6
                                                                                                         }),this._QuadToggleButtonSkin_SetProperty2 = SetProperty(new SetProperty().initializeFromObject({
                                                                                                            "isBaseValueDataBound":true,
                                                                                                            "target":"_QuadToggleButtonSkin_BriskImageDynaLib4",
                                                                                                            "name":"dynaBmpSourceName",
                                                                                                            "value":undefined
                                                                                                         })),new SetProperty().initializeFromObject({
                                                                                                            "target":"maskImage",
                                                                                                            "name":"top",
                                                                                                            "value":6
                                                                                                         })]
                                                                                                      });
                                                                                                      var _temp_26:* = new State({
                                                                                                         "name":"downAndSelected",
                                                                                                         "stateGroups":["downStates","selectedState"],
                                                                                                         "overrides":[new SetProperty().initializeFromObject({
                                                                                                            "target":"topGroup",
                                                                                                            "name":"top",
                                                                                                            "value":6
                                                                                                         }),new SetProperty().initializeFromObject({
                                                                                                            "target":"iconGroup",
                                                                                                            "name":"top",
                                                                                                            "value":6
                                                                                                         }),this._QuadToggleButtonSkin_SetProperty3 = SetProperty(new SetProperty().initializeFromObject({
                                                                                                            "isBaseValueDataBound":true,
                                                                                                            "target":"_QuadToggleButtonSkin_BriskImageDynaLib4",
                                                                                                            "name":"dynaBmpSourceName",
                                                                                                            "value":undefined
                                                                                                         })),new SetProperty().initializeFromObject({
                                                                                                            "target":"maskImage",
                                                                                                            "name":"top",
                                                                                                            "value":6
                                                                                                         })]
                                                                                                      });
                                                                                                      var _temp_25:* = §§findproperty(State);
                                                                                                      var _temp_24:* = "name";
                                                                                                      var _temp_23:* = "disabledAndSelected";
                                                                                                      var _temp_22:* = "stateGroups";
                                                                                                      var _temp_21:* = ["disabledStates","selectedState"];
                                                                                                      var _temp_20:* = "overrides";
                                                                                                      var _loc2_:*;
                                                                                                      this._QuadToggleButtonSkin_SetProperty4 = _loc2_ = SetProperty(new SetProperty().initializeFromObject({
                                                                                                         "isBaseValueDataBound":true,
                                                                                                         "target":"_QuadToggleButtonSkin_BriskImageDynaLib4",
                                                                                                         "name":"dynaBmpSourceName",
                                                                                                         "value":undefined
                                                                                                      }));
                                                                                                      states = [_temp_32,_temp_31,_temp_30,_temp_29,_temp_28,_temp_27,_temp_26,new State({
                                                                                                         _temp_24:_temp_23,
                                                                                                         _temp_22:_temp_21,
                                                                                                         _temp_20:[_loc2_]
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
                                                                                                      addr0217:
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         addr0609:
                                                                                                         BindingManager.executeBindings(this,"_QuadToggleButtonSkin_SetProperty1",this._QuadToggleButtonSkin_SetProperty1);
                                                                                                         if(_loc4_ || Boolean(_loc2_))
                                                                                                         {
                                                                                                            addr0624:
                                                                                                            BindingManager.executeBindings(this,"_QuadToggleButtonSkin_SetProperty2",this._QuadToggleButtonSkin_SetProperty2);
                                                                                                            if(!(_loc3_ && Boolean(_loc2_)))
                                                                                                            {
                                                                                                               addr063e:
                                                                                                               BindingManager.executeBindings(this,"_QuadToggleButtonSkin_SetProperty3",this._QuadToggleButtonSkin_SetProperty3);
                                                                                                               if(_loc4_ || _loc3_)
                                                                                                               {
                                                                                                                  addr0659:
                                                                                                                  BindingManager.executeBindings(this,"_QuadToggleButtonSkin_SetProperty4",this._QuadToggleButtonSkin_SetProperty4);
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     addr066d:
                                                                                                                     i = 0;
                                                                                                                     addr066b:
                                                                                                                  }
                                                                                                               }
                                                                                                               var _temp_37:*;
                                                                                                               loop0:
                                                                                                               do
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
                                                                                                                        while(§§pop() < §§pop().§§slot[1].length)
                                                                                                                        {
                                                                                                                           Binding(bindings[i]).execute();
                                                                                                                           if(!(_loc4_ || _loc3_))
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§push(§§newactivation());
                                                                                                                           if(_loc4_)
                                                                                                                           {
                                                                                                                              §§push(§§pop().§§slot[4]);
                                                                                                                              if(!_loc3_)
                                                                                                                              {
                                                                                                                                 §§push(uint(§§pop() + 1));
                                                                                                                                 if(!_loc3_)
                                                                                                                                 {
                                                                                                                                    §§push(§§newactivation());
                                                                                                                                    if(!_loc3_)
                                                                                                                                    {
                                                                                                                                       continue loop0;
                                                                                                                                    }
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop2;
                                                                                                                           }
                                                                                                                           continue loop1;
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               while(var _temp_37:* = §§pop(), §§pop().§§slot[4] = _temp_37, !_loc3_);
                                                                                                               
                                                                                                               return;
                                                                                                               addr06c9:
                                                                                                            }
                                                                                                            §§goto(addr066b);
                                                                                                         }
                                                                                                         §§goto(addr063e);
                                                                                                      }
                                                                                                      §§goto(addr0659);
                                                                                                   }
                                                                                                   §§goto(addr063e);
                                                                                                }
                                                                                                §§goto(addr0609);
                                                                                             }
                                                                                             §§goto(addr0217);
                                                                                          }
                                                                                          §§goto(addr06c9);
                                                                                       }
                                                                                       §§goto(addr01e5);
                                                                                    }
                                                                                    §§goto(addr06c9);
                                                                                 }
                                                                                 §§goto(addr066d);
                                                                              }
                                                                              §§goto(addr0203);
                                                                           }
                                                                           §§goto(addr066d);
                                                                        }
                                                                     }
                                                                     §§goto(addr0164);
                                                                  }
                                                                  §§goto(addr0609);
                                                               }
                                                               §§goto(addr0132);
                                                            }
                                                            §§goto(addr0624);
                                                         }
                                                         §§goto(addr0132);
                                                      }
                                                      §§goto(addr0203);
                                                   }
                                                   §§goto(addr066d);
                                                }
                                             }
                                             §§goto(addr0203);
                                          }
                                          §§goto(addr06c9);
                                       }
                                       §§goto(addr0123);
                                    }
                                    §§goto(addr008e);
                                 }
                                 §§goto(addr0203);
                              }
                              §§goto(addr06c9);
                           }
                           §§goto(addr0132);
                        }
                        §§goto(addr00d0);
                     }
                     §§goto(addr004d);
                  }
                  §§goto(addr00b9);
               }
               §§goto(addr0187);
            }
            §§goto(addr003c);
         }
         §§goto(addr00fb);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            QuadToggleButtonSkin._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            super.moduleFactory = param1;
            if(_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || Boolean(this))
                  {
                     §§goto(addr004c);
                  }
               }
               this.__moduleFactoryInitialized = true;
               return;
            }
         }
         addr004c:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
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
         if(_loc9_ || Boolean(param1))
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
         if(_loc9_ || Boolean(param1))
         {
            TweenMax.killTweensOf(this,true);
            if(_loc9_)
            {
               §§goto(addr008d);
            }
            §§goto(addr017b);
         }
         addr008d:
         if(_loc4_.stateGroups.indexOf("normalState") != -1)
         {
            if(_loc9_)
            {
               if(_loc4_.stateGroups.indexOf("overStates") != -1)
               {
                  if(!(_loc10_ && Boolean(this)))
                  {
                     TweenMax.to(this.blendGroup,0.1,{"tint":this.hostComponent.getStyle("regularOverColor")});
                     if(!(_loc9_ || Boolean(this)))
                     {
                        addr017b:
                        TweenMax.to(this.blendGroup,0.1,{"tint":this.hostComponent.getStyle("disabledColor")});
                        if(_loc9_)
                        {
                        }
                     }
                  }
                  else
                  {
                     addr013e:
                     TweenMax.to(this.blendGroup,0.1,{"tint":this.hostComponent.getStyle("selectedColor")});
                     if(_loc10_)
                     {
                     }
                  }
               }
               else
               {
                  TweenMax.to(this.blendGroup,0.1,{"tint":this.hostComponent.getStyle("regularColor")});
                  if(!_loc9_)
                  {
                     §§goto(addr017b);
                  }
               }
               §§goto(addr01e7);
            }
         }
         else if(_loc4_.stateGroups.indexOf("selectedState") != -1)
         {
            if(_loc9_)
            {
               §§goto(addr013e);
            }
         }
         else if(_loc4_.stateGroups.indexOf("inactiveState") != -1)
         {
            if(!_loc10_)
            {
               §§goto(addr017b);
            }
            else
            {
               addr01cc:
               TweenMax.to(this.blendGroup,0.1,{"tint":this.hostComponent.getStyle("inactiveColor")});
            }
         }
         else if(_loc4_.stateGroups.indexOf("blinkingState") != -1)
         {
            if(!(_loc10_ && Boolean(this)))
            {
               §§goto(addr01cc);
            }
         }
         addr01e7:
      }
      
      private function handleSizeChanged() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            this.container.scrollRect = new Rectangle(0,0,this.shadowImage.width,this.shadowImage.height);
         }
      }
      
      private function _QuadToggleButtonSkin_Group1_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.mxmlContent = [this._QuadToggleButtonSkin_Group2_i(),this._QuadToggleButtonSkin_Group3_i(),this._QuadToggleButtonSkin_Group4_i(),this._QuadToggleButtonSkin_Group5_i(),this._QuadToggleButtonSkin_Group6_i()];
            if(_loc2_ || _loc3_)
            {
               addr0064:
               _loc1_.id = "container";
               if(_loc2_)
               {
                  addr006f:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.document = this;
                        if(!_loc3_)
                        {
                           addr0097:
                           this.container = _loc1_;
                           if(_loc2_)
                           {
                              addr00a1:
                              BindingManager.executeBindings(this,"container",this.container);
                           }
                           §§goto(addr00ae);
                        }
                        §§goto(addr00a1);
                     }
                     addr00ae:
                     return _loc1_;
                  }
               }
               §§goto(addr0097);
            }
            §§goto(addr006f);
         }
         §§goto(addr0064);
      }
      
      private function _QuadToggleButtonSkin_Group2_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.mxmlContent = [this._QuadToggleButtonSkin_BriskImageDynaLib1_i()];
            if(_loc2_)
            {
               _loc1_.id = "shadowGroup";
               if(_loc2_ || _loc2_)
               {
                  addr0055:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.document = this;
                        if(_loc2_ || _loc2_)
                        {
                           addr0087:
                           this.shadowGroup = _loc1_;
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              addr0099:
                              BindingManager.executeBindings(this,"shadowGroup",this.shadowGroup);
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr0099);
                  }
               }
               §§goto(addr0087);
            }
         }
         §§goto(addr0055);
      }
      
      private function _QuadToggleButtonSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.addEventListener("sizeChanged",this.__shadowImage_sizeChanged);
            if(_loc3_)
            {
               _loc1_.id = "shadowImage";
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.document = this;
                        if(_loc3_ || Boolean(this))
                        {
                           addr007a:
                           this.shadowImage = _loc1_;
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr008c:
                              BindingManager.executeBindings(this,"shadowImage",this.shadowImage);
                           }
                        }
                     }
                     §§goto(addr0099);
                  }
                  §§goto(addr007a);
               }
               §§goto(addr008c);
            }
            addr0099:
            return _loc1_;
         }
         §§goto(addr007a);
      }
      
      public function __shadowImage_sizeChanged(param1:BriskImageDynaLibEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this.handleSizeChanged();
         }
      }
      
      private function _QuadToggleButtonSkin_Group3_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.mxmlContent = [this._QuadToggleButtonSkin_BriskImageDynaLib2_i()];
            if(!_loc2_)
            {
               _loc1_.id = "middleGroup";
               if(!(_loc2_ && _loc2_))
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        _loc1_.document = this;
                        if(_loc3_)
                        {
                           addr007a:
                           this.middleGroup = _loc1_;
                           if(!_loc2_)
                           {
                              addr0084:
                              BindingManager.executeBindings(this,"middleGroup",this.middleGroup);
                           }
                        }
                     }
                     §§goto(addr0091);
                  }
                  §§goto(addr007a);
               }
               §§goto(addr0084);
            }
            addr0091:
            return _loc1_;
         }
         §§goto(addr007a);
      }
      
      private function _QuadToggleButtonSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.id = "_QuadToggleButtonSkin_BriskImageDynaLib2";
            if(!_loc2_)
            {
               addr0038:
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.document = this;
                     if(!(_loc2_ && _loc3_))
                     {
                        §§goto(addr0068);
                     }
                     §§goto(addr0073);
                  }
               }
            }
            addr0068:
            this._QuadToggleButtonSkin_BriskImageDynaLib2 = _loc1_;
            if(_loc3_)
            {
               addr0073:
               BindingManager.executeBindings(this,"_QuadToggleButtonSkin_BriskImageDynaLib2",this._QuadToggleButtonSkin_BriskImageDynaLib2);
            }
            return _loc1_;
         }
         §§goto(addr0038);
      }
      
      private function _QuadToggleButtonSkin_Group4_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.top = 0;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.mxmlContent = [this._QuadToggleButtonSkin_BriskImageDynaLib3_i()];
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr0056:
                  _loc1_.id = "topGroup";
                  if(!(_loc2_ && Boolean(this)))
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr0081:
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              addr008a:
                              this.topGroup = _loc1_;
                              if(!_loc2_)
                              {
                                 BindingManager.executeBindings(this,"topGroup",this.topGroup);
                              }
                           }
                        }
                        §§goto(addr00a1);
                     }
                     §§goto(addr008a);
                  }
               }
               addr00a1:
               return _loc1_;
            }
            §§goto(addr0056);
         }
         §§goto(addr0081);
      }
      
      private function _QuadToggleButtonSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.id = "_QuadToggleButtonSkin_BriskImageDynaLib3";
            if(!(_loc2_ && _loc2_))
            {
               §§goto(addr003e);
            }
            §§goto(addr0071);
         }
         addr003e:
         if(!_loc1_.document)
         {
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.document = this;
               if(!_loc2_)
               {
                  §§goto(addr0067);
               }
            }
            §§goto(addr0071);
         }
         addr0067:
         this._QuadToggleButtonSkin_BriskImageDynaLib3 = _loc1_;
         if(_loc3_)
         {
            addr0071:
            BindingManager.executeBindings(this,"_QuadToggleButtonSkin_BriskImageDynaLib3",this._QuadToggleButtonSkin_BriskImageDynaLib3);
         }
         return _loc1_;
      }
      
      private function _QuadToggleButtonSkin_Group5_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.top = 0;
            if(!_loc3_)
            {
               _loc1_.mxmlContent = [this._QuadToggleButtonSkin_BriskImageDynaLib4_i()];
               if(_loc2_ || _loc3_)
               {
                  _loc1_.id = "iconGroup";
                  if(_loc2_ || Boolean(this))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(this))
                        {
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              addr0097:
                              this.iconGroup = _loc1_;
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr00a9:
                                 BindingManager.executeBindings(this,"iconGroup",this.iconGroup);
                              }
                           }
                           §§goto(addr00b6);
                        }
                     }
                     §§goto(addr0097);
                  }
               }
            }
            §§goto(addr00a9);
         }
         addr00b6:
         return _loc1_;
      }
      
      private function _QuadToggleButtonSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.id = "_QuadToggleButtonSkin_BriskImageDynaLib4";
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr0046:
                     _loc1_.document = this;
                     if(_loc2_ || Boolean(this))
                     {
                        addr0061:
                        this._QuadToggleButtonSkin_BriskImageDynaLib4 = _loc1_;
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0073:
                           BindingManager.executeBindings(this,"_QuadToggleButtonSkin_BriskImageDynaLib4",this._QuadToggleButtonSkin_BriskImageDynaLib4);
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0061);
            }
            §§goto(addr0073);
         }
         §§goto(addr0046);
      }
      
      private function _QuadToggleButtonSkin_Group6_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.blendMode = "overlay";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.mxmlContent = [this._QuadToggleButtonSkin_BriskImageDynaLib5_i(),this._QuadToggleButtonSkin_BriskImageDynaLib6_i()];
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.id = "blendGroup";
                  if(!_loc2_)
                  {
                     addr006b:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           addr0089:
                           _loc1_.document = this;
                           if(_loc3_ || _loc3_)
                           {
                              §§goto(addr009a);
                           }
                        }
                        §§goto(addr00a4);
                     }
                     addr009a:
                     this.blendGroup = _loc1_;
                     if(!_loc2_)
                     {
                        addr00a4:
                        BindingManager.executeBindings(this,"blendGroup",this.blendGroup);
                     }
                     §§goto(addr00b1);
                  }
                  §§goto(addr0089);
               }
               addr00b1:
               return _loc1_;
            }
            §§goto(addr006b);
         }
         §§goto(addr0089);
      }
      
      private function _QuadToggleButtonSkin_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.id = "_QuadToggleButtonSkin_BriskImageDynaLib5";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr0059:
                     _loc1_.document = this;
                     if(!_loc2_)
                     {
                        addr0062:
                        this._QuadToggleButtonSkin_BriskImageDynaLib5 = _loc1_;
                        if(_loc3_ || _loc3_)
                        {
                           addr0075:
                           BindingManager.executeBindings(this,"_QuadToggleButtonSkin_BriskImageDynaLib5",this._QuadToggleButtonSkin_BriskImageDynaLib5);
                        }
                        §§goto(addr0083);
                     }
                     §§goto(addr0075);
                  }
                  §§goto(addr0083);
               }
               §§goto(addr0062);
            }
            addr0083:
            return _loc1_;
         }
         §§goto(addr0059);
      }
      
      private function _QuadToggleButtonSkin_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.top = 0;
            if(_loc3_)
            {
               _loc1_.id = "maskImage";
               if(_loc3_)
               {
                  addr003e:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        _loc1_.document = this;
                        if(!(_loc2_ && _loc2_))
                        {
                           §§goto(addr0066);
                        }
                        §§goto(addr0078);
                     }
                  }
                  addr0066:
                  this.maskImage = _loc1_;
                  if(_loc3_ || _loc3_)
                  {
                     addr0078:
                     BindingManager.executeBindings(this,"maskImage",this.maskImage);
                  }
                  §§goto(addr0085);
               }
            }
            addr0085:
            return _loc1_;
         }
         §§goto(addr003e);
      }
      
      private function _QuadToggleButtonSkin_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.top = -5;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.right = -5;
               if(!_loc3_)
               {
                  _loc1_.dynaBmpSourceName = "symbol_new_small";
                  if(_loc2_)
                  {
                     _loc1_.dynaLibName = "gui_ui_questSide";
                     if(_loc2_)
                     {
                        _loc1_.includeInLayout = false;
                        if(_loc2_ || _loc2_)
                        {
                           addr006c:
                           _loc1_.visible = false;
                           if(!_loc3_)
                           {
                              §§goto(addr0075);
                           }
                           §§goto(addr0080);
                        }
                        addr0075:
                        _loc1_.id = "badgeImage";
                        if(_loc2_)
                        {
                           addr0080:
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 _loc1_.document = this;
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr00a8:
                                    this.badgeImage = _loc1_;
                                    if(_loc2_)
                                    {
                                       BindingManager.executeBindings(this,"badgeImage",this.badgeImage);
                                    }
                                 }
                                 §§goto(addr00bf);
                              }
                           }
                           §§goto(addr00a8);
                        }
                        §§goto(addr00bf);
                     }
                     §§goto(addr00a8);
                  }
                  §§goto(addr006c);
               }
            }
            addr00bf:
            return _loc1_;
         }
         §§goto(addr006c);
      }
      
      private function _QuadToggleButtonSkin_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(!(_loc2_ && _loc1_))
         {
            §§pop().§§slot[1] = [];
            if(!_loc2_)
            {
               §§push(§§newactivation());
               if(_loc3_ || _loc1_)
               {
                  §§push(§§pop().§§slot[1]);
                  if(_loc3_)
                  {
                     §§push(0);
                     if(!(_loc2_ && _loc1_))
                     {
                        §§pop()[§§pop()] = new Binding(this,function():Number
                        {
                           return shadowImage.width;
                        },null,"container.width");
                        if(_loc3_)
                        {
                           §§push(§§newactivation());
                           if(!_loc2_)
                           {
                              §§push(§§pop().§§slot[1]);
                              if(_loc3_ || _loc3_)
                              {
                                 §§push(1);
                                 if(!_loc2_)
                                 {
                                    §§pop()[§§pop()] = new Binding(this,function():Number
                                    {
                                       return shadowImage.height;
                                    },null,"container.height");
                                    if(_loc3_ || _loc2_)
                                    {
                                       §§push(§§newactivation());
                                       if(_loc3_ || Boolean(this))
                                       {
                                          §§push(§§pop().§§slot[1]);
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             addr00c4:
                                             §§push(2);
                                             if(_loc3_ || _loc2_)
                                             {
                                                addr00d3:
                                                §§pop()[§§pop()] = new Binding(this,function():String
                                                {
                                                   var _loc1_:* = hostComponent.getStyle("libraryName");
                                                   return _loc1_ == undefined ? null : String(_loc1_);
                                                },null,"shadowImage.dynaLibName");
                                                if(_loc3_ || Boolean(this))
                                                {
                                                   addr00f1:
                                                   §§push(§§newactivation());
                                                   if(!(_loc2_ && _loc1_))
                                                   {
                                                      §§push(§§pop().§§slot[1]);
                                                      if(!(_loc2_ && _loc3_))
                                                      {
                                                         addr010f:
                                                         §§push(3);
                                                         if(!_loc2_)
                                                         {
                                                            §§pop()[§§pop()] = new Binding(this,function():String
                                                            {
                                                               var _loc1_:* = hostComponent.getStyle("shadowImage");
                                                               return _loc1_ == undefined ? null : String(_loc1_);
                                                            },null,"shadowImage.dynaBmpSourceName");
                                                            if(_loc3_)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(_loc3_)
                                                               {
                                                                  §§push(§§pop().§§slot[1]);
                                                                  if(!_loc2_)
                                                                  {
                                                                     §§push(4);
                                                                     if(!(_loc2_ && _loc1_))
                                                                     {
                                                                        §§pop()[§§pop()] = new Binding(this,function():String
                                                                        {
                                                                           var _loc1_:* = hostComponent.getStyle("fileName");
                                                                           return _loc1_ == undefined ? null : String(_loc1_);
                                                                        },null,"shadowImage.dynaSWFFileName");
                                                                        if(!(_loc2_ && Boolean(this)))
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(!(_loc2_ && _loc2_))
                                                                           {
                                                                              addr0176:
                                                                              §§push(§§pop().§§slot[1]);
                                                                              if(_loc3_ || _loc3_)
                                                                              {
                                                                                 addr0185:
                                                                                 §§push(5);
                                                                                 if(_loc3_ || Boolean(this))
                                                                                 {
                                                                                    addr0194:
                                                                                    §§pop()[§§pop()] = new Binding(this,function():String
                                                                                    {
                                                                                       var _loc1_:* = hostComponent.getStyle("libraryName");
                                                                                       return _loc1_ == undefined ? null : String(_loc1_);
                                                                                    },null,"_QuadToggleButtonSkin_BriskImageDynaLib2.dynaLibName");
                                                                                    if(!(_loc2_ && _loc2_))
                                                                                    {
                                                                                       §§push(§§newactivation());
                                                                                       if(!(_loc2_ && Boolean(this)))
                                                                                       {
                                                                                          §§push(§§pop().§§slot[1]);
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             §§push(6);
                                                                                             if(!(_loc2_ && _loc2_))
                                                                                             {
                                                                                                §§pop()[§§pop()] = new Binding(this,function():String
                                                                                                {
                                                                                                   var _loc1_:* = hostComponent.getStyle("middleImage");
                                                                                                   return _loc1_ == undefined ? null : String(_loc1_);
                                                                                                },null,"_QuadToggleButtonSkin_BriskImageDynaLib2.dynaBmpSourceName");
                                                                                                if(_loc3_ || _loc1_)
                                                                                                {
                                                                                                   §§push(§§newactivation());
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      §§push(§§pop().§§slot[1]);
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         §§push(7);
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            §§pop()[§§pop()] = new Binding(this,function():String
                                                                                                            {
                                                                                                               var _loc1_:* = hostComponent.getStyle("fileName");
                                                                                                               return _loc1_ == undefined ? null : String(_loc1_);
                                                                                                            },null,"_QuadToggleButtonSkin_BriskImageDynaLib2.dynaSWFFileName");
                                                                                                            if(!(_loc2_ && _loc2_))
                                                                                                            {
                                                                                                               §§push(§§newactivation());
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  addr022f:
                                                                                                                  §§push(§§pop().§§slot[1]);
                                                                                                                  if(!_loc2_)
                                                                                                                  {
                                                                                                                     §§push(8);
                                                                                                                     if(_loc3_ || _loc1_)
                                                                                                                     {
                                                                                                                        §§pop()[§§pop()] = new Binding(this,function():String
                                                                                                                        {
                                                                                                                           var _loc1_:* = hostComponent.getStyle("libraryName");
                                                                                                                           return _loc1_ == undefined ? null : String(_loc1_);
                                                                                                                        },null,"_QuadToggleButtonSkin_BriskImageDynaLib3.dynaLibName");
                                                                                                                        if(_loc3_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§push(§§newactivation());
                                                                                                                           if(!_loc2_)
                                                                                                                           {
                                                                                                                              addr026a:
                                                                                                                              §§push(§§pop().§§slot[1]);
                                                                                                                              if(_loc3_ || _loc3_)
                                                                                                                              {
                                                                                                                                 §§push(9);
                                                                                                                                 if(!_loc2_)
                                                                                                                                 {
                                                                                                                                    §§pop()[§§pop()] = new Binding(this,function():String
                                                                                                                                    {
                                                                                                                                       var _loc1_:* = hostComponent.getStyle("topImage");
                                                                                                                                       return _loc1_ == undefined ? null : String(_loc1_);
                                                                                                                                    },null,"_QuadToggleButtonSkin_BriskImageDynaLib3.dynaBmpSourceName");
                                                                                                                                    if(_loc3_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       addr029e:
                                                                                                                                       §§push(§§newactivation());
                                                                                                                                       if(_loc3_)
                                                                                                                                       {
                                                                                                                                          addr02a5:
                                                                                                                                          §§push(§§pop().§§slot[1]);
                                                                                                                                          if(_loc3_)
                                                                                                                                          {
                                                                                                                                             addr02ac:
                                                                                                                                             §§push(10);
                                                                                                                                             if(_loc3_)
                                                                                                                                             {
                                                                                                                                                addr02b3:
                                                                                                                                                §§pop()[§§pop()] = new Binding(this,function():String
                                                                                                                                                {
                                                                                                                                                   var _loc1_:* = hostComponent.getStyle("fileName");
                                                                                                                                                   return _loc1_ == undefined ? null : String(_loc1_);
                                                                                                                                                },null,"_QuadToggleButtonSkin_BriskImageDynaLib3.dynaSWFFileName");
                                                                                                                                                if(_loc3_ || _loc1_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§newactivation());
                                                                                                                                                   if(!_loc2_)
                                                                                                                                                   {
                                                                                                                                                      addr02d8:
                                                                                                                                                      §§push(§§pop().§§slot[1]);
                                                                                                                                                      if(_loc3_)
                                                                                                                                                      {
                                                                                                                                                         addr02df:
                                                                                                                                                         §§push(11);
                                                                                                                                                         if(_loc3_)
                                                                                                                                                         {
                                                                                                                                                            §§pop()[§§pop()] = new Binding(this,function():String
                                                                                                                                                            {
                                                                                                                                                               var _loc1_:* = hostComponent.getStyle("libraryName");
                                                                                                                                                               return _loc1_ == undefined ? null : String(_loc1_);
                                                                                                                                                            },null,"_QuadToggleButtonSkin_BriskImageDynaLib4.dynaLibName");
                                                                                                                                                            addr02e6:
                                                                                                                                                            if(!(_loc2_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§newactivation());
                                                                                                                                                               if(_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().§§slot[1]);
                                                                                                                                                                  if(_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     addr031e:
                                                                                                                                                                     §§push(12);
                                                                                                                                                                     if(!(_loc2_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        addr032d:
                                                                                                                                                                        §§pop()[§§pop()] = new Binding(this,function():String
                                                                                                                                                                        {
                                                                                                                                                                           var _loc1_:* = hostComponent.getStyle("iconImage");
                                                                                                                                                                           return _loc1_ == undefined ? null : String(_loc1_);
                                                                                                                                                                        },null,"_QuadToggleButtonSkin_BriskImageDynaLib4.dynaBmpSourceName");
                                                                                                                                                                        if(_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           addr0343:
                                                                                                                                                                           §§push(§§newactivation());
                                                                                                                                                                           if(_loc3_ || _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop().§§slot[1]);
                                                                                                                                                                              if(!_loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(13);
                                                                                                                                                                                 if(!(_loc2_ && _loc1_))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop()[§§pop()] = new Binding(this,function():*
                                                                                                                                                                                    {
                                                                                                                                                                                       return hostComponent.getStyle("iconSelectedImage");
                                                                                                                                                                                    },null,"_QuadToggleButtonSkin_SetProperty1.value");
                                                                                                                                                                                    if(!_loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§newactivation());
                                                                                                                                                                                       if(!(_loc2_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr038d:
                                                                                                                                                                                          §§push(§§pop().§§slot[1]);
                                                                                                                                                                                          if(!(_loc2_ && Boolean(this)))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(14);
                                                                                                                                                                                             if(_loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop()[§§pop()] = new Binding(this,function():*
                                                                                                                                                                                                {
                                                                                                                                                                                                   return hostComponent.getStyle("iconSelectedImage");
                                                                                                                                                                                                },null,"_QuadToggleButtonSkin_SetProperty2.value");
                                                                                                                                                                                                if(!(_loc2_ && Boolean(this)))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§newactivation());
                                                                                                                                                                                                   if(_loc3_ || _loc1_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr03d0:
                                                                                                                                                                                                      §§push(§§pop().§§slot[1]);
                                                                                                                                                                                                      if(_loc3_ || _loc1_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(15);
                                                                                                                                                                                                         if(_loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr03e6:
                                                                                                                                                                                                            §§pop()[§§pop()] = new Binding(this,function():*
                                                                                                                                                                                                            {
                                                                                                                                                                                                               return hostComponent.getStyle("iconSelectedImage");
                                                                                                                                                                                                            },null,"_QuadToggleButtonSkin_SetProperty3.value");
                                                                                                                                                                                                            if(!_loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§newactivation());
                                                                                                                                                                                                               if(!(_loc2_ && Boolean(this)))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop().§§slot[1]);
                                                                                                                                                                                                                  if(!(_loc2_ && Boolean(this)))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr041a:
                                                                                                                                                                                                                     §§push(16);
                                                                                                                                                                                                                     if(!_loc2_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§pop()[§§pop()] = new Binding(this,function():*
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           return hostComponent.getStyle("iconSelectedImage");
                                                                                                                                                                                                                        },null,"_QuadToggleButtonSkin_SetProperty4.value");
                                                                                                                                                                                                                        if(!(_loc2_ && _loc1_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr043f:
                                                                                                                                                                                                                           §§push(§§newactivation());
                                                                                                                                                                                                                           if(!_loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop().§§slot[1]);
                                                                                                                                                                                                                              if(_loc3_ || Boolean(this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr0455:
                                                                                                                                                                                                                                 §§push(17);
                                                                                                                                                                                                                                 if(!_loc2_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr045c:
                                                                                                                                                                                                                                    §§pop()[§§pop()] = new Binding(this,function():String
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       var _loc1_:* = hostComponent.getStyle("fileName");
                                                                                                                                                                                                                                       return _loc1_ == undefined ? null : String(_loc1_);
                                                                                                                                                                                                                                    },null,"_QuadToggleButtonSkin_BriskImageDynaLib4.dynaSWFFileName");
                                                                                                                                                                                                                                    if(!_loc2_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§newactivation());
                                                                                                                                                                                                                                       if(_loc3_ || _loc2_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr0481:
                                                                                                                                                                                                                                          §§push(§§pop().§§slot[1]);
                                                                                                                                                                                                                                          if(_loc3_ || _loc1_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr0490:
                                                                                                                                                                                                                                             §§push(18);
                                                                                                                                                                                                                                             if(_loc3_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr0497:
                                                                                                                                                                                                                                                §§pop()[§§pop()] = new Binding(this,function():String
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   var _loc1_:* = hostComponent.getStyle("libraryName");
                                                                                                                                                                                                                                                   return _loc1_ == undefined ? null : String(_loc1_);
                                                                                                                                                                                                                                                },null,"_QuadToggleButtonSkin_BriskImageDynaLib5.dynaLibName");
                                                                                                                                                                                                                                                if(!(_loc2_ && Boolean(this)))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr04b5:
                                                                                                                                                                                                                                                   §§push(§§newactivation());
                                                                                                                                                                                                                                                   if(_loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop().§§slot[1]);
                                                                                                                                                                                                                                                      if(!(_loc2_ && Boolean(this)))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr04cb:
                                                                                                                                                                                                                                                         §§push(19);
                                                                                                                                                                                                                                                         if(!(_loc2_ && _loc1_))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§pop()[§§pop()] = new Binding(this,function():String
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               var _loc1_:* = hostComponent.getStyle("maskImage");
                                                                                                                                                                                                                                                               return _loc1_ == undefined ? null : String(_loc1_);
                                                                                                                                                                                                                                                            },null,"_QuadToggleButtonSkin_BriskImageDynaLib5.dynaBmpSourceName");
                                                                                                                                                                                                                                                            if(_loc3_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr04f0);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr0567);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr0515);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr0585);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr04ff);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr05aa);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr0515);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr061f);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr05b1);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr05dd);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr0515);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr0506);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr0576);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr052b);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr0515);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr04cb);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr04ff);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr043f);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr0497);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr041a);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr0481);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr043f);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr0548);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr0490);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr0576);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr05aa);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr0548);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr0455);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr05b1);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr04b5);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr045c);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr0585);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0481);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr04b5);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr05c7);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr04cb);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr03d0);
                                                                                                                                                }
                                                                                                                                                §§goto(addr05dd);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0548);
                                                                                                                                          }
                                                                                                                                          §§goto(addr02df);
                                                                                                                                       }
                                                                                                                                       §§goto(addr038d);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0343);
                                                                                                                                 }
                                                                                                                                 §§goto(addr02e6);
                                                                                                                              }
                                                                                                                              §§goto(addr0506);
                                                                                                                           }
                                                                                                                           §§goto(addr02d8);
                                                                                                                        }
                                                                                                                        addr04f0:
                                                                                                                        §§push(§§newactivation());
                                                                                                                        if(!(_loc2_ && _loc2_))
                                                                                                                        {
                                                                                                                           addr04ff:
                                                                                                                           §§push(§§pop().§§slot[1]);
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              addr0506:
                                                                                                                              §§push(20);
                                                                                                                              if(!(_loc2_ && _loc2_))
                                                                                                                              {
                                                                                                                                 addr0515:
                                                                                                                                 §§pop()[§§pop()] = new Binding(this,function():String
                                                                                                                                 {
                                                                                                                                    var _loc1_:* = hostComponent.getStyle("fileName");
                                                                                                                                    return _loc1_ == undefined ? null : String(_loc1_);
                                                                                                                                 },null,"_QuadToggleButtonSkin_BriskImageDynaLib5.dynaSWFFileName");
                                                                                                                                 if(_loc3_)
                                                                                                                                 {
                                                                                                                                    addr052b:
                                                                                                                                    §§push(§§newactivation());
                                                                                                                                    if(_loc3_)
                                                                                                                                    {
                                                                                                                                       addr0532:
                                                                                                                                       §§push(§§pop().§§slot[1]);
                                                                                                                                       if(_loc3_)
                                                                                                                                       {
                                                                                                                                          §§push(21);
                                                                                                                                          if(!(_loc2_ && Boolean(this)))
                                                                                                                                          {
                                                                                                                                             addr0548:
                                                                                                                                             §§pop()[§§pop()] = new Binding(this,null,null,"_QuadToggleButtonSkin_BriskImageDynaLib5.mask","maskImage");
                                                                                                                                             if(_loc3_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                addr0567:
                                                                                                                                                §§push(§§newactivation());
                                                                                                                                                if(!(_loc2_ && Boolean(this)))
                                                                                                                                                {
                                                                                                                                                   §§goto(addr0576);
                                                                                                                                                }
                                                                                                                                                §§goto(addr061d);
                                                                                                                                             }
                                                                                                                                             §§goto(addr05aa);
                                                                                                                                          }
                                                                                                                                          §§goto(addr060a);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0585);
                                                                                                                                    }
                                                                                                                                    addr0576:
                                                                                                                                    §§push(§§pop().§§slot[1]);
                                                                                                                                    if(!(_loc2_ && Boolean(this)))
                                                                                                                                    {
                                                                                                                                       addr0585:
                                                                                                                                       §§push(22);
                                                                                                                                       if(!_loc2_)
                                                                                                                                       {
                                                                                                                                          §§pop()[§§pop()] = new Binding(this,function():String
                                                                                                                                          {
                                                                                                                                             var _loc1_:* = hostComponent.getStyle("libraryName");
                                                                                                                                             return _loc1_ == undefined ? null : String(_loc1_);
                                                                                                                                          },null,"maskImage.dynaLibName");
                                                                                                                                          if(_loc3_ || Boolean(this))
                                                                                                                                          {
                                                                                                                                             addr05aa:
                                                                                                                                             §§push(§§newactivation());
                                                                                                                                             if(_loc3_)
                                                                                                                                             {
                                                                                                                                                addr05b1:
                                                                                                                                                §§push(§§pop().§§slot[1]);
                                                                                                                                                if(!_loc2_)
                                                                                                                                                {
                                                                                                                                                   §§push(23);
                                                                                                                                                   if(!(_loc2_ && Boolean(this)))
                                                                                                                                                   {
                                                                                                                                                      addr05c7:
                                                                                                                                                      §§pop()[§§pop()] = new Binding(this,function():String
                                                                                                                                                      {
                                                                                                                                                         var _loc1_:* = hostComponent.getStyle("maskImage");
                                                                                                                                                         return _loc1_ == undefined ? null : String(_loc1_);
                                                                                                                                                      },null,"maskImage.dynaBmpSourceName");
                                                                                                                                                      if(_loc3_)
                                                                                                                                                      {
                                                                                                                                                         addr05dd:
                                                                                                                                                         §§push(§§newactivation());
                                                                                                                                                         if(!(_loc2_ && Boolean(this)))
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr061f);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr061d);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr061b);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr060a);
                                                                                                                                                }
                                                                                                                                                §§goto(addr0608);
                                                                                                                                             }
                                                                                                                                             §§goto(addr061d);
                                                                                                                                          }
                                                                                                                                          §§goto(addr061b);
                                                                                                                                       }
                                                                                                                                       §§goto(addr05c7);
                                                                                                                                    }
                                                                                                                                    addr061f:
                                                                                                                                    §§goto(addr05f9);
                                                                                                                                 }
                                                                                                                                 §§goto(addr061b);
                                                                                                                              }
                                                                                                                              §§goto(addr05c7);
                                                                                                                           }
                                                                                                                           §§goto(addr0585);
                                                                                                                        }
                                                                                                                        addr05f9:
                                                                                                                        §§push(§§pop().§§slot[1]);
                                                                                                                        if(!(_loc2_ && _loc3_))
                                                                                                                        {
                                                                                                                           addr060a:
                                                                                                                           §§pop()[24] = new Binding(this,function():String
                                                                                                                           {
                                                                                                                              var _loc1_:* = hostComponent.getStyle("fileName");
                                                                                                                              return _loc1_ == undefined ? null : String(_loc1_);
                                                                                                                           },null,"maskImage.dynaSWFFileName");
                                                                                                                           addr061d:
                                                                                                                           addr061b:
                                                                                                                           §§push(result);
                                                                                                                           addr0608:
                                                                                                                        }
                                                                                                                        return §§pop();
                                                                                                                     }
                                                                                                                     §§goto(addr02b3);
                                                                                                                  }
                                                                                                                  §§goto(addr061f);
                                                                                                               }
                                                                                                               §§goto(addr04ff);
                                                                                                            }
                                                                                                            §§goto(addr029e);
                                                                                                         }
                                                                                                         §§goto(addr02e6);
                                                                                                      }
                                                                                                      §§goto(addr02ac);
                                                                                                   }
                                                                                                   §§goto(addr026a);
                                                                                                }
                                                                                                §§goto(addr05aa);
                                                                                             }
                                                                                             §§goto(addr03e6);
                                                                                          }
                                                                                          §§goto(addr04cb);
                                                                                       }
                                                                                       §§goto(addr038d);
                                                                                    }
                                                                                    §§goto(addr04b5);
                                                                                 }
                                                                                 §§goto(addr060a);
                                                                              }
                                                                              §§goto(addr041a);
                                                                           }
                                                                           §§goto(addr0532);
                                                                        }
                                                                        §§goto(addr052b);
                                                                     }
                                                                     §§goto(addr0194);
                                                                  }
                                                                  §§goto(addr0608);
                                                               }
                                                               §§goto(addr022f);
                                                            }
                                                            §§goto(addr05aa);
                                                         }
                                                         §§goto(addr02b3);
                                                      }
                                                      §§goto(addr0185);
                                                   }
                                                   §§goto(addr02a5);
                                                }
                                                §§goto(addr052b);
                                             }
                                             §§goto(addr032d);
                                          }
                                          §§goto(addr031e);
                                       }
                                       §§goto(addr0176);
                                    }
                                    §§goto(addr00f1);
                                 }
                                 §§goto(addr05c7);
                              }
                              §§goto(addr00c4);
                           }
                           §§goto(addr02d8);
                        }
                        §§goto(addr0567);
                     }
                     §§goto(addr00d3);
                  }
                  §§goto(addr010f);
               }
               §§goto(addr061d);
            }
            §§goto(addr052b);
         }
         §§goto(addr02d8);
      }
      
      [Bindable(event="propertyChange")]
      public function get _QuadToggleButtonSkin_BriskImageDynaLib4() : BriskImageDynaLib
      {
         return this._749892279_QuadToggleButtonSkin_BriskImageDynaLib4;
      }
      
      public function set _QuadToggleButtonSkin_BriskImageDynaLib4(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._749892279_QuadToggleButtonSkin_BriskImageDynaLib4;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._749892279_QuadToggleButtonSkin_BriskImageDynaLib4 = param1;
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0073:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_QuadToggleButtonSkin_BriskImageDynaLib4",_loc2_,param1));
                        }
                     }
                     §§goto(addr0082);
                  }
                  §§goto(addr0073);
               }
            }
         }
         addr0082:
      }
      
      [Bindable(event="propertyChange")]
      public function get _QuadToggleButtonSkin_SetProperty1() : SetProperty
      {
         return this._466548048_QuadToggleButtonSkin_SetProperty1;
      }
      
      public function set _QuadToggleButtonSkin_SetProperty1(param1:SetProperty) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._466548048_QuadToggleButtonSkin_SetProperty1;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._466548048_QuadToggleButtonSkin_SetProperty1 = param1;
                  addr0047:
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_QuadToggleButtonSkin_SetProperty1",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0087);
               }
               §§goto(addr0078);
            }
            addr0087:
            return;
         }
         §§goto(addr0047);
      }
      
      [Bindable(event="propertyChange")]
      public function get _QuadToggleButtonSkin_SetProperty2() : SetProperty
      {
         return this._466548047_QuadToggleButtonSkin_SetProperty2;
      }
      
      public function set _QuadToggleButtonSkin_SetProperty2(param1:SetProperty) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._466548047_QuadToggleButtonSkin_SetProperty2;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._466548047_QuadToggleButtonSkin_SetProperty2 = param1;
                  addr0036:
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_QuadToggleButtonSkin_SetProperty2",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0036);
      }
      
      [Bindable(event="propertyChange")]
      public function get _QuadToggleButtonSkin_SetProperty3() : SetProperty
      {
         return this._466548046_QuadToggleButtonSkin_SetProperty3;
      }
      
      public function set _QuadToggleButtonSkin_SetProperty3(param1:SetProperty) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._466548046_QuadToggleButtonSkin_SetProperty3;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._466548046_QuadToggleButtonSkin_SetProperty3 = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     §§goto(addr0057);
                  }
                  §§goto(addr006f);
               }
               addr0057:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr006f:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_QuadToggleButtonSkin_SetProperty3",_loc2_,param1));
                  }
               }
               §§goto(addr007e);
            }
            addr007e:
            return;
         }
         §§goto(addr0057);
      }
      
      [Bindable(event="propertyChange")]
      public function get _QuadToggleButtonSkin_SetProperty4() : SetProperty
      {
         return this._466548045_QuadToggleButtonSkin_SetProperty4;
      }
      
      public function set _QuadToggleButtonSkin_SetProperty4(param1:SetProperty) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._466548045_QuadToggleButtonSkin_SetProperty4;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._466548045_QuadToggleButtonSkin_SetProperty4 = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_QuadToggleButtonSkin_SetProperty4",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
               }
               §§goto(addr006d);
            }
            addr007c:
            return;
         }
         §§goto(addr006d);
      }
      
      [Bindable(event="propertyChange")]
      public function get badgeImage() : BriskImageDynaLib
      {
         return this._1060367224badgeImage;
      }
      
      public function set badgeImage(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1060367224badgeImage;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._1060367224badgeImage = param1;
                  if(!_loc4_)
                  {
                     addr0053:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0063:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"badgeImage",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0072);
               }
               §§goto(addr0053);
            }
            addr0072:
            return;
         }
         §§goto(addr0063);
      }
      
      [Bindable(event="propertyChange")]
      public function get blendGroup() : Group
      {
         return this._1988292782blendGroup;
      }
      
      public function set blendGroup(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1988292782blendGroup;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._1988292782blendGroup = param1;
                  addr0041:
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"blendGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0041);
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
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._410956671container = param1;
                  if(_loc3_)
                  {
                     addr005b:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"container",_loc2_,param1));
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
         §§goto(addr005b);
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
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr004f:
                  this._1412649594iconGroup = param1;
                  if(!_loc4_)
                  {
                     addr005a:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0078);
               }
               §§goto(addr005a);
            }
            addr0078:
            return;
         }
         §§goto(addr004f);
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
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._72342065maskImage = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     §§goto(addr0069);
                  }
                  §§goto(addr0078);
               }
               addr0069:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_)
                  {
                     addr0078:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maskImage",_loc2_,param1));
                  }
               }
               §§goto(addr0087);
            }
            addr0087:
            return;
         }
         §§goto(addr0078);
      }
      
      [Bindable(event="propertyChange")]
      public function get middleGroup() : Group
      {
         return this._399041002middleGroup;
      }
      
      public function set middleGroup(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._399041002middleGroup;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  addr003a:
                  this._399041002middleGroup = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"middleGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0080);
               }
               §§goto(addr0071);
            }
            addr0080:
            return;
         }
         §§goto(addr003a);
      }
      
      [Bindable(event="propertyChange")]
      public function get shadowGroup() : Group
      {
         return this._1585954497shadowGroup;
      }
      
      public function set shadowGroup(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1585954497shadowGroup;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._1585954497shadowGroup = param1;
                  if(_loc4_)
                  {
                     §§goto(addr005c);
                  }
                  §§goto(addr0073);
               }
               addr005c:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr0073:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shadowGroup",_loc2_,param1));
                  }
               }
               §§goto(addr0082);
            }
         }
         addr0082:
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1584270309shadowImage = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shadowImage",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get topGroup() : Group
      {
         return this._988229078topGroup;
      }
      
      public function set topGroup(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._988229078topGroup;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  addr0039:
                  this._988229078topGroup = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0054:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"topGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0063);
               }
               §§goto(addr0054);
            }
            addr0063:
            return;
         }
         §§goto(addr0039);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : QuadToggleButton
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:QuadToggleButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._213507019hostComponent;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._213507019hostComponent = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0062:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0062);
      }
   }
}

