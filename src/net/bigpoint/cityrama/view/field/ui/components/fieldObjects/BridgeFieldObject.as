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
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(param1))
         {
            this._bridgeFieldObjectVo = param2 as BridgeFieldObjectVo;
            if(_loc4_)
            {
               addr003e:
               super(param1,param2);
            }
            return;
         }
         §§goto(addr003e);
      }
      
      override protected function prepareIconStateManager() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            if(_iconStateManager == null)
            {
               if(_loc2_)
               {
                  §§goto(addr002d);
               }
            }
            §§goto(addr003f);
         }
         addr002d:
         _iconStateManager = new BridgeIconManager();
         if(_loc2_)
         {
            addr003f:
            _iconStateManager.prepareIconStateManager(this._bridgeFieldObjectVo,_iconContainer,_billboardObjectContainer);
         }
      }
      
      public function get bridgeFieldObjectVo() : BridgeFieldObjectVo
      {
         return this._bridgeFieldObjectVo;
      }
      
      override public function changeInteractionstate(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            super.changeInteractionstate(param1);
            if(!_loc3_)
            {
               _iconContainer.mouseEnabled = param1;
            }
         }
      }
   }
}

