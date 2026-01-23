package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import flash.display.Sprite;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.PlayfieldSwitchFieldObjectVo;
   import net.bigpoint.cityrama.model.horizon.vo.HorizionSettingsVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IIcondataVo;
   import net.bigpoint.util.RisingBitmap;
   
   public class PlayfieldSwitchFieldObjectIconManager extends IconStateManager
   {
      
      private var _iconDefault:Sprite = new Sprite();
      
      private var _iconInProgress:Sprite = new Sprite();
      
      private var _dataVo:PlayfieldSwitchFieldObjectVo;
      
      public function PlayfieldSwitchFieldObjectIconManager()
      {
         super();
      }
      
      override public function prepareIconStateManager(param1:IIcondataVo, param2:Sprite, param3:SmartObjectContainer) : void
      {
         this._dataVo = param1 as PlayfieldSwitchFieldObjectVo;
         _billboardObjectVo = param1 as BillboardObjectVo;
         _iconData = param1;
         _iconContainer = param2;
         _smartObjectContainer = param3;
         _smartObjectContainer.addEventListener(SmartObjectContainer.INVALIDATED,changeContainerHeight);
         this.prepIcons();
         this.invalidateIconStateManager();
         this.checkContainerPosition();
      }
      
      override protected function checkContainerPosition() : void
      {
         _iconContainer.x = 0;
         _iconContainer.y = -150;
      }
      
      override public function invalidateIconStateManager(param1:Boolean = false) : void
      {
         if(!useIcons() || _iconData.userInteractionLocked)
         {
            while(_iconContainer.numChildren)
            {
               _iconContainer.removeChildAt(0);
            }
            return;
         }
         if(!_iconData.hideIconsForMoveMode)
         {
            _isDirty = true;
            _iconContainer.visible = true;
            this.setIcon();
         }
         else
         {
            _isDirty = true;
            _iconContainer.visible = false;
            this.setIcon();
         }
      }
      
      override protected function setIcon() : void
      {
         var _loc1_:Sprite = null;
         if(this._dataVo)
         {
            switch(this._dataVo.state)
            {
               case PlayfieldSwitchFieldObjectVo.STATE_DONE:
                  _loc1_ = this._iconDefault;
                  break;
               case PlayfieldSwitchFieldObjectVo.STATE_BLOCKED:
                  _loc1_ = null;
                  break;
               case PlayfieldSwitchFieldObjectVo.STATE_IN_PROGRESS:
                  _loc1_ = this._iconInProgress;
            }
         }
         if(_loc1_ != null)
         {
            _currentIcon = _loc1_;
            _iconContainer.addChild(_loc1_);
         }
         else
         {
            _currentIcon = null;
         }
         _iconContainer.mouseEnabled = _currentIcon != null;
         _isDirty = false;
      }
      
      private function prepIcons() : void
      {
         while(this._iconDefault.numChildren)
         {
            this._iconDefault.removeChildAt(0);
         }
         while(this._iconInProgress.numChildren)
         {
            this._iconInProgress.removeChildAt(0);
         }
         if(this._dataVo != null)
         {
            this._iconDefault.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"switchFrom_" + this._dataVo.currentPlayfieldId + "_to_" + this._dataVo.targetPlayfieldId,true));
            if(this._dataVo.currentPlayfieldId == HorizionSettingsVo.CITY_PLAYFIELD_ID)
            {
               this._iconInProgress.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"switchFrom_" + this._dataVo.currentPlayfieldId + "_to_" + this._dataVo.targetPlayfieldId + "_inProgress",true));
            }
         }
      }
   }
}

