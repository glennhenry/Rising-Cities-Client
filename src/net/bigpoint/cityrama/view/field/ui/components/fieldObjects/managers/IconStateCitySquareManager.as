package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import flash.display.Sprite;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.CitySquareFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IIcondataVo;
   import net.bigpoint.util.RisingBitmap;
   
   public class IconStateCitySquareManager extends IconStateManager
   {
      
      private var _citySquareIcon:Sprite;
      
      private var _hasState:Boolean;
      
      public function IconStateCitySquareManager()
      {
         super();
      }
      
      override public function prepareIconStateManager(param1:IIcondataVo, param2:Sprite, param3:SmartObjectContainer) : void
      {
         _iconData = param1;
         _billboardObjectVo = param1 as BillboardObjectVo;
         _iconContainer = param2;
         _smartObjectContainer = param3;
         this._citySquareIcon = new Sprite();
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
         this._hasState = false;
         if(this.citySquareFieldObjectVo.currentEventState != CitySquareFieldObjectVo.NONE)
         {
            this._hasState = true;
            this.setIcon();
         }
         if(!this._hasState)
         {
            super.invalidateIconStateManager(param1);
         }
      }
      
      override protected function setIcon() : void
      {
         var _loc1_:Sprite = null;
         clear(this._citySquareIcon);
         if(_billboardObjectVo.currentMode == "" && _billboardObjectVo.hideIconsForMoveMode)
         {
            super.checkGroundRestrictions();
            super.checkBlockedByGround();
            super.checkConnected();
            super.setIcon();
            _iconContainer.visible = true;
            return;
         }
         if(this._hasState)
         {
            super.checkConnected();
            switch(this.citySquareFieldObjectVo.currentEventState)
            {
               case CitySquareFieldObjectVo.AVAILIBLE:
                  this._citySquareIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"CitySquareIconEventAvailible",true));
                  break;
               case CitySquareFieldObjectVo.EXPIRED:
                  this._citySquareIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"CitySquareIconEventExpired",true));
                  break;
               case CitySquareFieldObjectVo.RUNNING:
                  this._citySquareIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"CitySquareIconEventRunning",true));
                  break;
               case CitySquareFieldObjectVo.FINISHED:
                  this._citySquareIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"CitySquareIconEventFinished",true));
            }
            _loc1_ = this._citySquareIcon;
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
      
      private function get citySquareFieldObjectVo() : CitySquareFieldObjectVo
      {
         return _billboardObjectVo as CitySquareFieldObjectVo;
      }
   }
}

