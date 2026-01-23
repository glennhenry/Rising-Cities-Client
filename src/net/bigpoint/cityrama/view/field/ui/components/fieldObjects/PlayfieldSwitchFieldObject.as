package net.bigpoint.cityrama.view.field.ui.components.fieldObjects
{
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import net.bigpoint.cityrama.model.field.vo.PlayfieldSwitchFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.PlayfieldSwitchFieldObjectIconManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IIconStateManager;
   import net.bigpoint.field3d.vo.MatrixObject3dVo;
   
   public class PlayfieldSwitchFieldObject extends ClientFieldObject
   {
      
      private var _playfieldSwitchFieldObjectVo:PlayfieldSwitchFieldObjectVo;
      
      protected var _iconStateManager:IIconStateManager;
      
      protected var _iconContainer:Sprite;
      
      public function PlayfieldSwitchFieldObject(param1:PreloadableDisplayObject, param2:MatrixObject3dVo)
      {
         var _loc3_:DisplayObject = null;
         this._iconContainer = new Sprite();
         super(param1,param2);
         this._playfieldSwitchFieldObjectVo = param2 as PlayfieldSwitchFieldObjectVo;
         addContainer(this._iconContainer,true);
         this._iconContainer.addEventListener(MouseEvent.CLICK,this.onMouseClick);
         this._iconContainer.addEventListener(MouseEvent.MOUSE_OVER,this.onIconMouseOver);
         this.prepareIconStateManager();
         for each(_loc3_ in this.sprites)
         {
            if(_loc3_ is Sprite)
            {
               (_loc3_ as Sprite).mouseEnabled = false;
            }
         }
         _hitzoneContainer.mouseEnabled = true;
         this._iconContainer.mouseEnabled = true;
         this.container.mouseEnabled = false;
      }
      
      public function get playfieldSwitchFieldObjectVo() : PlayfieldSwitchFieldObjectVo
      {
         return this._playfieldSwitchFieldObjectVo;
      }
      
      protected function prepareIconStateManager() : void
      {
         if(this._iconStateManager == null)
         {
            this._iconStateManager = new PlayfieldSwitchFieldObjectIconManager();
         }
         this._iconStateManager.prepareIconStateManager(this._playfieldSwitchFieldObjectVo,this._iconContainer,_billboardObjectContainer);
      }
      
      private function onIconMouseOver(param1:MouseEvent) : void
      {
         this._iconContainer.removeEventListener(MouseEvent.MOUSE_OVER,this.onIconMouseOver);
         this._iconContainer.addEventListener(MouseEvent.MOUSE_OUT,this.onIconMouseOut);
         this.dispatchRollOver(true);
      }
      
      private function onIconMouseOut(param1:MouseEvent) : void
      {
         this._iconContainer.removeEventListener(MouseEvent.MOUSE_OUT,this.onIconMouseOut);
         this._iconContainer.addEventListener(MouseEvent.MOUSE_OVER,this.onIconMouseOver);
         this.dispatchRollOut(true);
      }
      
      override public function invalidateHighlightManager(param1:String, param2:Boolean = true) : void
      {
         super.invalidateHighlightManager(param1,param2);
      }
      
      override public function dispatchRollOver(param1:Boolean = false) : void
      {
         if(this._playfieldSwitchFieldObjectVo.state != PlayfieldSwitchFieldObjectVo.STATE_BLOCKED)
         {
            super.dispatchRollOver(param1);
         }
      }
      
      override public function dispatchRollOut(param1:Boolean = false) : void
      {
         if(this._playfieldSwitchFieldObjectVo.state != PlayfieldSwitchFieldObjectVo.STATE_BLOCKED)
         {
            super.dispatchRollOut(param1);
         }
      }
      
      override protected function onMouseClick(param1:MouseEvent) : void
      {
         if(this._playfieldSwitchFieldObjectVo.state != PlayfieldSwitchFieldObjectVo.STATE_BLOCKED)
         {
            super.onMouseClick(param1);
         }
      }
      
      public function set state(param1:String) : void
      {
         if(param1 != this._playfieldSwitchFieldObjectVo.state)
         {
            this._playfieldSwitchFieldObjectVo.state = param1;
            invalidateEstablishedManager();
            this._iconStateManager.invalidateIconStateManager();
         }
      }
      
      public function set iconVisibility(param1:Boolean) : void
      {
         this.playfieldSwitchFieldObjectVo.hideIconsForMoveMode = !param1;
         this._iconStateManager.invalidateIconStateManager();
      }
   }
}

