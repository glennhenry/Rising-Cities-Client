package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import flash.display.Sprite;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.CinemaFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IIcondataVo;
   import net.bigpoint.util.RisingBitmap;
   
   public class IconStateCinemaManager extends IconStateManager
   {
      
      private var _cinemaIcon:Sprite;
      
      private var _videoAvailable:Boolean;
      
      public function IconStateCinemaManager()
      {
         super();
      }
      
      override public function prepareIconStateManager(param1:IIcondataVo, param2:Sprite, param3:SmartObjectContainer) : void
      {
         _iconData = param1;
         _billboardObjectVo = param1 as BillboardObjectVo;
         _iconContainer = param2;
         _smartObjectContainer = param3;
         this._cinemaIcon = new Sprite();
         super.prepareIconStateManager(param1,param2,param3);
      }
      
      override public function invalidateIconStateManager(param1:Boolean = false) : void
      {
         if(!useIcons() || _billboardObjectVo.userInteractionLocked)
         {
            while(_iconContainer.numChildren)
            {
               _iconContainer.removeChildAt(0);
            }
            return;
         }
         this._videoAvailable = false;
         if((_billboardObjectVo as CinemaFieldObjectVo).videoAvailable && _billboardObjectVo.isConnectedToStreet && !_billboardObjectVo.isReadyToInaugurate)
         {
            checkActivateReady();
            this._videoAvailable = true;
            this.setIcon();
         }
         if(!this._videoAvailable)
         {
            super.invalidateIconStateManager(param1);
         }
      }
      
      override protected function setIcon() : void
      {
         var _loc1_:Sprite = null;
         clear(this._cinemaIcon);
         if(_billboardObjectVo.currentMode == "" && _billboardObjectVo.hideIconsForMoveMode)
         {
            super.checkGroundRestrictions();
            super.checkBlockedByGround();
            super.checkConnected();
            super.setIcon();
            return;
         }
         if(this._videoAvailable)
         {
            this._cinemaIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"CinemaIcon",true));
            _loc1_ = this._cinemaIcon;
         }
         while(_iconContainer.numChildren)
         {
            _iconContainer.removeChildAt(0);
         }
         if(_loc1_ != null)
         {
            _currentIcon = _loc1_;
            _iconContainer.addChild(_loc1_);
            if(!_billboardObjectVo.userInteractionLocked)
            {
               _iconContainer.mouseEnabled = true;
            }
         }
         else
         {
            super.setIcon();
         }
         super.checkContainerPosition();
      }
   }
}

