package net.bigpoint.cityrama.view.bonusDay.components
{
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import spark.components.Group;
   import spark.components.VGroup;
   
   public class BonusDaySideMenu extends Group
   {
      
      public static const SHOW_INFO:String = "SHOW_INFO";
      
      public static const HIDE_INFO:String = "HIDE_INFO";
      
      public static const CLICK_INFO:String = "CLICK_INFO";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc2_))
      {
         SHOW_INFO = "SHOW_INFO";
         if(_loc2_ || BonusDaySideMenu)
         {
            HIDE_INFO = "HIDE_INFO";
            if(!_loc1_)
            {
               addr004c:
               CLICK_INFO = "CLICK_INFO";
            }
            §§goto(addr0055);
         }
         §§goto(addr004c);
      }
      addr0055:
      
      private var _3226745icon:DynamicImageButton;
      
      private var _738471190iconBase:BriskImageDynaLib;
      
      private var _1412649594iconGroup:Group;
      
      private var _1784090142menuContainer:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:Boolean;
      
      private var _dataDirty:Boolean;
      
      public function BonusDaySideMenu()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super();
            if(_loc2_ || _loc2_)
            {
               mx_internal::_document = this;
               if(!(_loc1_ && _loc1_))
               {
                  this.width = 55;
                  if(!(_loc1_ && Boolean(this)))
                  {
                     this.minWidth = 55;
                     if(!(_loc1_ && _loc2_))
                     {
                        addr0077:
                        this.measuredWidth = 55;
                        if(!_loc1_)
                        {
                           addr0082:
                           this.height = 53;
                           if(_loc2_ || _loc1_)
                           {
                              this.minHeight = 53;
                              if(!(_loc1_ && Boolean(this)))
                              {
                                 addr00b1:
                                 this.measuredHeight = 53;
                                 if(!(_loc1_ && Boolean(this)))
                                 {
                                    addr00c4:
                                    this.mxmlContent = [this._BonusDaySideMenu_VGroup1_c(),this._BonusDaySideMenu_Group3_i()];
                                 }
                              }
                              return;
                           }
                        }
                        §§goto(addr00b1);
                     }
                     §§goto(addr00c4);
                  }
                  §§goto(addr0082);
               }
               §§goto(addr0077);
            }
            §§goto(addr00c4);
         }
         §§goto(addr0082);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc3_)
            {
               addr0030:
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
         §§goto(addr0030);
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
      
      private function onClick() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            dispatchEvent(new Event(CLICK_INFO,true,true));
         }
      }
      
      private function onMouseOver() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            dispatchEvent(new Event(SHOW_INFO,true,true));
         }
      }
      
      private function onMouseOut() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            dispatchEvent(new Event(HIDE_INFO,true,true));
         }
      }
      
      override public function get measuredHeight() : Number
      {
         return this.minHeight;
      }
      
      override public function get measuredWidth() : Number
      {
         return this.minWidth;
      }
      
      public function setData(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this._dataDirty = true;
            if(_loc3_)
            {
               §§goto(addr0037);
            }
            §§goto(addr004a);
         }
         addr0037:
         this._data = param1;
         if(_loc3_ || _loc3_)
         {
            addr004a:
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.commitProperties();
            if(_loc1_ || _loc2_)
            {
               §§push(this._dataDirty);
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc1_ || _loc1_)
                     {
                        this._dataDirty = false;
                        if(_loc1_ || _loc1_)
                        {
                           addr0058:
                           addr0053:
                           if(this._data)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr0069:
                                 §§push(this.iconBase);
                                 if(_loc1_ || Boolean(this))
                                 {
                                    §§pop().briskDynaVo = new BriskDynaVo("gui_ui_questSide","questmarker_base_noShadow");
                                    if(_loc1_ || Boolean(this))
                                    {
                                       §§push(this.icon);
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          §§push("bonusDayButtonActive");
                                          if(!_loc2_)
                                          {
                                             §§pop().styleName = §§pop();
                                             if(!(_loc2_ && Boolean(this)))
                                             {
                                                TweenMax.to(this.iconGroup,0,{"glowFilter":{
                                                   "color":63231,
                                                   "alpha":1,
                                                   "blurX":10,
                                                   "blurY":10,
                                                   "strength":1
                                                }});
                                                if(_loc1_)
                                                {
                                                }
                                             }
                                             else
                                             {
                                                addr012e:
                                                this.iconGroup.filters = [];
                                             }
                                          }
                                          else
                                          {
                                             addr0127:
                                             §§pop().styleName = §§pop();
                                             if(_loc1_)
                                             {
                                                §§goto(addr012e);
                                             }
                                          }
                                          §§goto(addr0137);
                                       }
                                       else
                                       {
                                          addr0124:
                                          §§push("bonusDayButton");
                                       }
                                       §§goto(addr0127);
                                    }
                                    else
                                    {
                                       addr0120:
                                       §§push(this.icon);
                                    }
                                    §§goto(addr0124);
                                 }
                                 else
                                 {
                                    addr010d:
                                    §§pop().briskDynaVo = new BriskDynaVo("gui_ui_questSide","questmarker_base");
                                    if(!_loc2_)
                                    {
                                       §§goto(addr0120);
                                    }
                                 }
                                 §§goto(addr0137);
                              }
                              §§goto(addr0120);
                           }
                           else
                           {
                              §§push(this.iconBase);
                           }
                           §§goto(addr010d);
                        }
                        §§goto(addr0137);
                     }
                     §§goto(addr012e);
                  }
                  addr0137:
                  return;
               }
               §§goto(addr0058);
            }
            §§goto(addr0069);
         }
         §§goto(addr0053);
      }
      
      private function _BonusDaySideMenu_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.verticalAlign = "middle";
            if(!_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc2_ || _loc3_)
               {
                  _loc1_.width = 55;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.height = 53;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        §§goto(addr007b);
                     }
                     §§goto(addr0097);
                  }
                  §§goto(addr008b);
               }
               addr007b:
               _loc1_.mxmlContent = [this._BonusDaySideMenu_Group2_i()];
               if(_loc2_)
               {
                  addr008b:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr0097:
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr009b);
            }
         }
         addr009b:
         return _loc1_;
      }
      
      private function _BonusDaySideMenu_Group2_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.mouseEnabledWhereTransparent = false;
            if(_loc3_ || _loc3_)
            {
               _loc1_.mxmlContent = [this._BonusDaySideMenu_BriskImageDynaLib1_i(),this._BonusDaySideMenu_DynamicImageButton1_i()];
               if(!_loc2_)
               {
                  _loc1_.addEventListener("click",this.__iconGroup_click);
                  if(!_loc2_)
                  {
                     _loc1_.addEventListener("rollOver",this.__iconGroup_rollOver);
                     if(_loc3_)
                     {
                        _loc1_.addEventListener("rollOut",this.__iconGroup_rollOut);
                        if(!_loc2_)
                        {
                           §§goto(addr0089);
                        }
                        §§goto(addr00bb);
                     }
                     §§goto(addr009c);
                  }
                  addr0089:
                  _loc1_.id = "iconGroup";
                  if(!(_loc2_ && _loc2_))
                  {
                     addr009c:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr00bb:
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              §§goto(addr00c4);
                           }
                        }
                        §§goto(addr00ce);
                     }
                     addr00c4:
                     this.iconGroup = _loc1_;
                     if(!_loc2_)
                     {
                        addr00ce:
                        BindingManager.executeBindings(this,"iconGroup",this.iconGroup);
                     }
                  }
                  §§goto(addr00db);
               }
               addr00db:
               return _loc1_;
            }
         }
         §§goto(addr00bb);
      }
      
      private function _BonusDaySideMenu_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.dynaBmpSourceName = "questmarker_base";
            if(_loc3_ || Boolean(_loc1_))
            {
               §§goto(addr003b);
            }
            §§goto(addr00bc);
         }
         addr003b:
         _loc1_.dynaLibName = "gui_ui_questSide";
         if(_loc3_)
         {
            _loc1_.verticalCenter = 0;
            if(_loc3_)
            {
               _loc1_.horizontalCenter = 0;
               if(!_loc2_)
               {
                  §§goto(addr0065);
               }
               §§goto(addr0078);
            }
            §§goto(addr00aa);
         }
         addr0065:
         _loc1_.id = "iconBase";
         if(_loc3_ || _loc3_)
         {
            addr0078:
            if(!_loc1_.document)
            {
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.document = this;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr00aa:
                     this.iconBase = _loc1_;
                     if(_loc3_ || Boolean(this))
                     {
                        addr00bc:
                        BindingManager.executeBindings(this,"iconBase",this.iconBase);
                     }
                  }
                  §§goto(addr00c9);
               }
               §§goto(addr00bc);
            }
            §§goto(addr00aa);
         }
         addr00c9:
         return _loc1_;
      }
      
      private function _BonusDaySideMenu_DynamicImageButton1_i() : DynamicImageButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!_loc3_)
         {
            _loc1_.styleName = "bonusDayButton";
            if(!_loc3_)
            {
               _loc1_.width = 61;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.height = 60;
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.top = 3;
                     if(_loc2_)
                     {
                        addr0063:
                        _loc1_.id = "icon";
                        if(_loc2_)
                        {
                           addr006e:
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 §§goto(addr0084);
                              }
                           }
                           §§goto(addr008d);
                        }
                     }
                     addr0084:
                     _loc1_.document = this;
                     if(_loc2_)
                     {
                        addr008d:
                        this.icon = _loc1_;
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           BindingManager.executeBindings(this,"icon",this.icon);
                        }
                     }
                     §§goto(addr00ac);
                  }
                  addr00ac:
                  return _loc1_;
               }
               §§goto(addr006e);
            }
            §§goto(addr008d);
         }
         §§goto(addr0063);
      }
      
      public function __iconGroup_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this.onClick();
         }
      }
      
      public function __iconGroup_rollOver(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.onMouseOver();
         }
      }
      
      public function __iconGroup_rollOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.onMouseOut();
         }
      }
      
      private function _BonusDaySideMenu_Group3_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.left = -250;
            if(_loc3_ || _loc3_)
            {
               addr003e:
               _loc1_.top = -5;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.id = "menuContainer";
                  if(_loc3_ || Boolean(this))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              addr0099:
                              this.menuContainer = _loc1_;
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 addr00ab:
                                 BindingManager.executeBindings(this,"menuContainer",this.menuContainer);
                              }
                              §§goto(addr00b8);
                           }
                           §§goto(addr00ab);
                        }
                        §§goto(addr00b8);
                     }
                     §§goto(addr0099);
                  }
                  addr00b8:
                  return _loc1_;
               }
            }
            §§goto(addr0099);
         }
         §§goto(addr003e);
      }
      
      [Bindable(event="propertyChange")]
      public function get icon() : DynamicImageButton
      {
         return this._3226745icon;
      }
      
      public function set icon(param1:DynamicImageButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._3226745icon;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._3226745icon = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"icon",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iconBase() : BriskImageDynaLib
      {
         return this._738471190iconBase;
      }
      
      public function set iconBase(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._738471190iconBase;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  addr004b:
                  this._738471190iconBase = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconBase",_loc2_,param1));
                        }
                     }
                     §§goto(addr0074);
                  }
                  §§goto(addr0065);
               }
            }
            addr0074:
            return;
         }
         §§goto(addr004b);
      }
      
      [Bindable(event="propertyChange")]
      public function get iconGroup() : Group
      {
         return this._1412649594iconGroup;
      }
      
      public function set iconGroup(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1412649594iconGroup;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._1412649594iconGroup = param1;
                  if(!_loc3_)
                  {
                     addr0059:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0068:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0077);
                  }
                  §§goto(addr0068);
               }
            }
            addr0077:
            return;
         }
         §§goto(addr0059);
      }
      
      [Bindable(event="propertyChange")]
      public function get menuContainer() : Group
      {
         return this._1784090142menuContainer;
      }
      
      public function set menuContainer(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1784090142menuContainer;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr004c:
                  this._1784090142menuContainer = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"menuContainer",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0065);
            }
            addr0074:
            return;
         }
         §§goto(addr004c);
      }
   }
}

