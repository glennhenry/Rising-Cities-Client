package net.bigpoint.cityrama.view.featuredEvent.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import spark.components.Group;
   import spark.components.VGroup;
   
   public class FeaturedEventSideMenu extends Group
   {
      
      public static const SHOW_INFO:String = "SHOW_INFO";
      
      public static const HIDE_INFO:String = "HIDE_INFO";
      
      public static const CLICK_INFO:String = "CLICK_INFO";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         SHOW_INFO = "SHOW_INFO";
         if(!(_loc2_ && FeaturedEventSideMenu))
         {
            HIDE_INFO = "HIDE_INFO";
            if(!(_loc2_ && FeaturedEventSideMenu))
            {
               addr004b:
               CLICK_INFO = "CLICK_INFO";
            }
            §§goto(addr0054);
         }
         §§goto(addr004b);
      }
      addr0054:
      
      private var _1407296862featuredEventButton:DynamicImageButton;
      
      private var _1784090142menuContainer:Group;
      
      private var _1844873785newIcon:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function FeaturedEventSideMenu()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
            if(!(_loc2_ && _loc1_))
            {
               mx_internal::_document = this;
               addr0025:
               if(!(_loc2_ && _loc1_))
               {
                  §§goto(addr0053);
               }
               §§goto(addr0071);
            }
            addr0053:
            this.minWidth = 55;
            if(!(_loc2_ && Boolean(this)))
            {
               this.minHeight = 53;
               if(!_loc2_)
               {
                  addr0071:
                  this.mxmlContent = [this._FeaturedEventSideMenu_VGroup1_c(),this._FeaturedEventSideMenu_Group3_i()];
               }
            }
            return;
         }
         §§goto(addr0025);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            super.moduleFactory = param1;
            if(!_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr0041);
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         addr0041:
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
      
      private function onClick() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            dispatchEvent(new Event(CLICK_INFO,true,true));
         }
      }
      
      private function onMouseOver() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            dispatchEvent(new Event(SHOW_INFO,true,true));
         }
      }
      
      private function onMouseOut() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            dispatchEvent(new Event(HIDE_INFO,true,true));
         }
      }
      
      public function set showNewIcon(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            this.newIcon.includeInLayout = this.newIcon.visible = param1;
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
      
      private function _FeaturedEventSideMenu_VGroup1_c() : VGroup
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
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.measuredWidth = 55;
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.measuredHeight = 53;
                     if(_loc2_)
                     {
                        addr0073:
                        _loc1_.mxmlContent = [this._FeaturedEventSideMenu_Group2_c()];
                        if(!_loc3_)
                        {
                           §§goto(addr0083);
                        }
                        §§goto(addr008f);
                     }
                     §§goto(addr0083);
                  }
               }
               §§goto(addr008f);
            }
            addr0083:
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  addr008f:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0073);
      }
      
      private function _FeaturedEventSideMenu_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc3_)
         {
            _loc1_.mouseEnabledWhereTransparent = false;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.mxmlContent = [this._FeaturedEventSideMenu_BriskImageDynaLib1_c(),this._FeaturedEventSideMenu_DynamicImageButton1_i(),this._FeaturedEventSideMenu_BriskImageDynaLib2_i()];
               if(!(_loc3_ && _loc2_))
               {
                  addr006a:
                  _loc1_.addEventListener("click",this.___FeaturedEventSideMenu_Group2_click);
                  if(_loc2_)
                  {
                     §§goto(addr007b);
                  }
                  §§goto(addr00c4);
               }
               addr007b:
               _loc1_.addEventListener("rollOver",this.___FeaturedEventSideMenu_Group2_rollOver);
               if(_loc2_)
               {
                  _loc1_.addEventListener("rollOut",this.___FeaturedEventSideMenu_Group2_rollOut);
                  addr008c:
                  if(_loc2_ || Boolean(this))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(this))
                        {
                           addr00c4:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr00c8);
                  }
                  §§goto(addr00c4);
               }
               addr00c8:
               return _loc1_;
            }
            §§goto(addr006a);
         }
         §§goto(addr008c);
      }
      
      private function _FeaturedEventSideMenu_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaBmpSourceName = "questmarker_base";
            if(_loc3_ || _loc3_)
            {
               addr0040:
               _loc1_.dynaLibName = "gui_ui_questSide";
               if(!_loc2_)
               {
                  §§goto(addr004b);
               }
               §§goto(addr0057);
            }
            addr004b:
            if(!_loc1_.document)
            {
               if(!_loc2_)
               {
                  addr0057:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0040);
      }
      
      private function _FeaturedEventSideMenu_DynamicImageButton1_i() : DynamicImageButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!_loc3_)
         {
            _loc1_.styleName = "featuredEventButton";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.width = 52;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.height = 60;
                  if(!_loc3_)
                  {
                     _loc1_.top = -2;
                     if(!_loc3_)
                     {
                        addr0062:
                        _loc1_.left = 5;
                        if(!_loc3_)
                        {
                           addr006c:
                           _loc1_.id = "featuredEventButton";
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              addr007f:
                              if(!_loc1_.document)
                              {
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr00a0:
                                    _loc1_.document = this;
                                    if(!_loc3_)
                                    {
                                       addr00a9:
                                       this.featuredEventButton = _loc1_;
                                       if(!_loc3_)
                                       {
                                          addr00b3:
                                          BindingManager.executeBindings(this,"featuredEventButton",this.featuredEventButton);
                                       }
                                       §§goto(addr00c0);
                                    }
                                    §§goto(addr00b3);
                                 }
                                 §§goto(addr00c0);
                              }
                              §§goto(addr00a9);
                           }
                        }
                        §§goto(addr00b3);
                     }
                     addr00c0:
                     return _loc1_;
                  }
                  §§goto(addr00a0);
               }
               §§goto(addr006c);
            }
            §§goto(addr007f);
         }
         §§goto(addr0062);
      }
      
      private function _FeaturedEventSideMenu_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.smoothing = true;
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "symbol_new_small";
               if(_loc3_)
               {
                  §§goto(addr003e);
               }
               §§goto(addr008d);
            }
            addr003e:
            _loc1_.dynaLibName = "gui_ui_questSide";
            if(!_loc2_)
            {
               _loc1_.left = -2;
               if(!_loc2_)
               {
                  _loc1_.top = -1;
                  if(_loc3_ || _loc3_)
                  {
                     addr0070:
                     _loc1_.includeInLayout = false;
                     if(!_loc2_)
                     {
                        _loc1_.visible = false;
                        if(!_loc2_)
                        {
                           addr0082:
                           _loc1_.id = "newIcon";
                           if(!_loc2_)
                           {
                              addr008d:
                              if(!_loc1_.document)
                              {
                                 if(_loc3_)
                                 {
                                    §§goto(addr0099);
                                 }
                                 §§goto(addr00c7);
                              }
                              §§goto(addr00b5);
                           }
                           §§goto(addr00c7);
                        }
                        §§goto(addr00b5);
                     }
                     §§goto(addr00c7);
                  }
                  §§goto(addr0082);
               }
            }
            addr0099:
            _loc1_.document = this;
            if(_loc3_ || Boolean(this))
            {
               addr00b5:
               this.newIcon = _loc1_;
               if(_loc3_ || _loc2_)
               {
                  addr00c7:
                  BindingManager.executeBindings(this,"newIcon",this.newIcon);
               }
            }
            return _loc1_;
         }
         §§goto(addr0070);
      }
      
      public function ___FeaturedEventSideMenu_Group2_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this.onClick();
         }
      }
      
      public function ___FeaturedEventSideMenu_Group2_rollOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.onMouseOver();
         }
      }
      
      public function ___FeaturedEventSideMenu_Group2_rollOut(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.onMouseOut();
         }
      }
      
      private function _FeaturedEventSideMenu_Group3_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.left = -250;
            if(!_loc3_)
            {
               _loc1_.top = -5;
               if(!_loc3_)
               {
                  _loc1_.id = "menuContainer";
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           addr0061:
                           _loc1_.document = this;
                           if(_loc2_ || Boolean(this))
                           {
                              §§goto(addr007d);
                           }
                        }
                        §§goto(addr008f);
                     }
                     addr007d:
                     this.menuContainer = _loc1_;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr008f:
                        BindingManager.executeBindings(this,"menuContainer",this.menuContainer);
                     }
                     §§goto(addr009c);
                  }
                  §§goto(addr008f);
               }
               §§goto(addr0061);
            }
            addr009c:
            return _loc1_;
         }
         §§goto(addr0061);
      }
      
      [Bindable(event="propertyChange")]
      public function get featuredEventButton() : DynamicImageButton
      {
         return this._1407296862featuredEventButton;
      }
      
      public function set featuredEventButton(param1:DynamicImageButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1407296862featuredEventButton;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._1407296862featuredEventButton = param1;
                  if(!_loc4_)
                  {
                     addr005b:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"featuredEventButton",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr005b);
      }
      
      [Bindable(event="propertyChange")]
      public function get menuContainer() : Group
      {
         return this._1784090142menuContainer;
      }
      
      public function set menuContainer(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1784090142menuContainer;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._1784090142menuContainer = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"menuContainer",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get newIcon() : BriskImageDynaLib
      {
         return this._1844873785newIcon;
      }
      
      public function set newIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1844873785newIcon;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1844873785newIcon = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0062:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newIcon",_loc2_,param1));
                        }
                     }
                     §§goto(addr0071);
                  }
               }
               §§goto(addr0062);
            }
            addr0071:
            return;
         }
         §§goto(addr0062);
      }
   }
}

