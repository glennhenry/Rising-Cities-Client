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
   import mx.resources.ResourceManager;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import spark.components.Group;
   import spark.components.RadioButton;
   import spark.components.RadioButtonGroup;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class CursorGroupComponent extends VGroup implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _590797979bg_bottom:BriskImageDynaLib;
      
      private var _281910577bg_middle:BriskImageDynaLib;
      
      private var _1391242661bg_top:BriskImageDynaLib;
      
      private var _1932099489hipButton:RadioButton;
      
      private var _2066190749moveButton:RadioButton;
      
      private var _1339123498removeButton:RadioButton;
      
      private var _110545371tools:RadioButtonGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function CursorGroupComponent()
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
         if(_loc4_ || _loc2_)
         {
            §§push(null);
            if(_loc4_ || _loc3_)
            {
               §§pop().§§slot[3] = §§pop();
               if(_loc4_ || _loc1_)
               {
                  §§push(§§newactivation());
                  if(!_loc3_)
                  {
                     addr0050:
                     §§pop().§§slot[5] = null;
                     if(!_loc3_)
                     {
                        this.mx_internal::_bindings = [];
                        if(_loc4_)
                        {
                           this.mx_internal::_watchers = [];
                           if(!_loc3_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(!_loc3_)
                              {
                                 addr007b:
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(!_loc3_)
                                 {
                                    super();
                                    if(_loc4_)
                                    {
                                       mx_internal::_document = this;
                                       if(!_loc3_)
                                       {
                                          addr00a1:
                                          §§push(§§newactivation());
                                          if(!(_loc3_ && Boolean(this)))
                                          {
                                             §§pop().§§slot[1] = this._CursorGroupComponent_bindingsSetup();
                                             if(!_loc3_)
                                             {
                                                §§push(§§newactivation());
                                                if(!(_loc3_ && Boolean(this)))
                                                {
                                                   §§pop().§§slot[2] = [];
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      addr00e2:
                                                      §§push(§§newactivation());
                                                      if(_loc4_ || _loc1_)
                                                      {
                                                         addr00f2:
                                                         §§pop().§§slot[3] = this;
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  addr0111:
                                                                  §§push(§§newactivation());
                                                                  if(_loc4_ || _loc1_)
                                                                  {
                                                                     addr0121:
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_mainMenu_ui_components_CursorGroupComponentWatcherSetupUtil");
                                                                     if(_loc4_ || _loc3_)
                                                                     {
                                                                        addr014b:
                                                                        §§push(§§newactivation());
                                                                        if(_loc4_ || _loc1_)
                                                                        {
                                                                           addr015b:
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(!_loc3_)
                                                                           {
                                                                              addr0171:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return CursorGroupComponent[param1];
                                                                              },bindings,watchers);
                                                                              if(!(_loc3_ && _loc1_))
                                                                              {
                                                                                 addr0194:
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(_loc4_ || _loc2_)
                                                                                 {
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(_loc4_ || _loc3_)
                                                                                    {
                                                                                       addr01f2:
                                                                                       this.mxmlContent = [this._CursorGroupComponent_BriskImageDynaLib1_i(),this._CursorGroupComponent_Group1_c(),this._CursorGroupComponent_BriskImageDynaLib3_i()];
                                                                                       if(_loc4_ || _loc3_)
                                                                                       {
                                                                                          addr0217:
                                                                                          this._CursorGroupComponent_RadioButtonGroup1_i();
                                                                                          if(!(_loc3_ && Boolean(this)))
                                                                                          {
                                                                                             addr022c:
                                                                                             i = 0;
                                                                                             addr022a:
                                                                                          }
                                                                                       }
                                                                                       var _temp_19:*;
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
                                                                                                   if(!(_loc4_ || _loc2_))
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(§§newactivation());
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      §§push(§§pop().§§slot[4]);
                                                                                                      if(!(_loc3_ && Boolean(this)))
                                                                                                      {
                                                                                                         §§push(uint(§§pop() + 1));
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            §§push(§§newactivation());
                                                                                                            if(!(_loc3_ && _loc1_))
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
                                                                                       while(var _temp_19:* = §§pop(), §§pop().§§slot[4] = _temp_19, _loc4_ || _loc2_);
                                                                                       
                                                                                       return;
                                                                                       addr029f:
                                                                                    }
                                                                                    §§goto(addr0217);
                                                                                 }
                                                                              }
                                                                              §§goto(addr029f);
                                                                           }
                                                                           §§goto(addr0194);
                                                                        }
                                                                        §§goto(addr022c);
                                                                     }
                                                                     §§goto(addr0171);
                                                                  }
                                                                  §§goto(addr015b);
                                                               }
                                                            }
                                                            §§goto(addr0171);
                                                         }
                                                         §§goto(addr01f2);
                                                      }
                                                      §§goto(addr022c);
                                                   }
                                                   §§goto(addr014b);
                                                }
                                                §§goto(addr00f2);
                                             }
                                             §§goto(addr00e2);
                                          }
                                          §§goto(addr00f2);
                                       }
                                       §§goto(addr0217);
                                    }
                                    §§goto(addr014b);
                                 }
                                 §§goto(addr00a1);
                              }
                              §§goto(addr0111);
                           }
                           §§goto(addr022a);
                        }
                        §§goto(addr0194);
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr022c);
               }
               §§goto(addr01f2);
            }
            §§goto(addr0050);
         }
         §§goto(addr0121);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            CursorGroupComponent._watcherSetupUtil = param1;
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
                  if(!_loc2_)
                  {
                     return;
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
         }
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super.initialize();
         }
      }
      
      private function handleToolChange(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(param1))
         {
            this.includeInLayout = this.visible = false;
         }
      }
      
      private function _CursorGroupComponent_RadioButtonGroup1_i() : RadioButtonGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:RadioButtonGroup = new RadioButtonGroup();
         if(_loc2_ || _loc2_)
         {
            _loc1_.addEventListener("change",this.__tools_change);
            if(!_loc3_)
            {
               _loc1_.initialized(this,"tools");
               if(_loc2_ || Boolean(_loc1_))
               {
                  this.tools = _loc1_;
                  if(!_loc3_)
                  {
                     addr0074:
                     BindingManager.executeBindings(this,"tools",this.tools);
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0074);
      }
      
      public function __tools_change(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.handleToolChange(param1);
         }
      }
      
      private function _CursorGroupComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "ui_main_subkategorie_top";
               if(_loc2_ || _loc2_)
               {
                  _loc1_.id = "bg_top";
                  if(_loc2_ || _loc3_)
                  {
                     addr006d:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           addr008d:
                           _loc1_.document = this;
                           if(!(_loc3_ && _loc2_))
                           {
                              addr009e:
                              this.bg_top = _loc1_;
                              if(_loc2_)
                              {
                                 addr00a8:
                                 BindingManager.executeBindings(this,"bg_top",this.bg_top);
                              }
                              §§goto(addr00b5);
                           }
                           §§goto(addr00a8);
                        }
                        addr00b5:
                        return _loc1_;
                     }
                     §§goto(addr009e);
                  }
                  §§goto(addr00a8);
               }
               §§goto(addr006d);
            }
            §§goto(addr008d);
         }
         §§goto(addr006d);
      }
      
      private function _CursorGroupComponent_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.mxmlContent = [this._CursorGroupComponent_BriskImageDynaLib2_i(),this._CursorGroupComponent_VGroup2_c()];
            if(!_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr0067:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0067);
      }
      
      private function _CursorGroupComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "ui_main_subkategorie_middle";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.percentWidth = 100;
                  if(_loc2_)
                  {
                     _loc1_.percentHeight = 100;
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.id = "bg_middle";
                        if(_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr0088:
                                 _loc1_.document = this;
                                 if(_loc2_)
                                 {
                                    addr0091:
                                    this.bg_middle = _loc1_;
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       addr00a3:
                                       BindingManager.executeBindings(this,"bg_middle",this.bg_middle);
                                    }
                                 }
                              }
                              return _loc1_;
                           }
                           §§goto(addr0091);
                        }
                        §§goto(addr00a3);
                     }
                     §§goto(addr0088);
                  }
                  §§goto(addr00a3);
               }
            }
            §§goto(addr0091);
         }
         §§goto(addr0088);
      }
      
      private function _CursorGroupComponent_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.horizontalCenter = 0;
            if(_loc2_)
            {
               §§goto(addr0032);
            }
            §§goto(addr009e);
         }
         addr0032:
         _loc1_.percentHeight = 100;
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.gap = 2;
            if(_loc2_)
            {
               _loc1_.mxmlContent = [this._CursorGroupComponent_RadioButton1_i(),this._CursorGroupComponent_RadioButton2_i(),this._CursorGroupComponent_RadioButton3_i()];
               if(_loc2_ || _loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc3_)
                     {
                        addr009e:
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr00a2);
            }
            §§goto(addr009e);
         }
         addr00a2:
         return _loc1_;
      }
      
      private function _CursorGroupComponent_RadioButton1_i() : RadioButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:RadioButton = new RadioButton();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.groupName = "tools";
            if(_loc2_ || _loc2_)
            {
               _loc1_.styleName = "subMenueCursorImprovement";
               if(!(_loc3_ && _loc3_))
               {
                  addr005d:
                  _loc1_.id = "hipButton";
                  if(_loc2_ || Boolean(this))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr0088:
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              addr0091:
                              this.hipButton = _loc1_;
                              if(_loc2_)
                              {
                                 addr009b:
                                 BindingManager.executeBindings(this,"hipButton",this.hipButton);
                              }
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr0091);
                  }
                  §§goto(addr009b);
               }
               §§goto(addr0088);
            }
            §§goto(addr005d);
         }
         §§goto(addr0091);
      }
      
      private function _CursorGroupComponent_RadioButton2_i() : RadioButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:RadioButton = new RadioButton();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.groupName = "tools";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.styleName = "subMenueCursorMove";
               if(!(_loc2_ && _loc2_))
               {
                  addr0062:
                  _loc1_.id = "moveButton";
                  if(_loc3_ || _loc3_)
                  {
                     addr0075:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              §§goto(addr009f);
                           }
                        }
                        §§goto(addr00b1);
                     }
                  }
                  addr009f:
                  this.moveButton = _loc1_;
                  if(_loc3_ || Boolean(this))
                  {
                     addr00b1:
                     BindingManager.executeBindings(this,"moveButton",this.moveButton);
                  }
                  §§goto(addr00be);
               }
               addr00be:
               return _loc1_;
            }
            §§goto(addr0075);
         }
         §§goto(addr0062);
      }
      
      private function _CursorGroupComponent_RadioButton3_i() : RadioButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:RadioButton = new RadioButton();
         if(_loc2_)
         {
            _loc1_.groupName = "tools";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.styleName = "subMenueCursorRemove";
               if(_loc2_)
               {
                  _loc1_.id = "removeButton";
                  if(!_loc3_)
                  {
                     §§goto(addr0058);
                  }
               }
               §§goto(addr008a);
            }
            §§goto(addr0077);
         }
         addr0058:
         if(!_loc1_.document)
         {
            if(_loc2_ || _loc3_)
            {
               addr0077:
               _loc1_.document = this;
               if(_loc2_)
               {
                  §§goto(addr0080);
               }
            }
            §§goto(addr008a);
         }
         addr0080:
         this.removeButton = _loc1_;
         if(_loc2_)
         {
            addr008a:
            BindingManager.executeBindings(this,"removeButton",this.removeButton);
         }
         return _loc1_;
      }
      
      private function _CursorGroupComponent_BriskImageDynaLib3_i() : BriskImageDynaLib
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
               _loc1_.dynaBmpSourceName = "ui_main_subkategorie_bottom";
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.id = "bg_bottom";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr008b:
                              this.bg_bottom = _loc1_;
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 addr009d:
                                 BindingManager.executeBindings(this,"bg_bottom",this.bg_bottom);
                              }
                              §§goto(addr00aa);
                           }
                           §§goto(addr009d);
                        }
                        §§goto(addr00aa);
                     }
                     §§goto(addr008b);
                  }
               }
            }
         }
         addr00aa:
         return _loc1_;
      }
      
      private function _CursorGroupComponent_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(!(_loc2_ && _loc2_))
         {
            §§pop().§§slot[1] = [];
            if(!_loc2_)
            {
               §§push(§§newactivation());
               if(_loc3_ || _loc2_)
               {
                  §§push(§§pop().§§slot[1]);
                  if(!(_loc2_ && _loc1_))
                  {
                     §§push(0);
                     if(_loc3_ || _loc3_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():String
                        {
                           var _loc1_:* = ResourceManager.getInstance().getString(String("rcl.tooltips.menubar"),String("rcl.tooltips.menubar.cursor.hip"));
                           return _loc1_ == undefined ? null : String(_loc1_);
                        },null,"hipButton.toolTip");
                        if(_loc3_ || _loc2_)
                        {
                           §§push(§§newactivation());
                           if(!_loc2_)
                           {
                              addr008f:
                              §§push(§§pop().§§slot[1]);
                              if(_loc3_)
                              {
                                 §§push(1);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    §§pop()[§§pop()] = new Binding(this,function():String
                                    {
                                       var _loc1_:* = ResourceManager.getInstance().getString(String("rcl.tooltips.menubar"),String("rcl.tooltips.menubar.cursor.move"));
                                       return _loc1_ == undefined ? null : String(_loc1_);
                                    },null,"moveButton.toolTip");
                                    if(!_loc2_)
                                    {
                                       addr00bb:
                                       §§push(§§newactivation());
                                       if(_loc3_ || _loc3_)
                                       {
                                          §§push(§§pop().§§slot[1]);
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             addr00e7:
                                             §§pop()[2] = new Binding(this,function():String
                                             {
                                                var _loc1_:* = ResourceManager.getInstance().getString(String("rcl.tooltips.menubar"),String("rcl.tooltips.menubar.cursor.demolition"));
                                                return _loc1_ == undefined ? null : String(_loc1_);
                                             },null,"removeButton.toolTip");
                                             addr00fa:
                                             addr00f8:
                                             §§push(result);
                                             addr00e5:
                                          }
                                          return §§pop();
                                       }
                                       §§goto(addr00fa);
                                    }
                                    §§goto(addr00f8);
                                 }
                                 §§goto(addr00e7);
                              }
                              §§goto(addr00e5);
                           }
                           §§goto(addr00fa);
                        }
                        §§goto(addr00bb);
                     }
                     §§goto(addr00e7);
                  }
                  §§goto(addr00e5);
               }
               §§goto(addr00fa);
            }
            §§goto(addr00bb);
         }
         §§goto(addr008f);
      }
      
      [Bindable(event="propertyChange")]
      public function get bg_bottom() : BriskImageDynaLib
      {
         return this._590797979bg_bottom;
      }
      
      public function set bg_bottom(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._590797979bg_bottom;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._590797979bg_bottom = param1;
                  if(_loc4_)
                  {
                     §§goto(addr0052);
                  }
                  §§goto(addr0069);
               }
               addr0052:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0069:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bg_bottom",_loc2_,param1));
                  }
               }
               §§goto(addr0078);
            }
         }
         addr0078:
      }
      
      [Bindable(event="propertyChange")]
      public function get bg_middle() : BriskImageDynaLib
      {
         return this._281910577bg_middle;
      }
      
      public function set bg_middle(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._281910577bg_middle;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._281910577bg_middle = param1;
                  if(!_loc3_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bg_middle",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0055);
            }
         }
         addr0074:
      }
      
      [Bindable(event="propertyChange")]
      public function get bg_top() : BriskImageDynaLib
      {
         return this._1391242661bg_top;
      }
      
      public function set bg_top(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1391242661bg_top;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._1391242661bg_top = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bg_top",_loc2_,param1));
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
      public function get hipButton() : RadioButton
      {
         return this._1932099489hipButton;
      }
      
      public function set hipButton(param1:RadioButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1932099489hipButton;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1932099489hipButton = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hipButton",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get moveButton() : RadioButton
      {
         return this._2066190749moveButton;
      }
      
      public function set moveButton(param1:RadioButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2066190749moveButton;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._2066190749moveButton = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moveButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0084);
                  }
               }
               §§goto(addr0075);
            }
         }
         addr0084:
      }
      
      [Bindable(event="propertyChange")]
      public function get removeButton() : RadioButton
      {
         return this._1339123498removeButton;
      }
      
      public function set removeButton(param1:RadioButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1339123498removeButton;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._1339123498removeButton = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"removeButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr005d);
            }
            addr007b:
            return;
         }
         §§goto(addr006c);
      }
      
      [Bindable(event="propertyChange")]
      public function get tools() : RadioButtonGroup
      {
         return this._110545371tools;
      }
      
      public function set tools(param1:RadioButtonGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._110545371tools;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._110545371tools = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tools",_loc2_,param1));
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
   }
}

