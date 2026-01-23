package net.bigpoint.cityrama.view.common.components
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
   import mx.filters.*;
   import mx.styles.*;
   import spark.components.Group;
   
   use namespace mx_internal;
   
   public class StepCheckMarkComponent extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _StepCheckMarkComponent_BriskImageDynaLib1:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public var index:int;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function StepCheckMarkComponent()
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
         if(_loc3_ || _loc1_)
         {
            §§push(null);
            if(!_loc4_)
            {
               §§pop().§§slot[3] = §§pop();
               if(!_loc4_)
               {
                  §§push(§§newactivation());
                  if(!_loc4_)
                  {
                     addr0040:
                     §§pop().§§slot[5] = null;
                     addr003f:
                     if(_loc3_)
                     {
                        this.mx_internal::_bindings = [];
                        if(_loc3_)
                        {
                           this.mx_internal::_watchers = [];
                           if(_loc3_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(!_loc4_)
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(!_loc4_)
                                 {
                                    super();
                                    if(!_loc4_)
                                    {
                                       addr0080:
                                       mx_internal::_document = this;
                                       if(_loc3_)
                                       {
                                          §§push(§§newactivation());
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             §§pop().§§slot[1] = this._StepCheckMarkComponent_bindingsSetup();
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                §§push(§§newactivation());
                                                if(_loc3_)
                                                {
                                                   §§pop().§§slot[2] = [];
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      addr00d5:
                                                      §§push(§§newactivation());
                                                      if(_loc3_)
                                                      {
                                                         addr00dc:
                                                         §§pop().§§slot[3] = this;
                                                         if(_loc3_)
                                                         {
                                                            addr00e6:
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  addr00f3:
                                                                  §§push(§§newactivation());
                                                                  if(_loc3_)
                                                                  {
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_common_components_StepCheckMarkComponentWatcherSetupUtil");
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(_loc3_)
                                                                        {
                                                                           addr0120:
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(_loc3_ || _loc3_)
                                                                           {
                                                                              addr013e:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return StepCheckMarkComponent[param1];
                                                                              },bindings,watchers);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 addr015a:
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr0181:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       this.mxmlContent = [this._StepCheckMarkComponent_BriskImageDynaLib1_i()];
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr01bb:
                                                                                          i = 0;
                                                                                          addr01b9:
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 var _temp_7:*;
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
                                                                                             if(!(_loc3_ || _loc1_))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§push(§§newactivation());
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                §§push(§§pop().§§slot[4]);
                                                                                                if(!(_loc4_ && Boolean(this)))
                                                                                                {
                                                                                                   §§push(uint(§§pop() + 1));
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      §§push(§§newactivation());
                                                                                                      if(_loc3_)
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
                                                                                 while(var _temp_7:* = §§pop(), §§pop().§§slot[4] = _temp_7, !(_loc4_ && _loc1_));
                                                                                 
                                                                                 return;
                                                                                 addr0226:
                                                                              }
                                                                           }
                                                                           §§goto(addr01b9);
                                                                        }
                                                                        §§goto(addr01bb);
                                                                     }
                                                                     §§goto(addr0226);
                                                                  }
                                                                  §§goto(addr0120);
                                                               }
                                                               §§goto(addr01b9);
                                                            }
                                                            §§goto(addr013e);
                                                         }
                                                         §§goto(addr00f3);
                                                      }
                                                      §§goto(addr0120);
                                                   }
                                                   §§goto(addr01b9);
                                                }
                                                §§goto(addr0120);
                                             }
                                             §§goto(addr0181);
                                          }
                                          §§goto(addr00dc);
                                       }
                                       §§goto(addr00e6);
                                    }
                                    §§goto(addr0226);
                                 }
                                 §§goto(addr015a);
                              }
                              §§goto(addr0226);
                           }
                           §§goto(addr00d5);
                        }
                        §§goto(addr0080);
                     }
                     §§goto(addr0181);
                  }
                  §§goto(addr00dc);
               }
               §§goto(addr0080);
            }
            §§goto(addr0040);
         }
         §§goto(addr003f);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            StepCheckMarkComponent._watcherSetupUtil = param1;
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
               addr002d:
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     return;
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         §§goto(addr002d);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.initialize();
         }
      }
      
      private function _StepCheckMarkComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.verticalCenter = 0;
            if(_loc2_)
            {
               _loc1_.horizontalCenter = 0;
               if(_loc2_)
               {
                  _loc1_.id = "_StepCheckMarkComponent_BriskImageDynaLib1";
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           _loc1_.document = this;
                           if(_loc2_ || Boolean(this))
                           {
                              addr007c:
                              this._StepCheckMarkComponent_BriskImageDynaLib1 = _loc1_;
                              if(!_loc3_)
                              {
                                 addr0087:
                                 BindingManager.executeBindings(this,"_StepCheckMarkComponent_BriskImageDynaLib1",this._StepCheckMarkComponent_BriskImageDynaLib1);
                              }
                           }
                        }
                        §§goto(addr0095);
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr0087);
               }
            }
            addr0095:
            return _loc1_;
         }
         §§goto(addr007c);
      }
      
      private function _StepCheckMarkComponent_bindingsSetup() : Array
      {
         var result:Array;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§newactivation());
         if(_loc2_)
         {
            §§pop().§§slot[1] = [];
            if(!(_loc3_ && Boolean(this)))
            {
               §§push(§§newactivation());
               if(_loc2_ || _loc3_)
               {
                  §§push(§§pop().§§slot[1]);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(0);
                     if(_loc2_ || _loc3_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():String
                        {
                           var _loc1_:* = getStyle("iconLib");
                           return _loc1_ == undefined ? null : String(_loc1_);
                        },null,"_StepCheckMarkComponent_BriskImageDynaLib1.dynaLibName");
                        if(_loc2_)
                        {
                           §§push(§§newactivation());
                           if(!(_loc3_ && Boolean(this)))
                           {
                              §§goto(addr00bb);
                           }
                           §§goto(addr00b9);
                        }
                        §§goto(addr00b7);
                     }
                     §§goto(addr00a6);
                  }
                  addr00bb:
               }
               §§goto(addr009d);
            }
            §§goto(addr00b7);
         }
         addr009d:
         §§push(§§pop().§§slot[1]);
         if(!_loc3_)
         {
            addr00a6:
            §§pop()[1] = new Binding(this,function():String
            {
               var _loc1_:* = getStyle("iconName");
               return _loc1_ == undefined ? null : String(_loc1_);
            },null,"_StepCheckMarkComponent_BriskImageDynaLib1.dynaBmpSourceName");
            addr00b9:
            addr00b7:
            return result;
         }
      }
   }
}

