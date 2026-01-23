package net.bigpoint.cityrama.view.field.ui.components.fieldObjects
{
   import net.bigpoint.cityrama.model.field.vo.BridgeFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.BridgeIconManager;
   import net.bigpoint.field3d.vo.MatrixObject3dVo;
   
   public class BridgeFieldObject extends PlayfieldSwitchFieldObject
   {
      
      protected var _bridgeFieldObjectVo:BridgeFieldObjectVo;
      
      public function BridgeFieldObject(param1:PreloadableDisplayObject, param2:MatrixObject3dVo)
      {
         this._bridgeFieldObjectVo = param2 as BridgeFieldObjectVo;
         super(param1,param2);
      }
      
      override protected function prepareIconStateManager() : void
      {
         if(_iconStateManager == null)
         {
            _iconStateManager = new BridgeIconManager();
         }
         _iconStateManager.prepareIconStateManager(this._bridgeFieldObjectVo,_iconContainer,_billboardObjectContainer);
      }
      
      public function get bridgeFieldObjectVo() : BridgeFieldObjectVo
      {
         return this._bridgeFieldObjectVo;
      }
      
      override public function changeInteractionstate(param1:Boolean) : void
      {
         super.changeInteractionstate(param1);
         _iconContainer.mouseEnabled = param1;
      }
   }
}

