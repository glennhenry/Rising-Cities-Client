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
   import spark.components.ToggleButton;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class OptionsGroupComponent extends VGroup implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _1599314517subMenueBasement:ToggleButton;
      
      private var _459622175subMenueFullscreen:ToggleButton;
      
      private var _1336135971subMenueMoreOptions:ToggleButton;
      
      private var _583625769subMenueSound:ToggleButton;
      
      private var _573224313subMenueZoom:ToggleButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function OptionsGroupComponent()
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
            if(_loc4_ || _loc1_)
            {
               §§pop().§§slot[3] = §§pop();
               if(_loc4_)
               {
                  §§push(§§newactivation());
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0047:
                     §§pop().§§slot[5] = null;
                     if(_loc4_ || Boolean(this))
                     {
                        this.mx_internal::_bindings = [];
                        if(!_loc3_)
                        {
                           this.mx_internal::_watchers = [];
                           if(_loc4_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(!(_loc3_ && _loc2_))
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(_loc4_ || Boolean(this))
                                 {
                                    super();
                                    if(!_loc3_)
                                    {
                                       mx_internal::_document = this;
                                       if(!_loc3_)
                                       {
                                          §§push(§§newactivation());
                                          if(!(_loc3_ && _loc1_))
                                          {
                                             §§pop().§§slot[1] = this._OptionsGroupComponent_bindingsSetup();
                                             if(_loc4_)
                                             {
                                                addr00d0:
                                                §§push(§§newactivation());
                                                if(!(_loc3_ && Boolean(this)))
                                                {
                                                   addr00df:
                                                   §§pop().§§slot[2] = [];
                                                   if(!_loc3_)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(!_loc3_)
                                                      {
                                                         addr00f1:
                                                         §§pop().§§slot[3] = this;
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            addr0103:
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(_loc4_)
                                                                  {
                                                                     addr0119:
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_mainMenu_ui_components_OptionsGroupComponentWatcherSetupUtil");
                                                                     if(!_loc3_)
                                                                     {
                                                                        addr012c:
                                                                        §§push(§§newactivation());
                                                                        if(!_loc3_)
                                                                        {
                                                                           addr0133:
                                                                           var _temp_10:* = §§pop().§§slot[5];
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(!(_loc3_ && _loc1_))
                                                                           {
                                                                              addr015c:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return OptionsGroupComponent[param1];
                                                                              },bindings,watchers);
                                                                              if(!(_loc3_ && Boolean(this)))
                                                                              {
                                                                                 addr017f:
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(!(_loc3_ && _loc1_))
                                                                                 {
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(_loc4_ || _loc2_)
                                                                                    {
                                                                                       this.mxmlContent = [this._OptionsGroupComponent_BriskImageDynaLib1_c(),this._OptionsGroupComponent_Group1_c(),this._OptionsGroupComponent_BriskImageDynaLib3_c()];
                                                                                       if(_loc4_ || Boolean(this))
                                                                                       {
                                                                                          addr0203:
                                                                                          i = 0;
                                                                                          addr0201:
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 var _temp_16:*;
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
                                                                                             if(_loc4_ || _loc3_)
                                                                                             {
                                                                                                §§push(§§pop().§§slot[4]);
                                                                                                if(!(_loc3_ && _loc3_))
                                                                                                {
                                                                                                   §§push(uint(§§pop() + 1));
                                                                                                   if(_loc3_ && Boolean(this))
                                                                                                   {
                                                                                                      continue loop2;
                                                                                                   }
                                                                                                }
                                                                                                §§push(§§newactivation());
                                                                                                if(!(_loc3_ && Boolean(this)))
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
                                                                                 while(var _temp_16:* = §§pop(), §§pop().§§slot[4] = _temp_16, !(_loc3_ && _loc1_));
                                                                                 
                                                                                 return;
                                                                                 addr0288:
                                                                              }
                                                                              §§goto(addr0201);
                                                                           }
                                                                           §§goto(addr017f);
                                                                        }
                                                                        §§goto(addr0203);
                                                                     }
                                                                     §§goto(addr0201);
                                                                  }
                                                                  §§goto(addr0133);
                                                               }
                                                               §§goto(addr012c);
                                                            }
                                                         }
                                                         §§goto(addr015c);
                                                      }
                                                      §§goto(addr0133);
                                                   }
                                                   §§goto(addr012c);
                                                }
                                                §§goto(addr00f1);
                                             }
                                             §§goto(addr0103);
                                          }
                                          §§goto(addr0119);
                                       }
                                       §§goto(addr017f);
                                    }
                                    §§goto(addr00d0);
                                 }
                                 §§goto(addr015c);
                              }
                              §§goto(addr0288);
                           }
                           §§goto(addr00d0);
                        }
                        §§goto(addr0201);
                     }
                     §§goto(addr012c);
                  }
                  §§goto(addr00df);
               }
               §§goto(addr017f);
            }
            §§goto(addr0047);
         }
         §§goto(addr0203);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            OptionsGroupComponent._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            super.moduleFactory = param1;
            if(_loc3_)
            {
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
         }
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super.initialize();
         }
      }
      
      private function _OptionsGroupComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "ui_main_subkategorie_top";
               if(_loc2_)
               {
                  §§goto(addr0040);
               }
               §§goto(addr0054);
            }
            addr0040:
            if(!_loc1_.document)
            {
               if(_loc2_ || _loc2_)
               {
                  addr0054:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0054);
      }
      
      private function _OptionsGroupComponent_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.mxmlContent = [this._OptionsGroupComponent_BriskImageDynaLib2_c(),this._OptionsGroupComponent_VGroup2_c()];
            if(_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _OptionsGroupComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.dynaBmpSourceName = "ui_main_subkategorie_middle";
               §§goto(addr0034);
            }
            §§goto(addr008e);
         }
         addr0034:
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc3_ && _loc2_))
               {
                  addr0082:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr008e:
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr0092);
            }
            §§goto(addr0082);
         }
         addr0092:
         return _loc1_;
      }
      
      private function _OptionsGroupComponent_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || _loc2_)
         {
            _loc1_.horizontalCenter = 0;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.percentHeight = 100;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.gap = 2;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.mxmlContent = [this._OptionsGroupComponent_ToggleButton1_i(),this._OptionsGroupComponent_ToggleButton2_i(),this._OptionsGroupComponent_ToggleButton3_i(),this._OptionsGroupComponent_ToggleButton4_i(),this._OptionsGroupComponent_ToggleButton5_i()];
                     addr0069:
                     if(_loc2_)
                     {
                        addr009e:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr00aa:
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr00aa);
            }
            §§goto(addr009e);
         }
         §§goto(addr0069);
      }
      
      private function _OptionsGroupComponent_ToggleButton1_i() : ToggleButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ToggleButton = new ToggleButton();
         if(_loc3_ || _loc3_)
         {
            _loc1_.styleName = "subMenueMoreOptions";
            if(_loc3_ || _loc3_)
            {
               _loc1_.id = "subMenueMoreOptions";
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           §§goto(addr007d);
                        }
                     }
                     §§goto(addr008f);
                  }
               }
            }
            addr007d:
            this.subMenueMoreOptions = _loc1_;
            if(!(_loc2_ && _loc2_))
            {
               addr008f:
               BindingManager.executeBindings(this,"subMenueMoreOptions",this.subMenueMoreOptions);
            }
            §§goto(addr009c);
         }
         addr009c:
         return _loc1_;
      }
      
      private function _OptionsGroupComponent_ToggleButton2_i() : ToggleButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ToggleButton = new ToggleButton();
         if(!_loc2_)
         {
            _loc1_.styleName = "subMenueBasement";
            if(_loc3_)
            {
               _loc1_.id = "subMenueBasement";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           addr0065:
                           this.subMenueBasement = _loc1_;
                           if(_loc3_)
                           {
                              addr006f:
                              BindingManager.executeBindings(this,"subMenueBasement",this.subMenueBasement);
                           }
                           §§goto(addr007c);
                        }
                        §§goto(addr006f);
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr0065);
               }
               §§goto(addr006f);
            }
            §§goto(addr0065);
         }
         addr007c:
         return _loc1_;
      }
      
      private function _OptionsGroupComponent_ToggleButton3_i() : ToggleButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ToggleButton = new ToggleButton();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.styleName = "subMenueZoom";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.id = "subMenueZoom";
               if(_loc3_ || Boolean(this))
               {
                  addr005a:
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        addr007a:
                        _loc1_.document = this;
                        if(_loc3_)
                        {
                           addr0083:
                           this.subMenueZoom = _loc1_;
                           if(!_loc2_)
                           {
                              addr008d:
                              BindingManager.executeBindings(this,"subMenueZoom",this.subMenueZoom);
                           }
                        }
                        §§goto(addr009a);
                     }
                     §§goto(addr008d);
                  }
                  §§goto(addr0083);
               }
               addr009a:
               return _loc1_;
            }
            §§goto(addr005a);
         }
         §§goto(addr007a);
      }
      
      private function _OptionsGroupComponent_ToggleButton4_i() : ToggleButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ToggleButton = new ToggleButton();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.styleName = "subMenueFullscreen";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.id = "subMenueFullscreen";
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        _loc1_.document = this;
                        if(_loc2_)
                        {
                           addr007d:
                           this.subMenueFullscreen = _loc1_;
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              addr008f:
                              BindingManager.executeBindings(this,"subMenueFullscreen",this.subMenueFullscreen);
                           }
                           §§goto(addr009c);
                        }
                        §§goto(addr008f);
                     }
                     addr009c:
                     return _loc1_;
                  }
                  §§goto(addr007d);
               }
               §§goto(addr008f);
            }
         }
         §§goto(addr007d);
      }
      
      private function _OptionsGroupComponent_ToggleButton5_i() : ToggleButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ToggleButton = new ToggleButton();
         if(!_loc3_)
         {
            _loc1_.styleName = "subMenueSound";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.id = "subMenueSound";
               addr0035:
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        addr006e:
                        _loc1_.document = this;
                        if(!(_loc3_ && _loc2_))
                        {
                           §§goto(addr007f);
                        }
                        §§goto(addr0089);
                     }
                  }
                  §§goto(addr007f);
               }
               §§goto(addr006e);
            }
            addr007f:
            this.subMenueSound = _loc1_;
            if(_loc2_)
            {
               addr0089:
               BindingManager.executeBindings(this,"subMenueSound",this.subMenueSound);
            }
            return _loc1_;
         }
         §§goto(addr0035);
      }
      
      private function _OptionsGroupComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.dynaBmpSourceName = "ui_main_subkategorie_bottom";
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
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
      
      private function _OptionsGroupComponent_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(_loc3_ || Boolean(this))
         {
            §§pop().§§slot[1] = [];
            if(!_loc2_)
            {
               §§push(§§newactivation());
               if(!(_loc2_ && Boolean(this)))
               {
                  §§push(§§pop().§§slot[1]);
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(0);
                     if(_loc3_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():String
                        {
                           var _loc1_:* = ResourceManager.getInstance().getString(String("rcl.tooltips.menubar"),String("rcl.tooltips.menubar.options.advanced"));
                           return _loc1_ == undefined ? null : String(_loc1_);
                        },null,"subMenueMoreOptions.toolTip");
                        if(!(_loc2_ && _loc1_))
                        {
                           addr0073:
                           §§push(§§newactivation());
                           if(_loc3_)
                           {
                              §§push(§§pop().§§slot[1]);
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr0089:
                                 §§push(1);
                                 if(!_loc2_)
                                 {
                                    §§pop()[§§pop()] = new Binding(this,function():String
                                    {
                                       var _loc1_:* = subMenueBasement.selected ? ResourceManager.getInstance().getString(String("rcl.tooltips.menubar"),String("rcl.tooltips.menubar.basement.off")) : ResourceManager.getInstance().getString(String("rcl.tooltips.menubar"),String("rcl.tooltips.menubar.basement.on"));
                                       return _loc1_ == undefined ? null : String(_loc1_);
                                    },null,"subMenueBasement.toolTip");
                                    if(_loc3_ || Boolean(this))
                                    {
                                       §§push(§§newactivation());
                                       if(_loc3_ || _loc3_)
                                       {
                                          addr00c8:
                                          §§push(§§pop().§§slot[1]);
                                          if(!(_loc2_ && Boolean(this)))
                                          {
                                             addr00d7:
                                             §§push(2);
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                §§pop()[§§pop()] = new Binding(this,function():String
                                                {
                                                   var _loc1_:* = subMenueZoom.selected ? ResourceManager.getInstance().getString(String("rcl.tooltips.menubar"),String("rcl.tooltips.menubar.zoom.in")) : ResourceManager.getInstance().getString(String("rcl.tooltips.menubar"),String("rcl.tooltips.menubar.zoom.out"));
                                                   return _loc1_ == undefined ? null : String(_loc1_);
                                                },null,"subMenueZoom.toolTip");
                                                if(_loc3_)
                                                {
                                                   §§push(§§newactivation());
                                                   if(!_loc2_)
                                                   {
                                                      §§push(§§pop().§§slot[1]);
                                                      if(!_loc2_)
                                                      {
                                                         addr010a:
                                                         §§push(3);
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            addr0119:
                                                            §§pop()[§§pop()] = new Binding(this,function():String
                                                            {
                                                               var _loc1_:* = subMenueFullscreen.selected ? ResourceManager.getInstance().getString(String("rcl.tooltips.menubar"),String("rcl.tooltips.menubar.fullscreen.off")) : ResourceManager.getInstance().getString(String("rcl.tooltips.menubar"),String("rcl.tooltips.menubar.fullscreen.on"));
                                                               return _loc1_ == undefined ? null : String(_loc1_);
                                                            },null,"subMenueFullscreen.toolTip");
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                               addr0143:
                                                               §§push(§§newactivation());
                                                               if(!_loc2_)
                                                               {
                                                                  §§goto(addr0170);
                                                               }
                                                               §§goto(addr016e);
                                                            }
                                                            §§goto(addr016c);
                                                         }
                                                         §§goto(addr015b);
                                                      }
                                                      addr0170:
                                                      §§goto(addr014a);
                                                   }
                                                   addr014a:
                                                   §§push(§§pop().§§slot[1]);
                                                   if(!(_loc2_ && _loc3_))
                                                   {
                                                      addr015b:
                                                      §§pop()[4] = new Binding(this,function():String
                                                      {
                                                         var _loc1_:* = !subMenueSound.selected ? ResourceManager.getInstance().getString(String("rcl.tooltips.menubar"),String("rcl.tooltips.menubar.sound.on")) : ResourceManager.getInstance().getString(String("rcl.tooltips.menubar"),String("rcl.tooltips.menubar.sound.off"));
                                                         return _loc1_ == undefined ? null : String(_loc1_);
                                                      },null,"subMenueSound.toolTip");
                                                      addr016e:
                                                      addr016c:
                                                      return result;
                                                   }
                                                }
                                                §§goto(addr016c);
                                             }
                                             §§goto(addr015b);
                                          }
                                          §§goto(addr010a);
                                       }
                                       §§goto(addr016e);
                                    }
                                    §§goto(addr0143);
                                 }
                                 §§goto(addr015b);
                              }
                              §§goto(addr00d7);
                           }
                           §§goto(addr00c8);
                        }
                        §§goto(addr0143);
                     }
                     §§goto(addr0119);
                  }
                  §§goto(addr0089);
               }
               §§goto(addr00c8);
            }
            §§goto(addr0073);
         }
         §§goto(addr016e);
      }
      
      [Bindable(event="propertyChange")]
      public function get subMenueBasement() : ToggleButton
      {
         return this._1599314517subMenueBasement;
      }
      
      public function set subMenueBasement(param1:ToggleButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1599314517subMenueBasement;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._1599314517subMenueBasement = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr0079:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"subMenueBasement",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0088);
               }
               §§goto(addr0079);
            }
            addr0088:
            return;
         }
         §§goto(addr0079);
      }
      
      [Bindable(event="propertyChange")]
      public function get subMenueFullscreen() : ToggleButton
      {
         return this._459622175subMenueFullscreen;
      }
      
      public function set subMenueFullscreen(param1:ToggleButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._459622175subMenueFullscreen;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._459622175subMenueFullscreen = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"subMenueFullscreen",_loc2_,param1));
                        }
                     }
                     §§goto(addr0078);
                  }
                  §§goto(addr0069);
               }
            }
            addr0078:
            return;
         }
         §§goto(addr0069);
      }
      
      [Bindable(event="propertyChange")]
      public function get subMenueMoreOptions() : ToggleButton
      {
         return this._1336135971subMenueMoreOptions;
      }
      
      public function set subMenueMoreOptions(param1:ToggleButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1336135971subMenueMoreOptions;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1336135971subMenueMoreOptions = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     §§goto(addr0054);
                  }
                  §§goto(addr006c);
               }
               addr0054:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr006c:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"subMenueMoreOptions",_loc2_,param1));
                  }
               }
               §§goto(addr007b);
            }
         }
         addr007b:
      }
      
      [Bindable(event="propertyChange")]
      public function get subMenueSound() : ToggleButton
      {
         return this._583625769subMenueSound;
      }
      
      public function set subMenueSound(param1:ToggleButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._583625769subMenueSound;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._583625769subMenueSound = param1;
                  addr004a:
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0079:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"subMenueSound",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0088);
               }
               §§goto(addr0079);
            }
            addr0088:
            return;
         }
         §§goto(addr004a);
      }
      
      [Bindable(event="propertyChange")]
      public function get subMenueZoom() : ToggleButton
      {
         return this._573224313subMenueZoom;
      }
      
      public function set subMenueZoom(param1:ToggleButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._573224313subMenueZoom;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._573224313subMenueZoom = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"subMenueZoom",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr006d);
      }
   }
}

