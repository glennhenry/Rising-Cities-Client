package net.bigpoint.cityrama.view.friendBook.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import spark.components.Group;
   
   public class FriendBonusLocked extends Group
   {
      
      private var _100313435image:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function FriendBonusLocked()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super();
            if(_loc2_ || Boolean(this))
            {
               mx_internal::_document = this;
               if(!(_loc1_ && Boolean(this)))
               {
                  addr005c:
                  this.mxmlContent = [this._FriendBonusLocked_Group2_c()];
               }
               return;
            }
         }
         §§goto(addr005c);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            super.moduleFactory = param1;
            if(_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr0041);
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
            return;
         }
         addr0041:
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
      
      private function _FriendBonusLocked_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.mxmlContent = [this._FriendBonusLocked_BriskImageDynaLib1_c(),this._FriendBonusLocked_BriskImageDynaLib2_i(),this._FriendBonusLocked_BriskImageDynaLib3_c(),this._FriendBonusLocked_BriskMCDynaLib1_c()];
            if(_loc3_)
            {
               addr0058:
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0058);
      }
      
      private function _FriendBonusLocked_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.horizontalCenter = 0;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.top = 6;
                  §§goto(addr0052);
               }
               §§goto(addr007b);
            }
            addr0052:
            if(_loc3_ || _loc3_)
            {
               _loc1_.dynaBmpSourceName = "architect_postit_blocked";
               if(_loc3_)
               {
                  addr007b:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr0087:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr008b);
               }
               §§goto(addr0087);
            }
            §§goto(addr008b);
         }
         addr008b:
         return _loc1_;
      }
      
      private function _FriendBonusLocked_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.verticalCenter = -12;
            if(!_loc3_)
            {
               _loc1_.horizontalCenter = 0;
               if(_loc2_)
               {
                  _loc1_.id = "image";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0074:
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              §§goto(addr007d);
                           }
                           §§goto(addr0087);
                        }
                     }
                     addr007d:
                     this.image = _loc1_;
                     if(!_loc3_)
                     {
                        addr0087:
                        BindingManager.executeBindings(this,"image",this.image);
                     }
                     §§goto(addr0094);
                  }
                  §§goto(addr0074);
               }
               addr0094:
               return _loc1_;
            }
            §§goto(addr007d);
         }
         §§goto(addr0074);
      }
      
      private function _FriendBonusLocked_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.verticalCenter = 2;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.horizontalCenter = -2;
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.dynaBmpSourceName = "architect_icon_blocked";
                     if(!(_loc3_ && _loc3_))
                     {
                        addr007f:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr008b:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr008f);
                  }
               }
               §§goto(addr007f);
            }
            addr008f:
            return _loc1_;
         }
         §§goto(addr008b);
      }
      
      private function _FriendBonusLocked_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc3_)
            {
               _loc1_.top = 0;
               if(_loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  addr0048:
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.dynaMCSourceName = "stickytape_top";
                     if(!_loc3_)
                     {
                        §§goto(addr0071);
                     }
                     §§goto(addr007d);
                  }
               }
               addr0071:
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr007d:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
            §§goto(addr0048);
         }
         §§goto(addr007d);
      }
      
      [Bindable(event="propertyChange")]
      public function get image() : BriskImageDynaLib
      {
         return this._100313435image;
      }
      
      public function set image(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._100313435image;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._100313435image = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"image",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0066);
            }
         }
         addr0075:
      }
   }
}

