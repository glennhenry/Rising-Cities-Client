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
         super();
         mx_internal::_document = this;
         this.width = 134;
         this.height = 163;
         this.mxmlContent = [this._FriendGIFTComponent_Group2_c()];
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         super.moduleFactory = param1;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      private function _FriendGIFTComponent_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._FriendGIFTComponent_BriskImageDynaLib1_c(),this._FriendGIFTComponent_BriskImageDynaLib2_c(),this._FriendGIFTComponent_BriskMCDynaLib1_c(),this._FriendGIFTComponent_MultistateButton1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendGIFTComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_FriendBook";
         _loc1_.dynaBmpSourceName = "postit_bg_blue";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendGIFTComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_FriendBook";
         _loc1_.top = 6;
         _loc1_.horizontalCenter = 0;
         _loc1_.dynaBmpSourceName = "polaroid_gifiting_disabled";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendGIFTComponent_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.top = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.dynaMCSourceName = "stickytape_top";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendGIFTComponent_MultistateButton1_c() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.enabled = false;
         _loc1_.useSmallSkin = true;
         _loc1_.horizontalCenter = 0;
         _loc1_.bottom = 6;
         _loc1_.width = 82;
         _loc1_.imageNameLeft = "button_icon_closed";
         _loc1_.libNameLeft = "gui_popups_FriendBook";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
   }
}

