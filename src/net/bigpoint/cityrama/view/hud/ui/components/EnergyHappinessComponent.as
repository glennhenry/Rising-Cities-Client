package net.bigpoint.cityrama.view.hud.ui.components
{
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
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class EnergyHappinessComponent extends VGroup implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _EnergyHappinessComponent_BriskImageDynaLib10:BriskImageDynaLib;
      
      public var _EnergyHappinessComponent_BriskImageDynaLib11:BriskImageDynaLib;
      
      private var _922590101energyBar:HUDProgressBarComponent;
      
      private var _1376855404happinessBar:HUDProgressBarComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function EnergyHappinessComponent()
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
         if(!(_loc4_ && _loc2_))
         {
            §§push(null);
            if(!(_loc4_ && _loc2_))
            {
               §§pop().§§slot[3] = §§pop();
               if(_loc3_)
               {
                  §§push(§§newactivation());
                  if(_loc3_)
                  {
                     addr0046:
                     §§pop().§§slot[5] = null;
                     addr0045:
                     if(_loc3_)
                     {
                        addr004f:
                        this.mx_internal::_bindings = [];
                        if(!(_loc4_ && _loc2_))
                        {
                           this.mx_internal::_watchers = [];
                           if(_loc3_ || _loc1_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(!(_loc4_ && _loc1_))
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(!_loc4_)
                                 {
                                    super();
                                    if(!(_loc4_ && Boolean(this)))
                                    {
                                       mx_internal::_document = this;
                                       if(_loc3_ || _loc3_)
                                       {
                                          §§push(§§newactivation());
                                          if(_loc3_)
                                          {
                                             §§pop().§§slot[1] = this._EnergyHappinessComponent_bindingsSetup();
                                             if(_loc3_)
                                             {
                                                §§push(§§newactivation());
                                                if(!(_loc4_ && _loc2_))
                                                {
                                                   §§pop().§§slot[2] = [];
                                                   if(!_loc4_)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(_loc3_ || Boolean(this))
                                                      {
                                                         addr0102:
                                                         §§pop().§§slot[3] = this;
                                                         if(!(_loc4_ && Boolean(this)))
                                                         {
                                                            addr0115:
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(_loc3_ || Boolean(this))
                                                                  {
                                                                     addr013e:
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_hud_ui_components_EnergyHappinessComponentWatcherSetupUtil");
                                                                     if(_loc3_)
                                                                     {
                                                                        addr0151:
                                                                        §§push(§§newactivation());
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(_loc3_ || _loc3_)
                                                                           {
                                                                              addr0177:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return EnergyHappinessComponent[param1];
                                                                              },bindings,watchers);
                                                                              if(_loc3_)
                                                                              {
                                                                                 addr0192:
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    addr01b8:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       addr01de:
                                                                                       this.percentWidth = 100;
                                                                                       if(_loc3_ || _loc2_)
                                                                                       {
                                                                                          addr01f0:
                                                                                          this.paddingLeft = 4;
                                                                                          if(!(_loc4_ && _loc1_))
                                                                                          {
                                                                                             addr0204:
                                                                                             this.height = 44;
                                                                                             if(_loc3_ || _loc1_)
                                                                                             {
                                                                                                addr0216:
                                                                                                this.mxmlContent = [this._EnergyHappinessComponent_Group1_c()];
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   addr0229:
                                                                                                   i = 0;
                                                                                                }
                                                                                             }
                                                                                             var _temp_17:*;
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
                                                                                                         if(_loc4_ && Boolean(this))
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push(§§newactivation());
                                                                                                         if(!(_loc4_ && _loc1_))
                                                                                                         {
                                                                                                            §§push(§§pop().§§slot[4]);
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               §§push(uint(§§pop() + 1));
                                                                                                               if(!(_loc3_ || _loc1_))
                                                                                                               {
                                                                                                                  continue loop2;
                                                                                                               }
                                                                                                            }
                                                                                                            §§push(§§newactivation());
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                            continue;
                                                                                                         }
                                                                                                         continue loop1;
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             while(var _temp_17:* = §§pop(), §§pop().§§slot[4] = _temp_17, _loc3_);
                                                                                             
                                                                                             return;
                                                                                             addr0296:
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr0216);
                                                                                    }
                                                                                    §§goto(addr01f0);
                                                                                 }
                                                                                 §§goto(addr0204);
                                                                              }
                                                                              §§goto(addr0216);
                                                                           }
                                                                           §§goto(addr01b8);
                                                                        }
                                                                        §§goto(addr0229);
                                                                     }
                                                                     §§goto(addr01de);
                                                                  }
                                                                  §§goto(addr0229);
                                                               }
                                                               §§goto(addr0216);
                                                            }
                                                            §§goto(addr0177);
                                                         }
                                                         §§goto(addr0204);
                                                      }
                                                      §§goto(addr013e);
                                                   }
                                                   §§goto(addr0296);
                                                }
                                                §§goto(addr0102);
                                             }
                                             §§goto(addr01f0);
                                          }
                                          §§goto(addr013e);
                                       }
                                       §§goto(addr0151);
                                    }
                                    §§goto(addr01f0);
                                 }
                                 §§goto(addr0151);
                              }
                              §§goto(addr0192);
                           }
                           §§goto(addr0115);
                        }
                        §§goto(addr0204);
                     }
                     §§goto(addr0177);
                  }
                  §§goto(addr0229);
               }
               §§goto(addr004f);
            }
            §§goto(addr0046);
         }
         §§goto(addr0045);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            EnergyHappinessComponent._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super.moduleFactory = param1;
            if(!_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     return;
                  }
               }
               addr0048:
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         §§goto(addr0048);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super.initialize();
         }
      }
      
      private function _EnergyHappinessComponent_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               §§goto(addr003c);
            }
            §§goto(addr0075);
         }
         addr003c:
         _loc1_.percentHeight = 100;
         if(!_loc3_)
         {
            _loc1_.mxmlContent = [this._EnergyHappinessComponent_VGroup2_c(),this._EnergyHappinessComponent_VGroup3_c(),this._EnergyHappinessComponent_BriskImageDynaLib10_i(),this._EnergyHappinessComponent_BriskImageDynaLib11_i()];
            if(!_loc3_)
            {
               addr0075:
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _EnergyHappinessComponent_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.top = 0;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.percentHeight = 100;
                  if(_loc3_)
                  {
                     _loc1_.left = 0;
                     if(_loc3_)
                     {
                        addr0066:
                        _loc1_.gap = 0;
                        if(!(_loc2_ && _loc3_))
                        {
                           _loc1_.mxmlContent = [this._EnergyHappinessComponent_HGroup1_c(),this._EnergyHappinessComponent_HGroup2_c(),this._EnergyHappinessComponent_HGroup3_c()];
                           if(_loc3_)
                           {
                              addr00a0:
                              if(!_loc1_.document)
                              {
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    addr00b4:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                           §§goto(addr00b8);
                        }
                        §§goto(addr00b4);
                     }
                     §§goto(addr00a0);
                  }
                  §§goto(addr0066);
               }
               §§goto(addr00b8);
            }
            §§goto(addr00b4);
         }
         addr00b8:
         return _loc1_;
      }
      
      private function _EnergyHappinessComponent_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.scaleY = -1;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.gap = 0;
                  addr0051:
                  if(_loc3_)
                  {
                     _loc1_.mxmlContent = [this._EnergyHappinessComponent_BriskImageDynaLib1_c(),this._EnergyHappinessComponent_BriskImageDynaLib2_c(),this._EnergyHappinessComponent_BriskImageDynaLib3_c()];
                     if(!_loc2_)
                     {
                        §§goto(addr0084);
                     }
                     §§goto(addr0090);
                  }
                  §§goto(addr0084);
               }
               §§goto(addr0090);
            }
            addr0084:
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr0090:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0051);
      }
      
      private function _EnergyHappinessComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.dynaBmpSourceName = "mainhud_outerbarextend_downleft";
               addr003e:
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr003e);
      }
      
      private function _EnergyHappinessComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(_loc2_ || _loc2_)
            {
               _loc1_.dynaBmpSourceName = "mainhud_outerbarextend_down";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.percentWidth = 100;
                  if(!(_loc3_ && _loc2_))
                  {
                     addr0076:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr008a:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0076);
            }
         }
         §§goto(addr008a);
      }
      
      private function _EnergyHappinessComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "mainhud_outerbarextend_downright";
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr004c:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0050);
               }
            }
            §§goto(addr004c);
         }
         addr0050:
         return _loc1_;
      }
      
      private function _EnergyHappinessComponent_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.percentHeight = 100;
               addr0032:
               if(_loc3_)
               {
                  _loc1_.gap = 0;
                  if(_loc3_)
                  {
                     _loc1_.mxmlContent = [this._EnergyHappinessComponent_BriskImageDynaLib4_c(),this._EnergyHappinessComponent_BriskImageDynaLib5_c(),this._EnergyHappinessComponent_BriskImageDynaLib6_c()];
                     if(_loc3_ || Boolean(this))
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              addr0095:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0099);
                     }
                  }
               }
               §§goto(addr0095);
            }
            addr0099:
            return _loc1_;
         }
         §§goto(addr0032);
      }
      
      private function _EnergyHappinessComponent_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "mainhud_outerbarextend_left";
               if(_loc2_)
               {
                  _loc1_.percentHeight = 100;
                  addr0048:
                  if(!(_loc3_ && _loc2_))
                  {
                     §§goto(addr0067);
                  }
                  §§goto(addr007b);
               }
               §§goto(addr0067);
            }
            §§goto(addr0048);
         }
         addr0067:
         if(!_loc1_.document)
         {
            if(_loc2_ || Boolean(_loc1_))
            {
               addr007b:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _EnergyHappinessComponent_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "mainhud_outerbarextend_middle";
               if(_loc2_)
               {
                  _loc1_.percentHeight = 100;
                  if(!_loc3_)
                  {
                     _loc1_.percentWidth = 100;
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              addr0071:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0075);
                     }
                     §§goto(addr0071);
                  }
               }
               addr0075:
               return _loc1_;
            }
         }
         §§goto(addr0071);
      }
      
      private function _EnergyHappinessComponent_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(_loc3_ || _loc2_)
            {
               _loc1_.dynaBmpSourceName = "mainhud_outerbarextend_right";
               if(!_loc2_)
               {
                  _loc1_.percentHeight = 100;
                  addr004d:
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr006a:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr004d);
         }
         §§goto(addr006a);
      }
      
      private function _EnergyHappinessComponent_HGroup3_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.gap = 0;
               addr0031:
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.mxmlContent = [this._EnergyHappinessComponent_BriskImageDynaLib7_c(),this._EnergyHappinessComponent_BriskImageDynaLib8_c(),this._EnergyHappinessComponent_BriskImageDynaLib9_c()];
                  if(_loc3_ || _loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr0094:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0098);
                  }
                  §§goto(addr0094);
               }
            }
            addr0098:
            return _loc1_;
         }
         §§goto(addr0031);
      }
      
      private function _EnergyHappinessComponent_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.dynaBmpSourceName = "mainhud_outerbarextend_downleft";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr006b:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr006b);
      }
      
      private function _EnergyHappinessComponent_BriskImageDynaLib8_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "mainhud_outerbarextend_down";
               if(_loc2_)
               {
                  addr0056:
                  _loc1_.percentWidth = 100;
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           addr0074:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0078);
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0078);
            }
            §§goto(addr0056);
         }
         addr0078:
         return _loc1_;
      }
      
      private function _EnergyHappinessComponent_BriskImageDynaLib9_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "mainhud_outerbarextend_downright";
               if(!(_loc2_ && _loc3_))
               {
                  §§goto(addr005d);
               }
               §§goto(addr0069);
            }
            addr005d:
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr0069:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0069);
      }
      
      private function _EnergyHappinessComponent_VGroup3_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.paddingTop = 4;
            if(!_loc3_)
            {
               _loc1_.verticalAlign = "middle";
               if(_loc2_)
               {
                  _loc1_.percentWidth = 90;
                  if(_loc2_)
                  {
                     _loc1_.gap = 3;
                     if(_loc2_)
                     {
                        addr0061:
                        _loc1_.horizontalCenter = 0;
                        if(_loc2_)
                        {
                           addr006b:
                           _loc1_.mxmlContent = [this._EnergyHappinessComponent_HUDProgressBarComponent1_i(),this._EnergyHappinessComponent_HUDProgressBarComponent2_i()];
                           if(_loc2_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(!_loc3_)
                                 {
                                    addr008d:
                                    _loc1_.document = this;
                                 }
                              }
                              return _loc1_;
                           }
                        }
                     }
                     §§goto(addr008d);
                  }
                  §§goto(addr006b);
               }
               §§goto(addr0061);
            }
            §§goto(addr006b);
         }
         §§goto(addr008d);
      }
      
      private function _EnergyHappinessComponent_HUDProgressBarComponent1_i() : HUDProgressBarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HUDProgressBarComponent = new HUDProgressBarComponent();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.dividerCount = 3;
               if(!_loc2_)
               {
                  addr0056:
                  _loc1_.id = "energyBar";
                  if(_loc3_ || _loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              §§goto(addr0092);
                           }
                           §§goto(addr00a4);
                        }
                     }
                     §§goto(addr0092);
                  }
               }
               §§goto(addr00a4);
            }
            §§goto(addr0056);
         }
         addr0092:
         this.energyBar = _loc1_;
         if(_loc3_ || _loc3_)
         {
            addr00a4:
            BindingManager.executeBindings(this,"energyBar",this.energyBar);
         }
         return _loc1_;
      }
      
      private function _EnergyHappinessComponent_HUDProgressBarComponent2_i() : HUDProgressBarComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HUDProgressBarComponent = new HUDProgressBarComponent();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.dividerCount = 3;
               if(!_loc3_)
               {
                  _loc1_.id = "happinessBar";
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr006d:
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr0076:
                              this.happinessBar = _loc1_;
                              if(!_loc3_)
                              {
                                 addr0080:
                                 BindingManager.executeBindings(this,"happinessBar",this.happinessBar);
                              }
                           }
                        }
                        return _loc1_;
                     }
                  }
                  §§goto(addr0076);
               }
               §§goto(addr006d);
            }
            §§goto(addr0080);
         }
         §§goto(addr0076);
      }
      
      private function _EnergyHappinessComponent_BriskImageDynaLib10_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.dynaBmpSourceName = "ui_mainbar_energy_icon";
            if(_loc3_ || _loc3_)
            {
               _loc1_.dynaLibName = "gui_main_hud";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr004f:
                  _loc1_.top = -3;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.left = -5;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        _loc1_.id = "_EnergyHappinessComponent_BriskImageDynaLib10";
                        if(_loc3_ || _loc2_)
                        {
                           addr0093:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 addr00b3:
                                 _loc1_.document = this;
                                 if(_loc3_)
                                 {
                                    §§goto(addr00bc);
                                 }
                              }
                              §§goto(addr00cf);
                           }
                        }
                        addr00bc:
                        this._EnergyHappinessComponent_BriskImageDynaLib10 = _loc1_;
                        if(_loc3_ || Boolean(this))
                        {
                           addr00cf:
                           BindingManager.executeBindings(this,"_EnergyHappinessComponent_BriskImageDynaLib10",this._EnergyHappinessComponent_BriskImageDynaLib10);
                        }
                        return _loc1_;
                     }
                     §§goto(addr0093);
                  }
                  §§goto(addr00b3);
               }
               §§goto(addr0093);
            }
            §§goto(addr004f);
         }
         §§goto(addr0093);
      }
      
      private function _EnergyHappinessComponent_BriskImageDynaLib11_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.dynaBmpSourceName = "ui_mainbar_mood_full_icon";
            if(_loc3_)
            {
               addr0034:
               _loc1_.dynaLibName = "gui_main_hud";
               if(!_loc2_)
               {
                  _loc1_.left = -5;
                  if(!_loc2_)
                  {
                     addr0055:
                     _loc1_.bottom = -2;
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.id = "_EnergyHappinessComponent_BriskImageDynaLib11";
                        if(!_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr008c:
                                 _loc1_.document = this;
                                 if(_loc3_)
                                 {
                                    addr0095:
                                    this._EnergyHappinessComponent_BriskImageDynaLib11 = _loc1_;
                                    if(!(_loc2_ && Boolean(this)))
                                    {
                                       addr00a8:
                                       BindingManager.executeBindings(this,"_EnergyHappinessComponent_BriskImageDynaLib11",this._EnergyHappinessComponent_BriskImageDynaLib11);
                                    }
                                    §§goto(addr00b6);
                                 }
                                 §§goto(addr00a8);
                              }
                              addr00b6:
                              return _loc1_;
                           }
                        }
                     }
                     §§goto(addr0095);
                  }
                  §§goto(addr008c);
               }
               §§goto(addr0055);
            }
            §§goto(addr00a8);
         }
         §§goto(addr0034);
      }
      
      private function _EnergyHappinessComponent_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(!_loc2_)
         {
            §§pop().§§slot[1] = [];
            if(!(_loc2_ && _loc1_))
            {
               §§push(§§newactivation());
               if(!(_loc2_ && Boolean(this)))
               {
                  §§push(§§pop().§§slot[1]);
                  if(!_loc2_)
                  {
                     §§push(0);
                     if(_loc3_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():Array
                        {
                           var _loc1_:* = HUDProgressBarComponent.ENERGY_COLOURS;
                           return _loc1_ == null || _loc1_ is Array || _loc1_ is Proxy ? _loc1_ : [_loc1_];
                        },null,"energyBar.gradientColours");
                        if(_loc3_ || _loc2_)
                        {
                           §§push(§§newactivation());
                           if(!(_loc2_ && _loc2_))
                           {
                              addr0089:
                              §§push(§§pop().§§slot[1]);
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr0098:
                                 §§push(1);
                                 if(!_loc2_)
                                 {
                                    addr009f:
                                    §§pop()[§§pop()] = new Binding(this,function():Array
                                    {
                                       var _loc1_:* = HUDProgressBarComponent.HAPPINESS_COLOURS;
                                       return _loc1_ == null || _loc1_ is Array || _loc1_ is Proxy ? _loc1_ : [_loc1_];
                                    },null,"happinessBar.gradientColours");
                                    if(_loc3_ || Boolean(this))
                                    {
                                       §§push(§§newactivation());
                                       if(_loc3_)
                                       {
                                          addr00c4:
                                          §§push(§§pop().§§slot[1]);
                                          if(!(_loc2_ && Boolean(this)))
                                          {
                                             addr00d3:
                                             §§push(2);
                                             if(_loc3_)
                                             {
                                                §§pop()[§§pop()] = new Binding(this,function():String
                                                {
                                                   var _loc1_:* = energyBar.toolTip;
                                                   return _loc1_ == undefined ? null : String(_loc1_);
                                                },null,"_EnergyHappinessComponent_BriskImageDynaLib10.toolTip");
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   addr0103:
                                                   §§push(§§newactivation());
                                                   if(!_loc2_)
                                                   {
                                                      §§goto(addr0128);
                                                   }
                                                   §§goto(addr0126);
                                                }
                                                §§goto(addr0124);
                                             }
                                             §§goto(addr0113);
                                          }
                                          addr0128:
                                       }
                                       §§goto(addr010a);
                                    }
                                    §§goto(addr0124);
                                 }
                                 §§goto(addr0113);
                              }
                              §§goto(addr00d3);
                           }
                           §§goto(addr00c4);
                        }
                        §§goto(addr0103);
                     }
                     §§goto(addr009f);
                  }
                  §§goto(addr0098);
               }
               addr010a:
               §§push(§§pop().§§slot[1]);
               if(!_loc2_)
               {
                  addr0113:
                  §§pop()[3] = new Binding(this,function():String
                  {
                     var _loc1_:* = happinessBar.toolTip;
                     return _loc1_ == undefined ? null : String(_loc1_);
                  },null,"_EnergyHappinessComponent_BriskImageDynaLib11.toolTip");
                  addr0126:
                  addr0124:
                  return result;
               }
            }
            §§goto(addr0103);
         }
         §§goto(addr0089);
      }
      
      [Bindable(event="propertyChange")]
      public function get energyBar() : HUDProgressBarComponent
      {
         return this._922590101energyBar;
      }
      
      public function set energyBar(param1:HUDProgressBarComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._922590101energyBar;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._922590101energyBar = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"energyBar",_loc2_,param1));
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
      
      [Bindable(event="propertyChange")]
      public function get happinessBar() : HUDProgressBarComponent
      {
         return this._1376855404happinessBar;
      }
      
      public function set happinessBar(param1:HUDProgressBarComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1376855404happinessBar;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1376855404happinessBar = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr004f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"happinessBar",_loc2_,param1));
                        }
                     }
                     §§goto(addr005e);
                  }
                  §§goto(addr004f);
               }
            }
            addr005e:
            return;
         }
         §§goto(addr004f);
      }
   }
}

