package net.bigpoint.cityrama.view.common.skins
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
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.StepMarkerBarComponent;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class StepMarkerBarSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _940952062blendBar:HGroup;
      
      private var _2079454161markerHGroup:HGroup;
      
      private var _1131509414progressBar:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:StepMarkerBarComponent;
      
      public function StepMarkerBarSkin()
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
         if(!_loc4_)
         {
            §§push(null);
            if(_loc3_ || _loc2_)
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc3_)
               {
                  §§push(§§newactivation());
                  if(_loc3_ || _loc3_)
                  {
                     §§push(null);
                     if(!(_loc4_ && _loc1_))
                     {
                        addr0053:
                        §§pop().§§slot[3] = §§pop();
                        if(!_loc4_)
                        {
                           §§push(§§newactivation());
                           if(!_loc4_)
                           {
                              addr0066:
                              §§pop().§§slot[5] = null;
                              if(!(_loc4_ && _loc3_))
                              {
                                 this.mx_internal::_bindings = [];
                                 if(!_loc4_)
                                 {
                                    this.mx_internal::_watchers = [];
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(!(_loc4_ && _loc1_))
                                       {
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(_loc3_ || _loc3_)
                                          {
                                             addr00bf:
                                             super();
                                             if(_loc3_)
                                             {
                                                mx_internal::_document = this;
                                                if(_loc3_)
                                                {
                                                   §§push(§§newactivation());
                                                   if(!_loc4_)
                                                   {
                                                      addr00e1:
                                                      §§pop().§§slot[1] = this._StepMarkerBarSkin_bindingsSetup();
                                                      if(!(_loc4_ && _loc1_))
                                                      {
                                                         addr00f9:
                                                         §§push(§§newactivation());
                                                         if(!(_loc4_ && _loc2_))
                                                         {
                                                            §§pop().§§slot[2] = [];
                                                            if(!_loc4_)
                                                            {
                                                               addr0115:
                                                               §§push(§§newactivation());
                                                               if(!_loc4_)
                                                               {
                                                                  §§pop().§§slot[3] = this;
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(_loc3_ || Boolean(this))
                                                                        {
                                                                           addr013d:
                                                                           §§push(§§newactivation());
                                                                           if(!_loc4_)
                                                                           {
                                                                              addr0145:
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_common_skins_StepMarkerBarSkinWatcherSetupUtil");
                                                                              if(_loc3_)
                                                                              {
                                                                                 addr0158:
                                                                                 §§push(§§newactivation());
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr016c:
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr0183:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return StepMarkerBarSkin[param1];
                                                                                       },bindings,watchers);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr019f:
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(_loc3_ || Boolean(this))
                                                                                          {
                                                                                             addr01cd:
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                addr01f4:
                                                                                                this.mxmlContent = [this._StepMarkerBarSkin_HGroup1_c(),this._StepMarkerBarSkin_HGroup2_c(),this._StepMarkerBarSkin_HGroup5_i()];
                                                                                                if(_loc3_ || _loc1_)
                                                                                                {
                                                                                                   addr0218:
                                                                                                   this.currentState = "normal";
                                                                                                   if(!(_loc4_ && _loc3_))
                                                                                                   {
                                                                                                      this.addEventListener("creationComplete",this.___StepMarkerBarSkin_SparkSkin1_creationComplete);
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         addr023e:
                                                                                                         states = [new State({
                                                                                                            "name":"normal",
                                                                                                            "overrides":[]
                                                                                                         }),new State({
                                                                                                            "name":"disabled",
                                                                                                            "overrides":[]
                                                                                                         })];
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            addr026d:
                                                                                                            i = 0;
                                                                                                            addr026b:
                                                                                                         }
                                                                                                      }
                                                                                                      var _temp_15:*;
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
                                                                                                                  if(!(_loc3_ || _loc3_))
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(_loc3_ || Boolean(this))
                                                                                                                  {
                                                                                                                     §§push(§§pop().§§slot[4]);
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        §§push(uint(§§pop() + 1));
                                                                                                                        if(_loc3_ || _loc2_)
                                                                                                                        {
                                                                                                                           §§push(§§newactivation());
                                                                                                                           if(!(_loc4_ && _loc2_))
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
                                                                                                      while(var _temp_15:* = §§pop(), §§pop().§§slot[4] = _temp_15, _loc3_ || _loc2_);
                                                                                                      
                                                                                                      return;
                                                                                                      addr02ea:
                                                                                                   }
                                                                                                   §§goto(addr026b);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr02ea);
                                                                                          }
                                                                                          §§goto(addr0218);
                                                                                       }
                                                                                       §§goto(addr02ea);
                                                                                    }
                                                                                    §§goto(addr019f);
                                                                                 }
                                                                                 §§goto(addr026d);
                                                                              }
                                                                              §§goto(addr02ea);
                                                                           }
                                                                           §§goto(addr026d);
                                                                        }
                                                                        §§goto(addr01f4);
                                                                     }
                                                                     §§goto(addr0183);
                                                                  }
                                                                  §§goto(addr013d);
                                                               }
                                                               §§goto(addr016c);
                                                            }
                                                            §§goto(addr019f);
                                                         }
                                                         §§goto(addr0145);
                                                      }
                                                      §§goto(addr0158);
                                                   }
                                                   §§goto(addr026d);
                                                }
                                                §§goto(addr0115);
                                             }
                                             §§goto(addr01f4);
                                          }
                                          §§goto(addr00f9);
                                       }
                                       §§goto(addr00bf);
                                    }
                                    §§goto(addr023e);
                                 }
                                 §§goto(addr0218);
                              }
                              §§goto(addr00bf);
                           }
                           §§goto(addr00e1);
                        }
                        §§goto(addr01f4);
                     }
                     §§goto(addr0066);
                  }
                  §§goto(addr016c);
               }
               §§goto(addr01cd);
            }
            §§goto(addr0053);
         }
         §§goto(addr00e1);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            StepMarkerBarSkin._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc2_ || Boolean(this))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || Boolean(this))
                  {
                     §§goto(addr004a);
                  }
               }
               §§goto(addr0050);
            }
            addr004a:
            return;
         }
         addr0050:
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super.initialize();
         }
      }
      
      private function handleCreationComplete() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Number = this.hostComponent.getStyle("tint") as uint;
         if(_loc3_)
         {
            TweenMax.to(this.blendBar,0,{"tint":_loc1_});
         }
      }
      
      private function _StepMarkerBarSkin_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.verticalCenter = 0;
               if(_loc3_)
               {
                  addr0046:
                  _loc1_.gap = 0;
                  if(_loc3_ || Boolean(this))
                  {
                     addr0065:
                     _loc1_.mxmlContent = [this._StepMarkerBarSkin_BriskImageDynaLib1_c(),this._StepMarkerBarSkin_BriskImageDynaLib2_c(),this._StepMarkerBarSkin_BriskImageDynaLib3_c()];
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0065);
         }
         §§goto(addr0046);
      }
      
      private function _StepMarkerBarSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "ui_main_inner_ressourcebase_left";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  §§goto(addr0066);
               }
               §§goto(addr007a);
            }
            addr0066:
            if(!_loc1_.document)
            {
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr007a:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr007a);
      }
      
      private function _StepMarkerBarSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "ui_main_inner_ressourcebase_middle";
               if(!_loc2_)
               {
                  addr005d:
                  _loc1_.percentWidth = 100;
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           addr007b:
                           _loc1_.document = this;
                        }
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr007b);
            }
         }
         §§goto(addr005d);
      }
      
      private function _StepMarkerBarSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
            if(!_loc3_)
            {
               addr004b:
               _loc1_.dynaBmpSourceName = "ui_main_inner_ressourcebase_right";
               if(_loc2_ || _loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr006a:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr006e);
               }
               §§goto(addr006a);
            }
            addr006e:
            return _loc1_;
         }
         §§goto(addr004b);
      }
      
      private function _StepMarkerBarSkin_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.paddingLeft = 3;
               if(_loc2_ || _loc3_)
               {
                  addr004f:
                  _loc1_.paddingRight = 3;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.verticalCenter = 0;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr0080:
                        _loc1_.mxmlContent = [this._StepMarkerBarSkin_Group1_i()];
                        if(!_loc3_)
                        {
                           addr0090:
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || Boolean(this))
                              {
                                 _loc1_.document = this;
                              }
                           }
                        }
                     }
                     §§goto(addr00a8);
                  }
                  §§goto(addr0090);
               }
               addr00a8:
               return _loc1_;
            }
            §§goto(addr004f);
         }
         §§goto(addr0080);
      }
      
      private function _StepMarkerBarSkin_Group1_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.verticalCenter = 0;
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._StepMarkerBarSkin_HGroup3_c(),this._StepMarkerBarSkin_HGroup4_i()];
                  if(_loc3_ || _loc3_)
                  {
                     addr0067:
                     _loc1_.id = "progressBar";
                     if(!_loc2_)
                     {
                        addr007f:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              §§goto(addr008b);
                           }
                           §§goto(addr009e);
                        }
                        §§goto(addr0094);
                     }
                  }
                  §§goto(addr009e);
               }
               §§goto(addr0067);
            }
            addr008b:
            _loc1_.document = this;
            if(_loc3_)
            {
               addr0094:
               this.progressBar = _loc1_;
               if(_loc3_)
               {
                  addr009e:
                  BindingManager.executeBindings(this,"progressBar",this.progressBar);
               }
            }
            return _loc1_;
         }
         §§goto(addr007f);
      }
      
      private function _StepMarkerBarSkin_HGroup3_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.gap = 0;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.verticalCenter = 0;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.percentWidth = 100;
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.mxmlContent = [this._StepMarkerBarSkin_BriskImageDynaLib4_c(),this._StepMarkerBarSkin_BriskImageDynaLib5_c(),this._StepMarkerBarSkin_BriskImageDynaLib6_c()];
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        §§goto(addr008e);
                     }
                  }
               }
               §§goto(addr00a2);
            }
         }
         addr008e:
         if(!_loc1_.document)
         {
            if(_loc3_ || _loc3_)
            {
               addr00a2:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _StepMarkerBarSkin_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.dynaBmpSourceName = "ui_main_inner_ressourcelevel_left";
               §§goto(addr0041);
            }
            §§goto(addr0075);
         }
         addr0041:
         if(_loc2_ || Boolean(this))
         {
            if(!_loc1_.document)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr0075:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _StepMarkerBarSkin_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
            if(_loc2_ || _loc2_)
            {
               _loc1_.dynaBmpSourceName = "ui_main_inner_ressourcelevel_middle";
               if(_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc3_)
                  {
                     addr005d:
                     _loc1_.percentHeight = 100;
                     if(_loc2_)
                     {
                        addr0067:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              addr007b:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr007f);
                     }
                     §§goto(addr007b);
                  }
                  addr007f:
                  return _loc1_;
               }
               §§goto(addr0067);
            }
            §§goto(addr005d);
         }
         §§goto(addr007b);
      }
      
      private function _StepMarkerBarSkin_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "ui_main_inner_ressourcelevel_right";
               if(!(_loc3_ && _loc3_))
               {
                  addr0065:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr007d);
            }
            §§goto(addr0065);
         }
         addr007d:
         return _loc1_;
      }
      
      private function _StepMarkerBarSkin_HGroup4_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc2_)
         {
            _loc1_.gap = 0;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.verticalCenter = 0;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.percentWidth = 100;
                  if(!(_loc2_ && _loc2_))
                  {
                     addr006d:
                     _loc1_.mxmlContent = [this._StepMarkerBarSkin_BriskImageDynaLib7_c(),this._StepMarkerBarSkin_BriskImageDynaLib8_c(),this._StepMarkerBarSkin_BriskImageDynaLib9_c()];
                     if(_loc3_ || Boolean(this))
                     {
                        §§goto(addr0091);
                     }
                     §§goto(addr00b3);
                  }
                  §§goto(addr009c);
               }
               §§goto(addr006d);
            }
            addr0091:
            _loc1_.id = "blendBar";
            if(!_loc2_)
            {
               addr009c:
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr00b3:
                     _loc1_.document = this;
                     if(!_loc2_)
                     {
                        §§goto(addr00bc);
                     }
                     §§goto(addr00ce);
                  }
               }
               addr00bc:
               this.blendBar = _loc1_;
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr00ce:
                  BindingManager.executeBindings(this,"blendBar",this.blendBar);
               }
               §§goto(addr00db);
            }
            addr00db:
            return _loc1_;
         }
         §§goto(addr00ce);
      }
      
      private function _StepMarkerBarSkin_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "ui_main_inner_ressourcelevel_left";
               if(_loc3_)
               {
                  addr0060:
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr0074:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0078);
               }
               §§goto(addr0074);
            }
            addr0078:
            return _loc1_;
         }
         §§goto(addr0060);
      }
      
      private function _StepMarkerBarSkin_BriskImageDynaLib8_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "ui_main_inner_ressourcelevel_middle";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr0059:
                  _loc1_.percentWidth = 100;
                  if(!_loc2_)
                  {
                     _loc1_.percentHeight = 100;
                     addr0063:
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        §§goto(addr0080);
                     }
                     §§goto(addr0094);
                  }
                  addr0080:
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr0094:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0098);
               }
               addr0098:
               return _loc1_;
            }
            §§goto(addr0063);
         }
         §§goto(addr0059);
      }
      
      private function _StepMarkerBarSkin_BriskImageDynaLib9_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "ui_main_inner_ressourcelevel_right";
               if(_loc3_ || _loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr0070:
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0070);
      }
      
      private function _StepMarkerBarSkin_HGroup5_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.gap = 0;
            if(!_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(_loc3_)
               {
                  §§goto(addr003b);
               }
               §§goto(addr0075);
            }
            addr003b:
            _loc1_.verticalAlign = "middle";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               addr0059:
               _loc1_.horizontalAlign = "center";
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.verticalCenter = 0;
                  if(_loc3_)
                  {
                     addr0075:
                     _loc1_.id = "markerHGroup";
                     if(!_loc2_)
                     {
                        addr0080:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              §§goto(addr0097);
                           }
                           §§goto(addr00b2);
                        }
                        §§goto(addr00a0);
                     }
                     addr0097:
                     _loc1_.document = this;
                     if(_loc3_)
                     {
                        addr00a0:
                        this.markerHGroup = _loc1_;
                        if(!(_loc2_ && _loc2_))
                        {
                           addr00b2:
                           BindingManager.executeBindings(this,"markerHGroup",this.markerHGroup);
                        }
                     }
                     §§goto(addr00bf);
                  }
                  §§goto(addr00a0);
               }
               §§goto(addr0080);
            }
            addr00bf:
            return _loc1_;
         }
         §§goto(addr0059);
      }
      
      public function ___StepMarkerBarSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.handleCreationComplete();
         }
      }
      
      private function _StepMarkerBarSkin_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(!_loc2_)
         {
            §§pop().§§slot[1] = [];
            if(_loc3_ || _loc3_)
            {
               §§push(§§newactivation());
               if(_loc3_)
               {
                  §§push(§§pop().§§slot[1]);
                  if(!(_loc2_ && _loc1_))
                  {
                     §§pop()[0] = new Binding(this,function():String
                     {
                        var _loc1_:* = BlendMode.OVERLAY;
                        return _loc1_ == undefined ? null : String(_loc1_);
                     },null,"blendBar.blendMode");
                     addr0077:
                     addr0075:
                     return result;
                  }
               }
               §§goto(addr0077);
            }
            §§goto(addr0075);
         }
         §§goto(addr0077);
      }
      
      [Bindable(event="propertyChange")]
      public function get blendBar() : HGroup
      {
         return this._940952062blendBar;
      }
      
      public function set blendBar(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._940952062blendBar;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._940952062blendBar = param1;
                  if(_loc3_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"blendBar",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr0057);
            }
         }
         addr007d:
      }
      
      [Bindable(event="propertyChange")]
      public function get markerHGroup() : HGroup
      {
         return this._2079454161markerHGroup;
      }
      
      public function set markerHGroup(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2079454161markerHGroup;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._2079454161markerHGroup = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     §§goto(addr0054);
                  }
                  §§goto(addr006b);
               }
               addr0054:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(param1))
                  {
                     addr006b:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"markerHGroup",_loc2_,param1));
                  }
               }
               §§goto(addr007a);
            }
            addr007a:
            return;
         }
         §§goto(addr0054);
      }
      
      [Bindable(event="propertyChange")]
      public function get progressBar() : Group
      {
         return this._1131509414progressBar;
      }
      
      public function set progressBar(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1131509414progressBar;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._1131509414progressBar = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressBar",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0066);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : StepMarkerBarComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:StepMarkerBarComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._213507019hostComponent = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
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
         §§goto(addr0074);
      }
   }
}

