package net.bigpoint.cityrama.view.friendBook.ui.components
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
   import net.bigpoint.cityrama.view.common.FilterUtils;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import spark.components.Group;
   
   use namespace mx_internal;
   
   public class FriendLevelStarComponent extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _1656559075levelIcon:BriskImageDynaLib;
      
      private var _188974544levelLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function FriendLevelStarComponent()
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
         if(!_loc3_)
         {
            §§push(null);
            if(!_loc3_)
            {
               §§pop().§§slot[3] = §§pop();
               if(_loc4_)
               {
                  §§push(§§newactivation());
                  if(!(_loc3_ && _loc3_))
                  {
                     addr003f:
                     §§pop().§§slot[5] = null;
                     if(!_loc3_)
                     {
                        this.mx_internal::_bindings = [];
                        if(_loc4_)
                        {
                           this.mx_internal::_watchers = [];
                           if(!(_loc3_ && _loc3_))
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 addr007a:
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(_loc4_ || _loc2_)
                                 {
                                    super();
                                    if(_loc4_ || _loc1_)
                                    {
                                       mx_internal::_document = this;
                                       if(!(_loc3_ && Boolean(this)))
                                       {
                                          §§push(§§newactivation());
                                          if(!_loc3_)
                                          {
                                             addr00c0:
                                             §§pop().§§slot[1] = this._FriendLevelStarComponent_bindingsSetup();
                                             if(!(_loc3_ && _loc1_))
                                             {
                                                addr00d7:
                                                §§push(§§newactivation());
                                                if(_loc4_)
                                                {
                                                   addr00df:
                                                   §§pop().§§slot[2] = [];
                                                   if(_loc4_)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(_loc4_)
                                                      {
                                                         §§pop().§§slot[3] = this;
                                                         if(_loc4_ || _loc2_)
                                                         {
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(_loc4_)
                                                                  {
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_friendBook_ui_components_FriendLevelStarComponentWatcherSetupUtil");
                                                                     if(!(_loc3_ && _loc2_))
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(_loc4_ || Boolean(this))
                                                                        {
                                                                           addr0154:
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(!_loc3_)
                                                                           {
                                                                              addr016a:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return FriendLevelStarComponent[param1];
                                                                              },bindings,watchers);
                                                                              if(!(_loc3_ && _loc2_))
                                                                              {
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(!(_loc3_ && _loc3_))
                                                                                 {
                                                                                    addr01bb:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       addr01e1:
                                                                                       this.mxmlContent = [this._FriendLevelStarComponent_BriskImageDynaLib1_i(),this._FriendLevelStarComponent_LocaLabel1_i()];
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          addr01fa:
                                                                                          i = 0;
                                                                                          addr01f8:
                                                                                       }
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
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§push(§§newactivation());
                                                                                             if(!(_loc3_ && Boolean(this)))
                                                                                             {
                                                                                                §§push(§§pop().§§slot[4]);
                                                                                                if(!(_loc3_ && _loc2_))
                                                                                                {
                                                                                                   §§push(uint(§§pop() + 1));
                                                                                                   if(_loc4_)
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
                                                                                 while(var _temp_15:* = §§pop(), §§pop().§§slot[4] = _temp_15, !_loc3_);
                                                                                 
                                                                                 return;
                                                                                 addr025e:
                                                                              }
                                                                           }
                                                                           §§goto(addr01bb);
                                                                        }
                                                                        §§goto(addr01fa);
                                                                     }
                                                                     §§goto(addr025e);
                                                                  }
                                                                  §§goto(addr0154);
                                                               }
                                                               §§goto(addr025e);
                                                            }
                                                            §§goto(addr016a);
                                                         }
                                                         §§goto(addr01bb);
                                                      }
                                                      §§goto(addr01fa);
                                                   }
                                                   §§goto(addr016a);
                                                }
                                                §§goto(addr01fa);
                                             }
                                             §§goto(addr01e1);
                                          }
                                          §§goto(addr0154);
                                       }
                                       §§goto(addr025e);
                                    }
                                    §§goto(addr01f8);
                                 }
                                 §§goto(addr01bb);
                              }
                              §§goto(addr00d7);
                           }
                           §§goto(addr01e1);
                        }
                        §§goto(addr007a);
                     }
                     §§goto(addr00d7);
                  }
                  §§goto(addr00c0);
               }
               §§goto(addr01e1);
            }
            §§goto(addr003f);
         }
         §§goto(addr00df);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            FriendLevelStarComponent._watcherSetupUtil = param1;
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
            if(!(_loc2_ && _loc2_))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr0043);
                  }
               }
               else
               {
                  addr0051:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
            §§goto(addr0051);
         }
         addr0043:
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
      
      private function _FriendLevelStarComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.measuredHeight = 0;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.measuredMinWidth = 0;
               if(!_loc3_)
               {
                  _loc1_.top = -6;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.left = -6;
                     if(_loc2_)
                     {
                        _loc1_.dynaLibName = "gui_popups_FriendBook";
                        if(_loc2_ || _loc2_)
                        {
                           _loc1_.dynaBmpSourceName = "friend_level_star";
                           if(!_loc3_)
                           {
                              addr0083:
                              _loc1_.id = "levelIcon";
                              if(_loc2_)
                              {
                                 if(!_loc1_.document)
                                 {
                                    if(_loc2_ || _loc3_)
                                    {
                                       addr00a2:
                                       _loc1_.document = this;
                                       if(!(_loc3_ && Boolean(this)))
                                       {
                                          §§goto(addr00c0);
                                       }
                                       §§goto(addr00d2);
                                    }
                                 }
                                 §§goto(addr00c0);
                              }
                              §§goto(addr00a2);
                           }
                        }
                     }
                     §§goto(addr00c0);
                  }
                  §§goto(addr00d2);
               }
               addr00c0:
               this.levelIcon = _loc1_;
               if(_loc2_ || _loc3_)
               {
                  addr00d2:
                  BindingManager.executeBindings(this,"levelIcon",this.levelIcon);
               }
               return _loc1_;
            }
            §§goto(addr00a2);
         }
         §§goto(addr0083);
      }
      
      private function _FriendLevelStarComponent_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.top = 9;
            if(_loc2_)
            {
               _loc1_.left = 4;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.styleName = "levelLabelFormat";
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.width = 20;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.height = 14;
                        if(!(_loc3_ && _loc3_))
                        {
                           _loc1_.text = "95";
                           if(!_loc3_)
                           {
                              §§goto(addr0094);
                           }
                           §§goto(addr009f);
                        }
                        addr0094:
                        _loc1_.id = "levelLabel";
                        if(_loc2_)
                        {
                           addr009f:
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 addr00b3:
                                 _loc1_.document = this;
                                 if(_loc2_ || Boolean(_loc1_))
                                 {
                                    addr00cf:
                                    this.levelLabel = _loc1_;
                                    if(_loc2_ || Boolean(this))
                                    {
                                       addr00e1:
                                       BindingManager.executeBindings(this,"levelLabel",this.levelLabel);
                                    }
                                 }
                              }
                              §§goto(addr00ee);
                           }
                           §§goto(addr00cf);
                        }
                        §§goto(addr00ee);
                     }
                     addr00ee:
                     return _loc1_;
                  }
                  §§goto(addr00e1);
               }
               §§goto(addr00cf);
            }
            §§goto(addr009f);
         }
         §§goto(addr00b3);
      }
      
      private function _FriendLevelStarComponent_bindingsSetup() : Array
      {
         var result:Array;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§newactivation());
         if(_loc2_)
         {
            §§pop().§§slot[1] = [];
            if(_loc2_)
            {
               §§push(§§newactivation());
               if(_loc2_)
               {
                  §§goto(addr003b);
               }
               §§goto(addr0057);
            }
            §§goto(addr0055);
         }
         addr003b:
         §§push(§§pop().§§slot[1]);
         if(_loc2_)
         {
            §§pop()[0] = new Binding(this,function():Array
            {
               var _loc1_:* = [FilterUtils.createOutlineFilter(3355443,1.2,false,0.6)];
               return _loc1_ == null || _loc1_ is Array || _loc1_ is Proxy ? _loc1_ : [_loc1_];
            },null,"levelLabel.filters");
            addr0057:
            addr0055:
            return result;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get levelIcon() : BriskImageDynaLib
      {
         return this._1656559075levelIcon;
      }
      
      public function set levelIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1656559075levelIcon;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._1656559075levelIcon = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0068:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelIcon",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0068);
      }
      
      [Bindable(event="propertyChange")]
      public function get levelLabel() : LocaLabel
      {
         return this._188974544levelLabel;
      }
      
      public function set levelLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._188974544levelLabel;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._188974544levelLabel = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr006e);
               }
               addr005e:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr006e:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelLabel",_loc2_,param1));
                  }
               }
               §§goto(addr007d);
            }
            addr007d:
            return;
         }
         §§goto(addr005e);
      }
   }
}

