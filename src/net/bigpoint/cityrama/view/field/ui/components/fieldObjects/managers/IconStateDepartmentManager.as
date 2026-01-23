package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import flash.display.Sprite;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.InfrastructureBuildingFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IIcondataVo;
   import net.bigpoint.util.RisingBitmap;
   
   public class IconStateDepartmentManager extends IconStateManager
   {
      
      private var _levelUpIcon:Sprite;
      
      private var _profLevelUp:Boolean;
      
      public function IconStateDepartmentManager()
      {
         super();
      }
      
      override public function prepareIconStateManager(param1:IIcondataVo, param2:Sprite, param3:SmartObjectContainer) : void
      {
         _iconData = param1;
         _billboardObjectVo = param1 as BillboardObjectVo;
         _iconContainer = param2;
         _smartObjectContainer = param3;
         this._levelUpIcon = new Sprite();
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
         this._profLevelUp = false;
         if((_billboardObjectVo as InfrastructureBuildingFieldObjectVo).professionalCanLevelUp && !_billboardObjectVo.isUnderConstruction() && _billboardObjectVo.isConnectedToStreet)
         {
            this._profLevelUp = true;
            this.setIcon();
         }
         if(!this._profLevelUp)
         {
            super.invalidateIconStateManager(param1);
         }
      }
      
      override protected function setIcon() : void
      {
         var _loc1_:Sprite = null;
         clear(this._levelUpIcon);
         if(_billboardObjectVo.currentMode == "" && _billboardObjectVo.hideIconsForMoveMode)
         {
            super.checkGroundRestrictions();
            super.checkBlockedByGround();
            super.checkConnected();
            super.setIcon();
            return;
         }
         if(this._profLevelUp)
         {
            this._levelUpIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"professional_levelup",true));
            _loc1_ = this._levelUpIcon;
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

