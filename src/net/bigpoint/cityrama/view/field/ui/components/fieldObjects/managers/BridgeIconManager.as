package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import com.greensock.plugins.TransformAroundCenterPlugin;
   import com.greensock.plugins.TweenPlugin;
   import flash.display.Sprite;
   import net.bigpoint.cityrama.model.field.vo.BridgeFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.PlayfieldSwitchFieldObjectVo;
   import net.bigpoint.cityrama.model.horizon.vo.HorizionSettingsVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IIcondataVo;
   import net.bigpoint.util.RisingBitmap;
   
   public class BridgeIconManager extends IconStateManager
   {
      
      private var _bridgeDataVo:BridgeFieldObjectVo;
      
      private var _repairMeIcon:Sprite = new Sprite();
      
      private var _switchToCoastalIcon:Sprite = new Sprite();
      
      private var _switchToMainIcon:Sprite = new Sprite();
      
      public function BridgeIconManager()
      {
         super();
      }
      
      override public function prepareIconStateManager(param1:IIcondataVo, param2:Sprite, param3:SmartObjectContainer) : void
      {
         TweenPlugin.activate([TransformAroundCenterPlugin]);
         this._bridgeDataVo = param1 as BridgeFieldObjectVo;
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
         if(this._bridgeDataVo.currentPlayfieldId == HorizionSettingsVo.CITY_PLAYFIELD_ID)
         {
            _iconContainer.x = -266;
            _iconContainer.y = -100;
         }
         else if(this._bridgeDataVo.currentPlayfieldId == HorizionSettingsVo.COASTAL_PLAYFIELD_ID)
         {
            _iconContainer.x = 154;
            _iconContainer.y = -340;
         }
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
         switch(this._bridgeDataVo.state)
         {
            case PlayfieldSwitchFieldObjectVo.STATE_DONE:
               if(this._bridgeDataVo.currentPlayfieldId == HorizionSettingsVo.CITY_PLAYFIELD_ID)
               {
                  _loc1_ = this._switchToCoastalIcon;
                  break;
               }
               if(this._bridgeDataVo.currentPlayfieldId == HorizionSettingsVo.COASTAL_PLAYFIELD_ID)
               {
                  _loc1_ = this._switchToMainIcon;
               }
               break;
            case PlayfieldSwitchFieldObjectVo.STATE_IN_PROGRESS:
               _loc1_ = this._repairMeIcon;
               break;
            case PlayfieldSwitchFieldObjectVo.STATE_BLOCKED:
            default:
               _loc1_ = null;
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
         while(this._switchToMainIcon.numChildren)
         {
            this._switchToMainIcon.removeChildAt(0);
         }
         while(this._switchToCoastalIcon.numChildren)
         {
            this._switchToCoastalIcon.removeChildAt(0);
         }
         while(this._repairMeIcon.numChildren)
         {
            this._repairMeIcon.removeChildAt(0);
         }
         this._switchToCoastalIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"switchTo101",true));
         this._switchToMainIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"switchTo100",true));
         this._repairMeIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"repairBridge",true));
      }
   }
}

