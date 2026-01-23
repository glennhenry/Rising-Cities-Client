package net.bigpoint.cityrama.view.friendBook.ui.components
{
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import spark.components.Group;
   
   public class FriendGIFTComponent extends Group
   {
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function FriendGIFTComponent()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(_loc2_ || Boolean(this))
            {
               mx_internal::_document = this;
               if(!(_loc1_ && _loc2_))
               {
                  addr0054:
                  this.width = 134;
                  if(_loc2_)
                  {
                     this.height = 163;
                     if(!_loc1_)
                     {
                        addr006a:
                        this.mxmlContent = [this._FriendGIFTComponent_Group2_c()];
                     }
                     §§goto(addr0075);
                  }
               }
               §§goto(addr006a);
            }
            addr0075:
            return;
         }
         §§goto(addr0054);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(!(_loc2_ && Boolean(param1)))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr0045);
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         addr0045:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super.initialize();
         }
      }
      
      private function _FriendGIFTComponent_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.mxmlContent = [this._FriendGIFTComponent_BriskImageDynaLib1_c(),this._FriendGIFTComponent_BriskImageDynaLib2_c(),this._FriendGIFTComponent_BriskMCDynaLib1_c(),this._FriendGIFTComponent_MultistateButton1_c()];
            if(_loc3_ || _loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _FriendGIFTComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_FriendBook";
            if(!_loc2_)
            {
               addr0036:
               _loc1_.dynaBmpSourceName = "postit_bg_blue";
               if(_loc3_)
               {
                  §§goto(addr0041);
               }
               §§goto(addr0055);
            }
            addr0041:
            if(!_loc1_.document)
            {
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr0055:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0036);
      }
      
      private function _FriendGIFTComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_FriendBook";
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.top = 6;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.horizontalCenter = 0;
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0076:
                     _loc1_.dynaBmpSourceName = "polaroid_gifiting_disabled";
                     if(!_loc2_)
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
               §§goto(addr0092);
            }
            §§goto(addr0076);
         }
         addr0092:
         return _loc1_;
      }
      
      private function _FriendGIFTComponent_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc3_)
            {
               _loc1_.top = 0;
               if(!_loc3_)
               {
                  addr004b:
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     §§goto(addr006a);
                  }
                  §§goto(addr008a);
               }
            }
            addr006a:
            _loc1_.dynaMCSourceName = "stickytape_top";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr008a:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr004b);
      }
      
      private function _FriendGIFTComponent_MultistateButton1_c() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(!_loc2_)
         {
            _loc1_.enabled = false;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.useSmallSkin = true;
               if(!(_loc2_ && Boolean(this)))
               {
                  §§goto(addr0044);
               }
               §§goto(addr00be);
            }
            addr0044:
            _loc1_.horizontalCenter = 0;
            if(!_loc2_)
            {
               addr0059:
               _loc1_.bottom = 6;
               if(_loc3_)
               {
                  _loc1_.width = 82;
                  if(_loc3_ || _loc2_)
                  {
                     addr0076:
                     _loc1_.imageNameLeft = "button_icon_closed";
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.libNameLeft = "gui_popups_FriendBook";
                        if(_loc3_ || Boolean(this))
                        {
                           §§goto(addr00aa);
                        }
                        §§goto(addr00be);
                     }
                  }
                  addr00aa:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        addr00be:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr00c2);
               }
               §§goto(addr0076);
            }
            addr00c2:
            return _loc1_;
         }
         §§goto(addr0059);
      }
   }
}

