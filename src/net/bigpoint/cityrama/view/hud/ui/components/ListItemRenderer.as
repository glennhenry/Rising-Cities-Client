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
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.menu.vo.IDropDownListItemVo;
   import net.bigpoint.cityrama.view.common.FilterUtils;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.HGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   use namespace mx_internal;
   
   public class ListItemRenderer extends ItemRenderer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _3226745icon:BriskImageDynaLib;
      
      private var _1055687225textLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:IDropDownListItemVo;
      
      private var _dataIsDirty:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function ListItemRenderer()
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
            if(!(_loc3_ && _loc3_))
            {
               §§pop().§§slot[3] = §§pop();
               if(!_loc3_)
               {
                  §§push(§§newactivation());
                  if(_loc4_ || _loc3_)
                  {
                     addr0045:
                     §§pop().§§slot[5] = null;
                     if(_loc4_)
                     {
                        this.mx_internal::_bindings = [];
                        if(!(_loc3_ && Boolean(this)))
                        {
                           this.mx_internal::_watchers = [];
                           if(_loc4_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(_loc4_)
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(_loc4_ || _loc2_)
                                 {
                                    super();
                                    if(_loc4_)
                                    {
                                       mx_internal::_document = this;
                                       if(!_loc3_)
                                       {
                                          §§push(§§newactivation());
                                          if(_loc4_ || Boolean(this))
                                          {
                                             §§pop().§§slot[1] = this._ListItemRenderer_bindingsSetup();
                                             if(_loc4_)
                                             {
                                                addr00c9:
                                                §§push(§§newactivation());
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   §§pop().§§slot[2] = [];
                                                   if(_loc4_ || Boolean(this))
                                                   {
                                                      §§push(§§newactivation());
                                                      if(!_loc3_)
                                                      {
                                                         addr00f3:
                                                         §§pop().§§slot[3] = this;
                                                         if(_loc4_)
                                                         {
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  addr010b:
                                                                  §§push(§§newactivation());
                                                                  if(_loc4_)
                                                                  {
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_hud_ui_components_ListItemRendererWatcherSetupUtil");
                                                                     if(_loc4_ || _loc3_)
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(_loc4_)
                                                                        {
                                                                           addr0137:
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(!_loc3_)
                                                                           {
                                                                              addr0158:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return ListItemRenderer[param1];
                                                                              },bindings,watchers);
                                                                              if(!(_loc3_ && _loc1_))
                                                                              {
                                                                                 addr017b:
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(_loc4_ || Boolean(this))
                                                                                 {
                                                                                    addr01aa:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(!(_loc3_ && _loc1_))
                                                                                    {
                                                                                       addr01d8:
                                                                                       this.autoDrawBackground = false;
                                                                                       if(!(_loc3_ && _loc2_))
                                                                                       {
                                                                                          addr01ea:
                                                                                          this.percentWidth = 100;
                                                                                          if(_loc4_ || _loc3_)
                                                                                          {
                                                                                             this.maxHeight = 22;
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                addr0209:
                                                                                                this.mxmlContent = [this._ListItemRenderer_HGroup1_c(),this._ListItemRenderer_LocaLabel1_i(),this._ListItemRenderer_BriskImageDynaLib4_i()];
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   addr0225:
                                                                                                   this.addEventListener("creationComplete",this.___ListItemRenderer_ItemRenderer1_creationComplete);
                                                                                                   if(_loc4_ || _loc1_)
                                                                                                   {
                                                                                                      addr0241:
                                                                                                      i = 0;
                                                                                                      addr023f:
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
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push(§§newactivation());
                                                                                                         if(!(_loc3_ && Boolean(this)))
                                                                                                         {
                                                                                                            §§push(§§pop().§§slot[4]);
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               §§push(uint(§§pop() + 1));
                                                                                                               if(_loc3_ && _loc2_)
                                                                                                               {
                                                                                                                  continue loop2;
                                                                                                               }
                                                                                                            }
                                                                                                            §§push(§§newactivation());
                                                                                                            if(!(_loc3_ && Boolean(this)))
                                                                                                            {
                                                                                                               var _temp_27:* = §§pop();
                                                                                                               §§pop().§§slot[4] = _temp_27;
                                                                                                               if(_loc4_ || _loc3_)
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
                                                                                             addr02b4:
                                                                                          }
                                                                                          §§goto(addr0225);
                                                                                       }
                                                                                       §§goto(addr0209);
                                                                                    }
                                                                                    §§goto(addr01ea);
                                                                                 }
                                                                                 §§goto(addr01d8);
                                                                              }
                                                                              §§goto(addr023f);
                                                                           }
                                                                           §§goto(addr01ea);
                                                                        }
                                                                        §§goto(addr0241);
                                                                     }
                                                                     §§goto(addr01ea);
                                                                  }
                                                                  §§goto(addr0241);
                                                               }
                                                               §§goto(addr017b);
                                                            }
                                                            §§goto(addr0158);
                                                         }
                                                         §§goto(addr017b);
                                                      }
                                                      §§goto(addr0241);
                                                   }
                                                   §§goto(addr01aa);
                                                }
                                                §§goto(addr0241);
                                             }
                                             §§goto(addr01aa);
                                          }
                                          §§goto(addr00f3);
                                       }
                                       §§goto(addr01aa);
                                    }
                                    §§goto(addr00c9);
                                 }
                                 §§goto(addr02b4);
                              }
                              §§goto(addr010b);
                           }
                           §§goto(addr01ea);
                        }
                        §§goto(addr010b);
                     }
                     §§goto(addr01d8);
                  }
                  §§goto(addr0241);
               }
               §§goto(addr02b4);
            }
            §§goto(addr0045);
         }
         §§goto(addr0137);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            ListItemRenderer._watcherSetupUtil = param1;
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
            if(_loc2_ || Boolean(param1))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc3_)
                  {
                     return;
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
         }
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.initialize();
         }
      }
      
      protected function handleCreationComplete(param1:FlexEvent) : void
      {
      }
      
      override public function set data(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            super.data = param1;
            if(!_loc2_)
            {
               §§goto(addr0037);
            }
            §§goto(addr0057);
         }
         addr0037:
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            if(!_loc2_)
            {
               addr0057:
               this._data = param1 as IDropDownListItemVo;
               if(!_loc2_)
               {
                  §§goto(addr0065);
               }
               §§goto(addr0077);
            }
            addr0065:
            this._dataIsDirty = true;
            if(_loc3_ || _loc2_)
            {
               addr0077:
               invalidateProperties();
            }
            §§goto(addr007c);
         }
         addr007c:
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.commitProperties();
            if(!_loc2_)
            {
               §§push(this._dataIsDirty);
               if(_loc1_ || _loc2_)
               {
                  §§push(§§pop());
                  if(_loc1_)
                  {
                     var _temp_2:* = §§pop();
                     §§push(_temp_2);
                     if(_temp_2)
                     {
                        if(!_loc2_)
                        {
                           §§goto(addr0040);
                        }
                     }
                     §§goto(addr004b);
                  }
               }
               addr0040:
               §§pop();
               if(_loc1_)
               {
                  addr004b:
                  if(Boolean(this._data))
                  {
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr005c:
                        this._dataIsDirty = false;
                        if(_loc1_ || Boolean(this))
                        {
                           this.textLabel.text = this._data.amountString;
                           if(_loc1_ || _loc1_)
                           {
                              §§push(this.icon);
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 §§push(this._data);
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    §§push(§§pop().dynaLibName);
                                    if(!_loc2_)
                                    {
                                       §§pop().dynaLibName = §§pop();
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          §§goto(addr00e3);
                                       }
                                       §§goto(addr00f6);
                                    }
                                    addr00e3:
                                    this.icon.dynaBmpSourceName = this._data.dynaImageName + "_small";
                                    §§goto(addr00df);
                                 }
                                 addr00df:
                                 §§goto(addr00db);
                              }
                              addr00db:
                              §§goto(addr00d7);
                           }
                           §§goto(addr00f6);
                        }
                     }
                     addr00d7:
                     if(_loc1_ || _loc2_)
                     {
                        addr00f6:
                        toolTip = this._data.tooltip;
                     }
                     §§goto(addr0102);
                  }
               }
               §§goto(addr0102);
            }
            addr0102:
            return;
         }
         §§goto(addr005c);
      }
      
      private function _ListItemRenderer_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.gap = 0;
            if(_loc2_ || _loc3_)
            {
               _loc1_.left = 6;
               if(_loc2_)
               {
                  _loc1_.right = 6;
                  if(!_loc3_)
                  {
                     _loc1_.verticalCenter = 0;
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.mxmlContent = [this._ListItemRenderer_BriskImageDynaLib1_c(),this._ListItemRenderer_BriskImageDynaLib2_c(),this._ListItemRenderer_BriskImageDynaLib3_c()];
                        if(_loc2_)
                        {
                           §§goto(addr0092);
                        }
                        §§goto(addr00a6);
                     }
                     §§goto(addr0092);
                  }
               }
               §§goto(addr00a6);
            }
            addr0092:
            if(!_loc1_.document)
            {
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr00a6:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr00a6);
      }
      
      private function _ListItemRenderer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "mainhud_innerbar_left";
               if(!(_loc3_ && _loc2_))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr0067:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr006b);
               }
               §§goto(addr0067);
            }
         }
         addr006b:
         return _loc1_;
      }
      
      private function _ListItemRenderer_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(_loc2_ || _loc2_)
            {
               _loc1_.dynaBmpSourceName = "mainhud_innerbar_middle";
               if(_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr006f:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr006f);
      }
      
      private function _ListItemRenderer_BriskImageDynaLib3_c() : BriskImageDynaLib
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
               _loc1_.dynaBmpSourceName = "mainhud_innerbar_right";
               if(!_loc3_)
               {
                  addr0041:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr004d:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr004d);
         }
         §§goto(addr0041);
      }
      
      private function _ListItemRenderer_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.verticalCenter = 1;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.styleName = "fontABlack";
               if(_loc2_)
               {
                  _loc1_.right = 11;
                  if(!_loc3_)
                  {
                     _loc1_.left = 16;
                     if(!_loc3_)
                     {
                        _loc1_.setStyle("color",16777215);
                        if(_loc2_)
                        {
                           _loc1_.setStyle("textAlign","right");
                           if(_loc2_)
                           {
                              addr0081:
                              _loc1_.setStyle("fontSize",10);
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr0097:
                                 _loc1_.id = "textLabel";
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr00aa:
                                    if(!_loc1_.document)
                                    {
                                       if(!(_loc3_ && Boolean(_loc1_)))
                                       {
                                          _loc1_.document = this;
                                          if(!_loc3_)
                                          {
                                             §§goto(addr00d3);
                                          }
                                          §§goto(addr00dd);
                                       }
                                    }
                                 }
                                 §§goto(addr00d3);
                              }
                              §§goto(addr00aa);
                           }
                           §§goto(addr00d3);
                        }
                        §§goto(addr0097);
                     }
                     §§goto(addr00d3);
                  }
                  §§goto(addr00aa);
               }
               §§goto(addr0081);
            }
            addr00d3:
            this.textLabel = _loc1_;
            if(!_loc3_)
            {
               addr00dd:
               BindingManager.executeBindings(this,"textLabel",this.textLabel);
            }
            return _loc1_;
         }
         §§goto(addr0097);
      }
      
      private function _ListItemRenderer_BriskImageDynaLib4_i() : BriskImageDynaLib
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
               _loc1_.maintainAspectRation = true;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.smoothing = true;
                  if(!_loc3_)
                  {
                     _loc1_.maxWidth = 22;
                     if(_loc2_)
                     {
                        addr004e:
                        _loc1_.maxHeight = 17;
                        if(_loc2_ || _loc2_)
                        {
                           addr006c:
                           _loc1_.left = -5;
                           if(_loc2_)
                           {
                              _loc1_.id = "icon";
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 if(!_loc1_.document)
                                 {
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       §§goto(addr00a7);
                                    }
                                    §§goto(addr00c2);
                                 }
                                 §§goto(addr00b0);
                              }
                              addr00a7:
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 addr00b0:
                                 this.icon = _loc1_;
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr00c2:
                                    BindingManager.executeBindings(this,"icon",this.icon);
                                 }
                              }
                              §§goto(addr00cf);
                           }
                        }
                        §§goto(addr00c2);
                     }
                     §§goto(addr006c);
                  }
               }
               addr00cf:
               return _loc1_;
            }
            §§goto(addr00a7);
         }
         §§goto(addr004e);
      }
      
      public function ___ListItemRenderer_ItemRenderer1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.handleCreationComplete(param1);
         }
      }
      
      private function _ListItemRenderer_bindingsSetup() : Array
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
               if(!(_loc2_ && _loc3_))
               {
                  §§push(§§pop().§§slot[1]);
                  if(_loc3_)
                  {
                     §§pop()[0] = new Binding(this,function():Array
                     {
                        var _loc1_:* = [FilterUtils.createOutlineFilter(0,1.2,false,0.6)];
                        return _loc1_ == null || _loc1_ is Array || _loc1_ is Proxy ? _loc1_ : [_loc1_];
                     },null,"textLabel.filters");
                     addr0076:
                     addr0074:
                     return result;
                  }
               }
               §§goto(addr0076);
            }
            §§goto(addr0074);
         }
         §§goto(addr0076);
      }
      
      [Bindable(event="propertyChange")]
      public function get icon() : BriskImageDynaLib
      {
         return this._3226745icon;
      }
      
      public function set icon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._3226745icon;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._3226745icon = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"icon",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0070);
      }
      
      [Bindable(event="propertyChange")]
      public function get textLabel() : LocaLabel
      {
         return this._1055687225textLabel;
      }
      
      public function set textLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1055687225textLabel;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1055687225textLabel = param1;
                  if(!_loc3_)
                  {
                     addr004f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"textLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0076);
                  }
               }
               §§goto(addr0067);
            }
            addr0076:
            return;
         }
         §§goto(addr004f);
      }
   }
}

