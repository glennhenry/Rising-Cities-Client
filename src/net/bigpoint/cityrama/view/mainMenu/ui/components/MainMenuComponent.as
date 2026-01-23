package net.bigpoint.cityrama.view.mainMenu.ui.components
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
   import spark.core.SpriteVisualElement;
   
   use namespace mx_internal;
   
   public class MainMenuComponent extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _201073350bgGroup:HGroup;
      
      private var _1349119146cursor:QuadToggleButton;
      
      private var _1591961399cursorGroup:CursorGroupComponent;
      
      private var _600094315friends:QuadToggleButton;
      
      private var _1147097226ingameStore:QuadToggleButton;
      
      private var _2020599460inventory:QuadToggleButton;
      
      private var _987049855inventorySparkleSprite:SpriteVisualElement;
      
      private var _310630091majorvilla:QuadToggleButton;
      
      private var _1081306052market:QuadToggleButton;
      
      private var _1249474914options:QuadToggleButton;
      
      private var _1990659455optionsGroup:OptionsGroupComponent;
      
      private var _1313256166playfieldSwitch:QuadToggleButton;
      
      private var _355710569viewmodeGroup:ViewmodeGroupComponent;
      
      private var _1560240213viewmodes:QuadToggleButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function MainMenuComponent()
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
         if(_loc3_ || Boolean(this))
         {
            §§push(null);
            if(_loc3_)
            {
               §§pop().§§slot[3] = §§pop();
               if(!(_loc4_ && _loc2_))
               {
                  §§push(§§newactivation());
                  if(_loc3_ || _loc1_)
                  {
                     addr004d:
                     §§pop().§§slot[5] = null;
                     if(_loc3_)
                     {
                        this.mx_internal::_bindings = [];
                        if(_loc3_)
                        {
                           this.mx_internal::_watchers = [];
                           if(_loc3_ || _loc2_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(_loc3_)
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(!(_loc4_ && _loc1_))
                                 {
                                    super();
                                    if(_loc3_ || _loc1_)
                                    {
                                       mx_internal::_document = this;
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          §§push(§§newactivation());
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             §§pop().§§slot[1] = this._MainMenuComponent_bindingsSetup();
                                             if(!(_loc4_ && Boolean(this)))
                                             {
                                                §§push(§§newactivation());
                                                if(!_loc4_)
                                                {
                                                   §§pop().§§slot[2] = [];
                                                   if(!_loc4_)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(!_loc4_)
                                                      {
                                                         addr0102:
                                                         §§pop().§§slot[3] = this;
                                                         if(_loc3_)
                                                         {
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  addr011a:
                                                                  §§push(§§newactivation());
                                                                  if(_loc3_ || _loc1_)
                                                                  {
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_mainMenu_ui_components_MainMenuComponentWatcherSetupUtil");
                                                                     if(!(_loc4_ && _loc3_))
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(!_loc4_)
                                                                        {
                                                                           addr015a:
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(_loc3_)
                                                                           {
                                                                              addr0170:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return MainMenuComponent[param1];
                                                                              },bindings,watchers);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 addr018c:
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr01b3:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(!(_loc4_ && Boolean(this)))
                                                                                    {
                                                                                       addr01e2:
                                                                                       this.mouseEnabled = false;
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr01ed:
                                                                                          this.mxmlContent = [this._MainMenuComponent_HGroup1_i(),this._MainMenuComponent_HGroup2_c(),this._MainMenuComponent_CursorGroupComponent1_i(),this._MainMenuComponent_ViewmodeGroupComponent1_i(),this._MainMenuComponent_OptionsGroupComponent1_i()];
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             addr0217:
                                                                                             i = 0;
                                                                                             addr0215:
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
                                                                                                      if(_loc3_ || _loc2_)
                                                                                                      {
                                                                                                         §§push(uint(§§pop() + 1));
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            continue loop2;
                                                                                                         }
                                                                                                      }
                                                                                                      §§push(§§newactivation());
                                                                                                      if(_loc3_ || _loc3_)
                                                                                                      {
                                                                                                         var _temp_21:* = §§pop();
                                                                                                         §§pop().§§slot[4] = _temp_21;
                                                                                                         if(!(_loc4_ && Boolean(this)))
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
                                                                                       addr0282:
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr01ed);
                                                                              }
                                                                              §§goto(addr01b3);
                                                                           }
                                                                           §§goto(addr0282);
                                                                        }
                                                                        §§goto(addr0217);
                                                                     }
                                                                     §§goto(addr0215);
                                                                  }
                                                                  §§goto(addr0217);
                                                               }
                                                               §§goto(addr01e2);
                                                            }
                                                            §§goto(addr0170);
                                                         }
                                                         §§goto(addr01ed);
                                                      }
                                                      §§goto(addr0217);
                                                   }
                                                   §§goto(addr01e2);
                                                }
                                                §§goto(addr0102);
                                             }
                                             §§goto(addr01b3);
                                          }
                                          §§goto(addr0217);
                                       }
                                       §§goto(addr0170);
                                    }
                                    §§goto(addr018c);
                                 }
                                 §§goto(addr01ed);
                              }
                           }
                           §§goto(addr018c);
                        }
                        §§goto(addr011a);
                     }
                     §§goto(addr0170);
                  }
                  §§goto(addr015a);
               }
               §§goto(addr01e2);
            }
            §§goto(addr004d);
         }
         §§goto(addr0217);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            MainMenuComponent._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            super.moduleFactory = param1;
            if(_loc3_ || _loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc2_ && Boolean(param1)))
                  {
                     §§goto(addr0060);
                  }
               }
               else
               {
                  addr006e:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
            §§goto(addr006e);
         }
         addr0060:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super.initialize();
         }
      }
      
      public function determineShowViewModeGroup() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.viewmodeGroup);
            §§push(this.viewmodeGroup);
            if(_loc3_)
            {
               §§push(this.viewmodes);
               if(!(_loc2_ && _loc3_))
               {
                  §§push(Boolean(§§pop().selected));
                  if(!(_loc2_ && _loc2_))
                  {
                     var _temp_5:* = §§pop();
                     §§push(_temp_5);
                     §§push(_temp_5);
                     if(_loc3_)
                     {
                        if(§§pop())
                        {
                           if(_loc3_)
                           {
                              §§pop();
                              §§goto(addr008d);
                           }
                           §§goto(addr008c);
                        }
                        addr008d:
                        §§goto(addr008e);
                     }
                     addr008e:
                     §§goto(addr007c);
                  }
                  §§goto(addr008d);
               }
               addr007c:
               §§goto(addr0078);
            }
            addr0078:
            §§push(this.viewmodes.inactive);
            if(!(_loc2_ && _loc1_))
            {
               addr008c:
               §§push(!§§pop());
            }
            var _temp_7:* = §§pop();
            §§pop().visible = §§pop().includeInLayout = §§pop();
            §§goto(addr0096);
         }
         addr0096:
      }
      
      private function _MainMenuComponent_HGroup1_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = null;
         _loc1_ = new HGroup();
         if(_loc2_ || _loc3_)
         {
            _loc1_.gap = 0;
            if(!_loc3_)
            {
               _loc1_.width = 475;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.bottom = 0;
                     if(!_loc3_)
                     {
                        _loc1_.mxmlContent = [this._MainMenuComponent_BriskImageDynaLib1_c(),this._MainMenuComponent_BriskImageDynaLib2_c(),this._MainMenuComponent_BriskImageDynaLib3_c()];
                        if(_loc2_ || Boolean(this))
                        {
                           _loc1_.id = "bgGroup";
                           if(!(_loc3_ && _loc2_))
                           {
                              addr00a9:
                              if(!_loc1_.document)
                              {
                                 if(_loc2_ || Boolean(this))
                                 {
                                    addr00bd:
                                    _loc1_.document = this;
                                    if(!(_loc3_ && Boolean(_loc1_)))
                                    {
                                       §§goto(addr00db);
                                    }
                                 }
                                 §§goto(addr00ed);
                              }
                              §§goto(addr00db);
                           }
                           §§goto(addr00bd);
                        }
                        §§goto(addr00db);
                     }
                     §§goto(addr00a9);
                  }
               }
               §§goto(addr00bd);
            }
         }
         addr00db:
         this.bgGroup = _loc1_;
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            addr00ed:
            BindingManager.executeBindings(this,"bgGroup",this.bgGroup);
         }
         return _loc1_;
      }
      
      private function _MainMenuComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "ui_main_groundbase_left";
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _MainMenuComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               addr003d:
               _loc1_.dynaBmpSourceName = "ui_main_groundbase_middle";
               if(!_loc3_)
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc3_)
                  {
                     _loc1_.percentHeight = 100;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr0072:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              addr0086:
                              _loc1_.document = this;
                           }
                        }
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr0086);
            }
            §§goto(addr0072);
         }
         §§goto(addr003d);
      }
      
      private function _MainMenuComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.dynaBmpSourceName = "ui_main_groundbase_right";
               if(_loc2_)
               {
                  §§goto(addr005c);
               }
               §§goto(addr0068);
            }
         }
         addr005c:
         if(!_loc1_.document)
         {
            if(_loc2_)
            {
               addr0068:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _MainMenuComponent_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.verticalAlign = "bottom";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.horizontalCenter = 0;
               if(!_loc2_)
               {
                  _loc1_.bottom = 0;
                  if(_loc3_)
                  {
                     addr005b:
                     _loc1_.gap = 4;
                     if(_loc3_ || _loc2_)
                     {
                        addr006d:
                        _loc1_.mouseEnabled = false;
                        if(!_loc2_)
                        {
                           _loc1_.mxmlContent = [this._MainMenuComponent_QuadToggleButton1_i(),this._MainMenuComponent_QuadToggleButton2_i(),this._MainMenuComponent_QuadToggleButton3_i(),this._MainMenuComponent_Group2_c(),this._MainMenuComponent_QuadToggleButton5_i(),this._MainMenuComponent_QuadToggleButton6_i(),this._MainMenuComponent_QuadToggleButton7_i(),this._MainMenuComponent_QuadToggleButton8_i(),this._MainMenuComponent_QuadToggleButton9_i()];
                           §§goto(addr0077);
                        }
                        §§goto(addr00d7);
                     }
                     §§goto(addr00c3);
                  }
                  §§goto(addr006d);
               }
               §§goto(addr005b);
            }
            addr0077:
            if(!_loc2_)
            {
               addr00c3:
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     addr00d7:
                     _loc1_.document = this;
                  }
               }
            }
            §§goto(addr00db);
         }
         addr00db:
         return _loc1_;
      }
      
      private function _MainMenuComponent_QuadToggleButton1_i() : QuadToggleButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:QuadToggleButton = new QuadToggleButton();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.styleName = "cursor";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.id = "cursor";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr006e:
                        _loc1_.document = this;
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           §§goto(addr007f);
                        }
                     }
                     §§goto(addr0089);
                  }
               }
               addr007f:
               this.cursor = _loc1_;
               if(_loc3_)
               {
                  addr0089:
                  BindingManager.executeBindings(this,"cursor",this.cursor);
               }
               return _loc1_;
            }
         }
         §§goto(addr006e);
      }
      
      private function _MainMenuComponent_QuadToggleButton2_i() : QuadToggleButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:QuadToggleButton = new QuadToggleButton();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.styleName = "viewmodes";
            if(_loc2_)
            {
               _loc1_.inactive = true;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.id = "viewmodes";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr0069:
                           _loc1_.document = this;
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              §§goto(addr0085);
                           }
                           §§goto(addr0097);
                        }
                     }
                     addr0085:
                     this.viewmodes = _loc1_;
                     if(_loc2_ || _loc2_)
                     {
                        addr0097:
                        BindingManager.executeBindings(this,"viewmodes",this.viewmodes);
                     }
                     §§goto(addr00a4);
                  }
                  §§goto(addr0069);
               }
               addr00a4:
               return _loc1_;
            }
            §§goto(addr0069);
         }
         §§goto(addr0097);
      }
      
      private function _MainMenuComponent_QuadToggleButton3_i() : QuadToggleButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:QuadToggleButton = new QuadToggleButton();
         if(_loc3_)
         {
            _loc1_.styleName = "architect";
            if(_loc3_)
            {
               _loc1_.id = "ingameStore";
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        §§goto(addr0063);
                     }
                  }
                  §§goto(addr006c);
               }
               §§goto(addr007e);
            }
         }
         addr0063:
         _loc1_.document = this;
         if(_loc3_)
         {
            addr006c:
            this.ingameStore = _loc1_;
            if(_loc3_ || _loc3_)
            {
               addr007e:
               BindingManager.executeBindings(this,"ingameStore",this.ingameStore);
            }
         }
         return _loc1_;
      }
      
      private function _MainMenuComponent_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.mouseEnabled = false;
            if(_loc2_ || Boolean(this))
            {
               addr004a:
               _loc1_.mxmlContent = [this._MainMenuComponent_QuadToggleButton4_i(),this._MainMenuComponent_SpriteVisualElement1_i()];
               if(!_loc3_)
               {
                  §§goto(addr0060);
               }
               §§goto(addr0074);
            }
            addr0060:
            if(!_loc1_.document)
            {
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr0074:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr004a);
      }
      
      private function _MainMenuComponent_QuadToggleButton4_i() : QuadToggleButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:QuadToggleButton = new QuadToggleButton();
         if(_loc2_ || _loc2_)
         {
            _loc1_.styleName = "inventory";
            if(_loc2_ || _loc2_)
            {
               _loc1_.id = "inventory";
               if(!(_loc3_ && _loc2_))
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        §§goto(addr007f);
                     }
                  }
                  §§goto(addr0090);
               }
               addr007f:
               _loc1_.document = this;
               if(!(_loc3_ && _loc2_))
               {
                  addr0090:
                  this.inventory = _loc1_;
                  if(_loc2_)
                  {
                     BindingManager.executeBindings(this,"inventory",this.inventory);
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0090);
      }
      
      private function _MainMenuComponent_SpriteVisualElement1_i() : SpriteVisualElement
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SpriteVisualElement = new SpriteVisualElement();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.percentHeight = 100;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.percentWidth = 100;
               if(!_loc3_)
               {
                  _loc1_.mouseChildren = false;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr0063:
                     _loc1_.mouseEnabled = false;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr0083:
                        _loc1_.initialized(this,"inventorySparkleSprite");
                        if(!(_loc3_ && Boolean(this)))
                        {
                           §§goto(addr0099);
                        }
                     }
                     §§goto(addr00a3);
                  }
                  addr0099:
                  this.inventorySparkleSprite = _loc1_;
                  if(_loc2_)
                  {
                     addr00a3:
                     BindingManager.executeBindings(this,"inventorySparkleSprite",this.inventorySparkleSprite);
                  }
                  return _loc1_;
               }
               §§goto(addr00a3);
            }
            §§goto(addr0063);
         }
         §§goto(addr0083);
      }
      
      private function _MainMenuComponent_QuadToggleButton5_i() : QuadToggleButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:QuadToggleButton = new QuadToggleButton();
         if(_loc2_ || _loc3_)
         {
            _loc1_.styleName = "market";
            if(!_loc3_)
            {
               _loc1_.id = "market";
               if(!(_loc3_ && _loc3_))
               {
                  addr0053:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        _loc1_.document = this;
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr007c:
                           this.market = _loc1_;
                           if(_loc2_ || Boolean(this))
                           {
                              addr008e:
                              BindingManager.executeBindings(this,"market",this.market);
                           }
                           §§goto(addr009b);
                        }
                        §§goto(addr008e);
                     }
                     §§goto(addr009b);
                  }
                  §§goto(addr007c);
               }
               addr009b:
               return _loc1_;
            }
            §§goto(addr007c);
         }
         §§goto(addr0053);
      }
      
      private function _MainMenuComponent_QuadToggleButton6_i() : QuadToggleButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:QuadToggleButton = new QuadToggleButton();
         if(_loc3_)
         {
            _loc1_.styleName = "friends";
            if(!_loc2_)
            {
               addr002e:
               _loc1_.id = "friends";
               if(!(_loc2_ && Boolean(this)))
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        §§goto(addr006d);
                     }
                  }
                  §§goto(addr0076);
               }
               addr006d:
               _loc1_.document = this;
               if(!_loc2_)
               {
                  addr0076:
                  this.friends = _loc1_;
                  if(!(_loc2_ && _loc2_))
                  {
                     BindingManager.executeBindings(this,"friends",this.friends);
                  }
               }
               §§goto(addr0095);
            }
            addr0095:
            return _loc1_;
         }
         §§goto(addr002e);
      }
      
      private function _MainMenuComponent_QuadToggleButton7_i() : QuadToggleButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:QuadToggleButton = new QuadToggleButton();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.styleName = "majorvilla";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.showBadge = true;
               if(_loc2_)
               {
                  _loc1_.id = "majorvilla";
                  if(_loc2_ || Boolean(this))
                  {
                     §§goto(addr0069);
                  }
                  §§goto(addr008b);
               }
               addr0069:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr008b:
                     _loc1_.document = this;
                     if(!_loc3_)
                     {
                        §§goto(addr0094);
                     }
                  }
                  §§goto(addr009e);
               }
               addr0094:
               this.majorvilla = _loc1_;
               if(_loc2_)
               {
                  addr009e:
                  BindingManager.executeBindings(this,"majorvilla",this.majorvilla);
               }
               return _loc1_;
            }
            §§goto(addr009e);
         }
         §§goto(addr008b);
      }
      
      private function _MainMenuComponent_QuadToggleButton8_i() : QuadToggleButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:QuadToggleButton = new QuadToggleButton();
         if(_loc2_ || _loc2_)
         {
            _loc1_.styleName = "playfieldSwitch";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               addr003e:
               _loc1_.inactive = true;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.id = "playfieldSwitch";
                  if(!(_loc3_ && _loc2_))
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr0086:
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr008f:
                              this.playfieldSwitch = _loc1_;
                              if(_loc2_ || _loc2_)
                              {
                                 addr00a1:
                                 BindingManager.executeBindings(this,"playfieldSwitch",this.playfieldSwitch);
                              }
                           }
                        }
                        §§goto(addr00ae);
                     }
                     §§goto(addr008f);
                  }
                  addr00ae:
                  return _loc1_;
               }
               §§goto(addr0086);
            }
            §§goto(addr00a1);
         }
         §§goto(addr003e);
      }
      
      private function _MainMenuComponent_QuadToggleButton9_i() : QuadToggleButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:QuadToggleButton = new QuadToggleButton();
         if(_loc2_)
         {
            _loc1_.styleName = "options";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.id = "options";
               if(!(_loc3_ && Boolean(this)))
               {
                  addr0054:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr006d:
                        _loc1_.document = this;
                        if(!_loc3_)
                        {
                           addr0076:
                           this.options = _loc1_;
                           if(_loc2_ || _loc2_)
                           {
                              addr0088:
                              BindingManager.executeBindings(this,"options",this.options);
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0076);
               }
               §§goto(addr006d);
            }
            §§goto(addr0088);
         }
         §§goto(addr0054);
      }
      
      private function _MainMenuComponent_CursorGroupComponent1_i() : CursorGroupComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:CursorGroupComponent = new CursorGroupComponent();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.left = 5;
            if(!_loc2_)
            {
               _loc1_.bottom = 50;
               if(_loc3_)
               {
                  _loc1_.gap = 0;
                  if(_loc3_)
                  {
                     _loc1_.id = "cursorGroup";
                     if(_loc3_)
                     {
                        addr006c:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 §§goto(addr0081);
                              }
                              §§goto(addr008b);
                           }
                        }
                     }
                  }
                  addr0081:
                  this.cursorGroup = _loc1_;
                  if(!_loc2_)
                  {
                     addr008b:
                     BindingManager.executeBindings(this,"cursorGroup",this.cursorGroup);
                  }
                  §§goto(addr0098);
               }
               §§goto(addr006c);
            }
            addr0098:
            return _loc1_;
         }
         §§goto(addr008b);
      }
      
      private function _MainMenuComponent_ViewmodeGroupComponent1_i() : ViewmodeGroupComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ViewmodeGroupComponent = new ViewmodeGroupComponent();
         if(!_loc2_)
         {
            _loc1_.left = 50;
            if(_loc3_)
            {
               _loc1_.bottom = 50;
               if(!(_loc2_ && Boolean(this)))
               {
                  addr0040:
                  _loc1_.gap = 0;
                  if(!_loc2_)
                  {
                     _loc1_.visible = false;
                     if(!_loc2_)
                     {
                        _loc1_.includeInLayout = false;
                        if(!(_loc2_ && Boolean(this)))
                        {
                           _loc1_.id = "viewmodeGroup";
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr008e:
                              if(!_loc1_.document)
                              {
                                 if(!_loc2_)
                                 {
                                    addr009a:
                                    _loc1_.document = this;
                                    if(!_loc2_)
                                    {
                                       addr00a3:
                                       this.viewmodeGroup = _loc1_;
                                       if(!_loc2_)
                                       {
                                          addr00ad:
                                          BindingManager.executeBindings(this,"viewmodeGroup",this.viewmodeGroup);
                                       }
                                    }
                                 }
                                 return _loc1_;
                              }
                           }
                        }
                        §§goto(addr00a3);
                     }
                     §§goto(addr009a);
                  }
                  §§goto(addr00ad);
               }
               §§goto(addr008e);
            }
            §§goto(addr0040);
         }
         §§goto(addr00a3);
      }
      
      private function _MainMenuComponent_OptionsGroupComponent1_i() : OptionsGroupComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:OptionsGroupComponent = new OptionsGroupComponent();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.right = 5;
            if(_loc3_)
            {
               _loc1_.bottom = 50;
               if(_loc3_)
               {
                  _loc1_.gap = 0;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.id = "optionsGroup";
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr006f:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr0092:
                                 this.optionsGroup = _loc1_;
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    addr00a4:
                                    BindingManager.executeBindings(this,"optionsGroup",this.optionsGroup);
                                 }
                              }
                              §§goto(addr00b1);
                           }
                           §§goto(addr00a4);
                        }
                        §§goto(addr0092);
                     }
                     §§goto(addr00b1);
                  }
                  §§goto(addr0092);
               }
               addr00b1:
               return _loc1_;
            }
            §§goto(addr00a4);
         }
         §§goto(addr006f);
      }
      
      private function _MainMenuComponent_bindingsSetup() : Array
      {
         var result:Array;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§newactivation());
         if(!(_loc3_ && _loc1_))
         {
            §§pop().§§slot[1] = [];
            if(!(_loc3_ && _loc2_))
            {
               §§push(§§newactivation());
               if(_loc2_ || _loc1_)
               {
                  §§push(§§pop().§§slot[1]);
                  if(_loc2_ || _loc2_)
                  {
                     §§push(0);
                     if(!_loc3_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():Boolean
                        {
                           return cursor.selected;
                        },null,"cursorGroup.visible");
                        if(!(_loc3_ && _loc1_))
                        {
                           §§push(§§newactivation());
                           if(_loc2_)
                           {
                              addr0090:
                              §§push(§§pop().§§slot[1]);
                              if(!_loc3_)
                              {
                                 addr0097:
                                 §§push(1);
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    §§pop()[§§pop()] = new Binding(this,function():Boolean
                                    {
                                       return cursor.selected;
                                    },null,"cursorGroup.includeInLayout");
                                    if(!_loc3_)
                                    {
                                       addr00bc:
                                       §§push(§§newactivation());
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          §§push(§§pop().§§slot[1]);
                                          if(_loc2_)
                                          {
                                             §§push(2);
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                §§pop()[§§pop()] = new Binding(this,function():Boolean
                                                {
                                                   return options.selected;
                                                },null,"optionsGroup.visible");
                                                if(_loc2_)
                                                {
                                                   addr0105:
                                                   §§push(§§newactivation());
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      §§push(§§pop().§§slot[1]);
                                                      if(_loc2_)
                                                      {
                                                         addr011d:
                                                         §§pop()[3] = new Binding(this,function():Boolean
                                                         {
                                                            return options.selected;
                                                         },null,"optionsGroup.includeInLayout");
                                                         addr0130:
                                                         addr012e:
                                                         §§push(result);
                                                         addr011b:
                                                      }
                                                      return §§pop();
                                                   }
                                                   §§goto(addr0130);
                                                }
                                                §§goto(addr012e);
                                             }
                                             §§goto(addr011d);
                                          }
                                          §§goto(addr011b);
                                       }
                                       §§goto(addr0130);
                                    }
                                    §§goto(addr0105);
                                 }
                                 §§goto(addr011d);
                              }
                              §§goto(addr011b);
                           }
                           §§goto(addr0130);
                        }
                        §§goto(addr00bc);
                     }
                     §§goto(addr011d);
                  }
                  §§goto(addr0097);
               }
               §§goto(addr0090);
            }
            §§goto(addr0105);
         }
         §§goto(addr0090);
      }
      
      [Bindable(event="propertyChange")]
      public function get bgGroup() : HGroup
      {
         return this._201073350bgGroup;
      }
      
      public function set bgGroup(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._201073350bgGroup;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._201073350bgGroup = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bgGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cursor() : QuadToggleButton
      {
         return this._1349119146cursor;
      }
      
      public function set cursor(param1:QuadToggleButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1349119146cursor;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1349119146cursor = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cursor",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr006f);
      }
      
      [Bindable(event="propertyChange")]
      public function get cursorGroup() : CursorGroupComponent
      {
         return this._1591961399cursorGroup;
      }
      
      public function set cursorGroup(param1:CursorGroupComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1591961399cursorGroup;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._1591961399cursorGroup = param1;
                  if(!_loc4_)
                  {
                     addr0061:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cursorGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr0078);
               }
            }
            addr0087:
            return;
         }
         §§goto(addr0061);
      }
      
      [Bindable(event="propertyChange")]
      public function get friends() : QuadToggleButton
      {
         return this._600094315friends;
      }
      
      public function set friends(param1:QuadToggleButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._600094315friends;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._600094315friends = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"friends",_loc2_,param1));
                        }
                     }
                     §§goto(addr0086);
                  }
               }
               §§goto(addr0077);
            }
         }
         addr0086:
      }
      
      [Bindable(event="propertyChange")]
      public function get ingameStore() : QuadToggleButton
      {
         return this._1147097226ingameStore;
      }
      
      public function set ingameStore(param1:QuadToggleButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1147097226ingameStore;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._1147097226ingameStore = param1;
                  if(_loc3_)
                  {
                     addr0054:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ingameStore",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0073);
               }
               §§goto(addr0054);
            }
            addr0073:
            return;
         }
         §§goto(addr0054);
      }
      
      [Bindable(event="propertyChange")]
      public function get inventory() : QuadToggleButton
      {
         return this._2020599460inventory;
      }
      
      public function set inventory(param1:QuadToggleButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2020599460inventory;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._2020599460inventory = param1;
                  if(_loc4_ || _loc3_)
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inventory",_loc2_,param1));
                        }
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr0076);
               }
            }
            addr0085:
            return;
         }
         §§goto(addr005e);
      }
      
      [Bindable(event="propertyChange")]
      public function get inventorySparkleSprite() : SpriteVisualElement
      {
         return this._987049855inventorySparkleSprite;
      }
      
      public function set inventorySparkleSprite(param1:SpriteVisualElement) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._987049855inventorySparkleSprite;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._987049855inventorySparkleSprite = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inventorySparkleSprite",_loc2_,param1));
                        }
                     }
                     §§goto(addr0083);
                  }
                  §§goto(addr0074);
               }
            }
         }
         addr0083:
      }
      
      [Bindable(event="propertyChange")]
      public function get majorvilla() : QuadToggleButton
      {
         return this._310630091majorvilla;
      }
      
      public function set majorvilla(param1:QuadToggleButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._310630091majorvilla;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._310630091majorvilla = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr005f);
                  }
                  §§goto(addr0077);
               }
               addr005f:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || Boolean(this))
                  {
                     addr0077:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"majorvilla",_loc2_,param1));
                  }
               }
               §§goto(addr0086);
            }
            addr0086:
            return;
         }
         §§goto(addr005f);
      }
      
      [Bindable(event="propertyChange")]
      public function get market() : QuadToggleButton
      {
         return this._1081306052market;
      }
      
      public function set market(param1:QuadToggleButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1081306052market;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._1081306052market = param1;
                  if(!_loc3_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"market",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr0055);
            }
         }
         addr007c:
      }
      
      [Bindable(event="propertyChange")]
      public function get options() : QuadToggleButton
      {
         return this._1249474914options;
      }
      
      public function set options(param1:QuadToggleButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1249474914options;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1249474914options = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"options",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr005d);
            }
            addr0084:
            return;
         }
         §§goto(addr005d);
      }
      
      [Bindable(event="propertyChange")]
      public function get optionsGroup() : OptionsGroupComponent
      {
         return this._1990659455optionsGroup;
      }
      
      public function set optionsGroup(param1:OptionsGroupComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1990659455optionsGroup;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1990659455optionsGroup = param1;
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"optionsGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0078);
      }
      
      [Bindable(event="propertyChange")]
      public function get playfieldSwitch() : QuadToggleButton
      {
         return this._1313256166playfieldSwitch;
      }
      
      public function set playfieldSwitch(param1:QuadToggleButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1313256166playfieldSwitch;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1313256166playfieldSwitch = param1;
                  if(_loc4_)
                  {
                     §§goto(addr0052);
                  }
                  §§goto(addr006a);
               }
               addr0052:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || Boolean(param1))
                  {
                     addr006a:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"playfieldSwitch",_loc2_,param1));
                  }
               }
               §§goto(addr0079);
            }
            addr0079:
            return;
         }
         §§goto(addr0052);
      }
      
      [Bindable(event="propertyChange")]
      public function get viewmodeGroup() : ViewmodeGroupComponent
      {
         return this._355710569viewmodeGroup;
      }
      
      public function set viewmodeGroup(param1:ViewmodeGroupComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._355710569viewmodeGroup;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._355710569viewmodeGroup = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"viewmodeGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr006f);
      }
      
      [Bindable(event="propertyChange")]
      public function get viewmodes() : QuadToggleButton
      {
         return this._1560240213viewmodes;
      }
      
      public function set viewmodes(param1:QuadToggleButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1560240213viewmodes;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._1560240213viewmodes = param1;
                  if(!_loc4_)
                  {
                     addr0063:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0073:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"viewmodes",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0082);
               }
               §§goto(addr0063);
            }
            addr0082:
            return;
         }
         §§goto(addr0073);
      }
   }
}

