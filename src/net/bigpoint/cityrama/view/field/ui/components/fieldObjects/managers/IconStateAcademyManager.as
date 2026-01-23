package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import flash.display.Sprite;
   import net.bigpoint.cityrama.model.field.vo.AcademyFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IIcondataVo;
   import net.bigpoint.util.RisingBitmap;
   
   public class IconStateAcademyManager extends IconStateManager
   {
      
      private var _educationIcon:Sprite;
      
      private var _educationIsDone:Boolean;
      
      private var _educationIsIdle:Boolean;
      
      public function IconStateAcademyManager()
      {
         super();
      }
      
      override public function prepareIconStateManager(param1:IIcondataVo, param2:Sprite, param3:SmartObjectContainer) : void
      {
         _iconData = param1;
         _billboardObjectVo = param1 as BillboardObjectVo;
         _iconContainer = param2;
         _smartObjectContainer = param3;
         this._educationIcon = new Sprite();
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
         var _temp_2:* = this;
         this._educationIsIdle = false;
         _temp_2._educationIsDone = false;
         if((_billboardObjectVo as AcademyFieldObjectVo).educationIsDone && !_billboardObjectVo.isUnderConstruction() && _billboardObjectVo.isConnectedToStreet)
         {
            this._educationIsDone = true;
            this.setIcon();
         }
         else if((_billboardObjectVo as AcademyFieldObjectVo).educationIsIdle && !_billboardObjectVo.isUnderConstruction() && _billboardObjectVo.isConnectedToStreet)
         {
            this._educationIsIdle = true;
            this.setIcon();
         }
         if(!this._educationIsDone && !this._educationIsIdle)
         {
            super.invalidateIconStateManager(param1);
         }
      }
      
      override protected function setIcon() : void
      {
         var _loc1_:Sprite = null;
         clear(this._educationIcon);
         if(_billboardObjectVo.currentMode == "" && _billboardObjectVo.hideIconsForMoveMode)
         {
            super.checkGroundRestrictions();
            super.checkBlockedByGround();
            super.checkConnected();
            super.setIcon();
            _iconContainer.visible = true;
            return;
         }
         if(this._educationIsDone)
         {
            this._educationIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"education_finished",true));
            _loc1_ = this._educationIcon;
         }
         else if(this._educationIsIdle)
         {
            this._educationIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"education_idle",true));
            _loc1_ = this._educationIcon;
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

