package net.bigpoint.cityrama.view.shopBook.ui.components
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
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import spark.components.Group;
   import spark.components.HGroup;
   
   use namespace mx_internal;
   
   public class ShopItemProgress extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _1131509414progressBar:HGroup;
      
      private var _1239322293progressBarBlend:HGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function ShopItemProgress()
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
            if(_loc4_ || Boolean(this))
            {
               §§pop().§§slot[3] = §§pop();
               if(_loc4_ || _loc3_)
               {
                  §§push(§§newactivation());
                  if(_loc4_)
                  {
                     addr004a:
                     §§pop().§§slot[5] = null;
                     if(!(_loc3_ && _loc1_))
                     {
                        this.mx_internal::_bindings = [];
                        if(_loc4_)
                        {
                           this.mx_internal::_watchers = [];
                           if(!_loc3_)
                           {
                              addr0072:
                              this.mx_internal::_bindingsByDestination = {};
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    super();
                                    if(_loc4_)
                                    {
                                       mx_internal::_document = this;
                                       if(_loc4_)
                                       {
                                          addr00b4:
                                          §§push(§§newactivation());
                                          if(!_loc3_)
                                          {
                                             addr00bb:
                                             §§pop().§§slot[1] = this._ShopItemProgress_bindingsSetup();
                                             if(!(_loc3_ && _loc1_))
                                             {
                                                addr00d2:
                                                §§push(§§newactivation());
                                                if(_loc4_)
                                                {
                                                   §§pop().§§slot[2] = [];
                                                   if(!_loc3_)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(_loc4_)
                                                      {
                                                         addr00ed:
                                                         §§pop().§§slot[3] = this;
                                                         if(_loc4_ || _loc2_)
                                                         {
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  addr0115:
                                                                  §§push(§§newactivation());
                                                                  if(_loc4_)
                                                                  {
                                                                     addr0127:
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_shopBook_ui_components_ShopItemProgressWatcherSetupUtil");
                                                                     if(_loc4_ || Boolean(this))
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(_loc4_)
                                                                        {
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(_loc4_)
                                                                           {
                                                                              addr0162:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return ShopItemProgress[param1];
                                                                              },bindings,watchers);
                                                                              if(_loc4_ || Boolean(this))
                                                                              {
                                                                                 addr0188:
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    addr01af:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(!(_loc3_ && _loc1_))
                                                                                    {
                                                                                       addr01dd:
                                                                                       this.percentWidth = 100;
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          addr01e7:
                                                                                          this.mxmlContent = [this._ShopItemProgress_HGroup1_c(),this._ShopItemProgress_HGroup2_i(),this._ShopItemProgress_HGroup3_i()];
                                                                                          if(!(_loc3_ && Boolean(this)))
                                                                                          {
                                                                                             addr020d:
                                                                                             i = 0;
                                                                                             addr020b:
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
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§push(§§newactivation());
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         §§push(§§pop().§§slot[4]);
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            §§push(uint(§§pop() + 1));
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               continue loop2;
                                                                                                            }
                                                                                                         }
                                                                                                         §§push(§§newactivation());
                                                                                                         if(!(_loc3_ && _loc3_))
                                                                                                         {
                                                                                                            var _temp_19:* = §§pop();
                                                                                                            §§pop().§§slot[4] = _temp_19;
                                                                                                            if(!_loc3_)
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
                                                                                          addr0269:
                                                                                       }
                                                                                       §§goto(addr020b);
                                                                                    }
                                                                                    §§goto(addr01e7);
                                                                                 }
                                                                                 §§goto(addr01dd);
                                                                              }
                                                                           }
                                                                           §§goto(addr01af);
                                                                        }
                                                                        §§goto(addr020d);
                                                                     }
                                                                     §§goto(addr0188);
                                                                  }
                                                                  §§goto(addr020d);
                                                               }
                                                               §§goto(addr01af);
                                                            }
                                                         }
                                                         §§goto(addr0162);
                                                      }
                                                      §§goto(addr0127);
                                                   }
                                                   §§goto(addr01dd);
                                                }
                                                §§goto(addr00ed);
                                             }
                                             §§goto(addr020b);
                                          }
                                          §§goto(addr020d);
                                       }
                                       §§goto(addr00d2);
                                    }
                                    §§goto(addr0115);
                                 }
                                 §§goto(addr0269);
                              }
                              §§goto(addr01e7);
                           }
                           §§goto(addr01dd);
                        }
                        §§goto(addr0072);
                     }
                     §§goto(addr00b4);
                  }
                  §§goto(addr00bb);
               }
               §§goto(addr01dd);
            }
            §§goto(addr004a);
         }
         §§goto(addr0127);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || ShopItemProgress)
         {
            ShopItemProgress._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            super.moduleFactory = param1;
            if(!(_loc2_ && _loc2_))
            {
               addr004c:
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc2_)
                  {
                     return;
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         §§goto(addr004c);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super.initialize();
         }
      }
      
      public function set progress(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(this))
         {
            this.progressBar.percentWidth = param1 * 100;
            if(_loc4_)
            {
               this.progressBarBlend.percentWidth = param1 * 100;
            }
         }
         var _loc2_:uint = 11133203;
         if(!_loc3_)
         {
            TweenMax.to(this.progressBarBlend,0,{"tint":_loc2_});
         }
      }
      
      private function _ShopItemProgress_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.gap = 0;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.verticalCenter = 0;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.left = 10;
                  if(_loc2_ || _loc2_)
                  {
                     addr0068:
                     _loc1_.right = 10;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.percentWidth = 100;
                        if(_loc2_ || Boolean(this))
                        {
                           _loc1_.mxmlContent = [this._ShopItemProgress_BriskImageDynaLib1_c(),this._ShopItemProgress_BriskImageDynaLib2_c(),this._ShopItemProgress_BriskImageDynaLib3_c()];
                           addr008c:
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              addr00bd:
                              if(!_loc1_.document)
                              {
                                 if(_loc2_ || Boolean(this))
                                 {
                                    addr00d1:
                                    _loc1_.document = this;
                                 }
                              }
                              §§goto(addr00d5);
                           }
                        }
                        §§goto(addr00d1);
                     }
                     §§goto(addr00d5);
                  }
                  §§goto(addr008c);
               }
               addr00d5:
               return _loc1_;
            }
            §§goto(addr0068);
         }
         §§goto(addr00bd);
      }
      
      private function _ShopItemProgress_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "ui_main_inner_ressourcebase_left";
               if(!(_loc2_ && _loc3_))
               {
                  §§goto(addr0055);
               }
               §§goto(addr0069);
            }
            addr0055:
            if(!_loc1_.document)
            {
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr0069:
                  _loc1_.document = this;
               }
            }
            §§goto(addr006d);
         }
         addr006d:
         return _loc1_;
      }
      
      private function _ShopItemProgress_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "ui_main_inner_ressourcebase_middle";
               if(!_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  addr0049:
                  if(_loc3_)
                  {
                     addr005e:
                     _loc1_.percentHeight = 100;
                     if(!_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              addr007c:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0080);
                     }
                     §§goto(addr007c);
                  }
               }
               addr0080:
               return _loc1_;
            }
            §§goto(addr0049);
         }
         §§goto(addr005e);
      }
      
      private function _ShopItemProgress_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "ui_main_inner_ressourcebase_right";
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _ShopItemProgress_HGroup2_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.gap = 0;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.verticalCenter = 0;
               if(_loc3_)
               {
                  _loc1_.left = 13;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.right = 13;
                     if(!_loc2_)
                     {
                        _loc1_.percentWidth = 50;
                        if(_loc3_)
                        {
                           _loc1_.mxmlContent = [this._ShopItemProgress_BriskImageDynaLib4_c(),this._ShopItemProgress_BriskImageDynaLib5_c(),this._ShopItemProgress_BriskImageDynaLib6_c()];
                           if(!(_loc2_ && _loc2_))
                           {
                              §§goto(addr0094);
                           }
                           §§goto(addr00d8);
                        }
                     }
                     §§goto(addr00ea);
                  }
                  addr0094:
                  _loc1_.id = "progressBar";
                  if(!(_loc2_ && Boolean(this)))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           addr00bb:
                           _loc1_.document = this;
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              §§goto(addr00d8);
                           }
                        }
                        §§goto(addr00ea);
                     }
                     addr00d8:
                     this.progressBar = _loc1_;
                     if(!(_loc2_ && _loc2_))
                     {
                        addr00ea:
                        BindingManager.executeBindings(this,"progressBar",this.progressBar);
                     }
                  }
                  §§goto(addr00f7);
               }
               §§goto(addr00bb);
            }
            §§goto(addr00d8);
         }
         addr00f7:
         return _loc1_;
      }
      
      private function _ShopItemProgress_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "ui_main_inner_ressourcelevel_left";
               if(_loc3_)
               {
                  addr0040:
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        addr0054:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0058);
               }
               §§goto(addr0054);
            }
            addr0058:
            return _loc1_;
         }
         §§goto(addr0040);
      }
      
      private function _ShopItemProgress_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
            if(_loc3_ || _loc3_)
            {
               _loc1_.dynaBmpSourceName = "ui_main_inner_ressourcelevel_middle";
               if(_loc3_)
               {
                  _loc1_.percentWidth = 100;
                  if(_loc3_)
                  {
                     addr0062:
                     _loc1_.percentHeight = 100;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0062);
      }
      
      private function _ShopItemProgress_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "ui_main_inner_ressourcelevel_right";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr0056:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr005a);
               }
               §§goto(addr0056);
            }
            addr005a:
            return _loc1_;
         }
         §§goto(addr0056);
      }
      
      private function _ShopItemProgress_HGroup3_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.gap = 0;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.verticalCenter = 0;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.left = 13;
                  if(_loc3_)
                  {
                     _loc1_.right = 13;
                     if(!(_loc2_ && _loc3_))
                     {
                        _loc1_.percentWidth = 50;
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           _loc1_.mxmlContent = [this._ShopItemProgress_BriskImageDynaLib7_c(),this._ShopItemProgress_BriskImageDynaLib8_c(),this._ShopItemProgress_BriskImageDynaLib9_c()];
                           if(!_loc2_)
                           {
                              addr009a:
                              _loc1_.id = "progressBarBlend";
                              if(_loc3_)
                              {
                                 addr00a5:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc3_)
                                    {
                                       _loc1_.document = this;
                                       if(!_loc2_)
                                       {
                                          addr00c4:
                                          this.progressBarBlend = _loc1_;
                                          if(_loc3_ || Boolean(_loc1_))
                                          {
                                             addr00d6:
                                             BindingManager.executeBindings(this,"progressBarBlend",this.progressBarBlend);
                                          }
                                       }
                                       §§goto(addr00e3);
                                    }
                                 }
                                 §§goto(addr00c4);
                              }
                              §§goto(addr00d6);
                           }
                           addr00e3:
                           return _loc1_;
                        }
                        §§goto(addr00c4);
                     }
                     §§goto(addr009a);
                  }
                  §§goto(addr00c4);
               }
               §§goto(addr00a5);
            }
            §§goto(addr00d6);
         }
         §§goto(addr00c4);
      }
      
      private function _ShopItemProgress_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "ui_main_inner_ressourcelevel_left";
               if(_loc2_ || _loc2_)
               {
                  §§goto(addr005f);
               }
               §§goto(addr006b);
            }
         }
         addr005f:
         if(!_loc1_.document)
         {
            if(_loc2_)
            {
               addr006b:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _ShopItemProgress_BriskImageDynaLib8_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "ui_main_inner_ressourcelevel_middle";
               if(!_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(_loc3_)
                  {
                     _loc1_.percentHeight = 100;
                     if(_loc3_ || _loc3_)
                     {
                        addr006a:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr007e:
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr006a);
         }
         §§goto(addr007e);
      }
      
      private function _ShopItemProgress_BriskImageDynaLib9_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "ui_main_inner_ressourcelevel_right";
               if(_loc2_ || _loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc3_)
                     {
                        addr006f:
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr006f);
      }
      
      private function _ShopItemProgress_bindingsSetup() : Array
      {
         var result:Array;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§newactivation());
         if(_loc2_ || _loc3_)
         {
            §§pop().§§slot[1] = [];
            if(!_loc3_)
            {
               §§push(§§newactivation());
               if(_loc2_)
               {
                  §§goto(addr0047);
               }
               §§goto(addr0064);
            }
            §§goto(addr0062);
         }
         addr0047:
         §§push(§§pop().§§slot[1]);
         if(_loc2_)
         {
            §§pop()[0] = new Binding(this,function():String
            {
               var _loc1_:* = BlendMode.OVERLAY;
               return _loc1_ == undefined ? null : String(_loc1_);
            },null,"progressBarBlend.blendMode");
            addr0064:
            addr0062:
            return result;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get progressBar() : HGroup
      {
         return this._1131509414progressBar;
      }
      
      public function set progressBar(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1131509414progressBar;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1131509414progressBar = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr0060);
                  }
                  §§goto(addr006f);
               }
               addr0060:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr006f:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressBar",_loc2_,param1));
                  }
               }
               §§goto(addr007e);
            }
         }
         addr007e:
      }
      
      [Bindable(event="propertyChange")]
      public function get progressBarBlend() : HGroup
      {
         return this._1239322293progressBarBlend;
      }
      
      public function set progressBarBlend(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1239322293progressBarBlend;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._1239322293progressBarBlend = param1;
                  if(_loc3_ || _loc3_)
                  {
                     addr0066:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressBarBlend",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008d);
               }
               §§goto(addr0066);
            }
            addr008d:
            return;
         }
         §§goto(addr0066);
      }
   }
}

