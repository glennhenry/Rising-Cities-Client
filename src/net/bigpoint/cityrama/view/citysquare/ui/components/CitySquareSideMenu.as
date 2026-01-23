package net.bigpoint.cityrama.view.citysquare.ui.components
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
   
   public class CitySquareSideMenu extends Group
   {
      
      public static const SHOW_INFO:String = "SHOW_INFO";
      
      public static const HIDE_INFO:String = "HIDE_INFO";
      
      public static const CLICK_INFO:String = "CLICK_INFO";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || CitySquareSideMenu)
      {
         SHOW_INFO = "SHOW_INFO";
         if(!(_loc2_ && CitySquareSideMenu))
         {
            HIDE_INFO = "HIDE_INFO";
            if(_loc1_)
            {
               addr004b:
               CLICK_INFO = "CLICK_INFO";
            }
         }
         return;
      }
      §§goto(addr004b);
      
      private var _58777855citySquareIcon:DynamicImageButton;
      
      private var _1784090142menuContainer:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function CitySquareSideMenu()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super();
            if(!(_loc2_ && _loc2_))
            {
               mx_internal::_document = this;
               if(_loc1_)
               {
                  §§goto(addr0053);
               }
               §§goto(addr0069);
            }
            §§goto(addr005e);
         }
         addr0053:
         this.minWidth = 55;
         if(!_loc2_)
         {
            addr005e:
            this.minHeight = 53;
            if(!_loc2_)
            {
               addr0069:
               this.mxmlContent = [this._CitySquareSideMenu_VGroup1_c(),this._CitySquareSideMenu_Group3_i()];
            }
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(!_loc3_)
            {
               addr002a:
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     return;
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
            return;
         }
         §§goto(addr002a);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
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
      
      private function _CitySquareSideMenu_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.verticalAlign = "middle";
            if(!(_loc2_ && Boolean(this)))
            {
               addr003b:
               _loc1_.horizontalAlign = "center";
               if(_loc3_ || _loc3_)
               {
                  _loc1_.measuredWidth = 55;
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.measuredHeight = 53;
                     if(!(_loc2_ && _loc3_))
                     {
                        addr008c:
                        _loc1_.mxmlContent = [this._CitySquareSideMenu_Group2_c()];
                        if(!_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 addr00b0:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr00b4);
                        }
                        §§goto(addr00b0);
                     }
                     §§goto(addr00b4);
                  }
                  §§goto(addr00b0);
               }
               §§goto(addr008c);
            }
            addr00b4:
            return _loc1_;
         }
         §§goto(addr003b);
      }
      
      private function _CitySquareSideMenu_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.mouseEnabledWhereTransparent = false;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.mxmlContent = [this._CitySquareSideMenu_BriskImageDynaLib1_c(),this._CitySquareSideMenu_DynamicImageButton1_i()];
               if(!_loc2_)
               {
                  _loc1_.addEventListener("click",this.___CitySquareSideMenu_Group2_click);
                  if(_loc3_ || Boolean(this))
                  {
                     addr006b:
                     _loc1_.addEventListener("rollOver",this.___CitySquareSideMenu_Group2_rollOver);
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr008f:
                        _loc1_.addEventListener("rollOut",this.___CitySquareSideMenu_Group2_rollOut);
                        if(!_loc2_)
                        {
                           §§goto(addr00a0);
                        }
                        §§goto(addr00ac);
                     }
                  }
                  addr00a0:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr00ac:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr00b0);
               }
               §§goto(addr008f);
            }
            addr00b0:
            return _loc1_;
         }
         §§goto(addr006b);
      }
      
      private function _CitySquareSideMenu_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc2_)
         {
            _loc1_.dynaBmpSourceName = "questmarker_base";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.dynaLibName = "gui_ui_questSide";
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.verticalCenter = 0;
                  if(_loc3_ || _loc2_)
                  {
                     addr0079:
                     _loc1_.horizontalCenter = 0;
                     if(!_loc2_)
                     {
                        addr0083:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
                  §§goto(addr0093);
               }
               §§goto(addr0079);
            }
            §§goto(addr0083);
         }
         addr0093:
         return _loc1_;
      }
      
      private function _CitySquareSideMenu_DynamicImageButton1_i() : DynamicImageButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.styleName = "citySquareButton";
            if(_loc2_)
            {
               _loc1_.width = 44;
               if(_loc2_)
               {
                  _loc1_.height = 46;
                  if(_loc2_)
                  {
                     _loc1_.top = 3;
                     if(!_loc3_)
                     {
                        addr005e:
                        _loc1_.left = 5;
                        if(_loc2_ || _loc2_)
                        {
                           §§goto(addr0070);
                        }
                     }
                  }
                  §§goto(addr008f);
               }
               addr0070:
               _loc1_.id = "citySquareIcon";
               if(_loc2_ || Boolean(this))
               {
                  addr008f:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        _loc1_.document = this;
                        if(_loc2_)
                        {
                           addr00a4:
                           this.citySquareIcon = _loc1_;
                           if(!_loc3_)
                           {
                              BindingManager.executeBindings(this,"citySquareIcon",this.citySquareIcon);
                           }
                        }
                     }
                     §§goto(addr00bb);
                  }
                  §§goto(addr00a4);
               }
               addr00bb:
               return _loc1_;
            }
         }
         §§goto(addr005e);
      }
      
      public function ___CitySquareSideMenu_Group2_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.onClick();
         }
      }
      
      public function ___CitySquareSideMenu_Group2_rollOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.onMouseOver();
         }
      }
      
      public function ___CitySquareSideMenu_Group2_rollOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.onMouseOut();
         }
      }
      
      private function _CitySquareSideMenu_Group3_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.left = -250;
            if(_loc2_)
            {
               _loc1_.top = -5;
               if(_loc2_)
               {
                  _loc1_.id = "menuContainer";
                  if(_loc2_)
                  {
                     addr004f:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(this))
                        {
                           §§goto(addr006f);
                        }
                     }
                     §§goto(addr0080);
                  }
                  addr006f:
                  _loc1_.document = this;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0080:
                     this.menuContainer = _loc1_;
                     if(!_loc3_)
                     {
                        BindingManager.executeBindings(this,"menuContainer",this.menuContainer);
                     }
                  }
                  §§goto(addr0097);
               }
               §§goto(addr004f);
            }
            addr0097:
            return _loc1_;
         }
         §§goto(addr004f);
      }
      
      [Bindable(event="propertyChange")]
      public function get citySquareIcon() : DynamicImageButton
      {
         return this._58777855citySquareIcon;
      }
      
      public function set citySquareIcon(param1:DynamicImageButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._58777855citySquareIcon;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._58777855citySquareIcon = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     §§goto(addr005b);
                  }
                  §§goto(addr006b);
               }
               addr005b:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr006b:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"citySquareIcon",_loc2_,param1));
                  }
               }
               §§goto(addr007a);
            }
         }
         addr007a:
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
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1784090142menuContainer = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"menuContainer",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr006d);
            }
            addr007c:
            return;
         }
         §§goto(addr006d);
      }
   }
}

