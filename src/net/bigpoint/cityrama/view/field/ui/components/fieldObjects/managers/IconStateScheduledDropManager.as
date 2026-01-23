package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import flash.display.Sprite;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ScheduledDropFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IIcondataVo;
   import net.bigpoint.util.RisingBitmap;
   
   public class IconStateScheduledDropManager extends IconStateManager
   {
      
      private var _dropIcon:Sprite;
      
      private var _dropAvailable:Boolean;
      
      public function IconStateScheduledDropManager()
      {
         super();
      }
      
      override public function prepareIconStateManager(param1:IIcondataVo, param2:Sprite, param3:SmartObjectContainer) : void
      {
         _iconData = param1;
         _billboardObjectVo = param1 as BillboardObjectVo;
         _iconContainer = param2;
         _smartObjectContainer = param3;
         this._dropIcon = new Sprite();
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
         this._dropAvailable = false;
         if(_billboardObjectVo.isHarvestReady && _billboardObjectVo.isConnectedToStreet)
         {
            this._dropAvailable = true;
            this.setIcon();
         }
         if(!this._dropAvailable)
         {
            super.invalidateIconStateManager(param1);
         }
      }
      
      override protected function setIcon() : void
      {
         var _loc1_:Sprite = null;
         clear(this._dropIcon);
         if(_billboardObjectVo.currentMode == "" && _billboardObjectVo.hideIconsForMoveMode)
         {
            super.checkGroundRestrictions();
            super.checkBlockedByGround();
            super.checkConnected();
            super.setIcon();
            _iconContainer.visible = true;
            return;
         }
         if(this._dropAvailable)
         {
            super.checkConnected();
            switch((_billboardObjectVo as ScheduledDropFieldObjectVo).tagType)
            {
               case ServerTagConstants.CHRISTMAS_TREE:
                  this._dropIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"TownHallHarvestReady",true));
                  break;
               case ServerTagConstants.CLIENT_OLYMPIC_STADIUM:
                  this._dropIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"OlympicIcon",true));
                  break;
               default:
                  this._dropIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"TownHallHarvestReady",true));
            }
            _loc1_ = this._dropIcon;
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

