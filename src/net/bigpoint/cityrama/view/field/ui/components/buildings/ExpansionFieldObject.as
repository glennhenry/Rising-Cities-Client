package net.bigpoint.cityrama.view.field.ui.components.buildings
{
   import net.bigpoint.cityrama.model.field.vo.ExpansionFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardAssetsReferenceHolder;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   
   public class ExpansionFieldObject extends BillboardObject
   {
      
      private var _enableMouseOver:Boolean = true;
      
      public function ExpansionFieldObject(param1:BillboardAssetsReferenceHolder, param2:ExpansionFieldObjectVo)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function prepareBasementViewManager() : void
      {
      }
      
      override public function prepareIconStateManager() : void
      {
      }
      
      override public function invalidateIconStateManager(param1:Boolean = false) : void
      {
      }
      
      public function get enableMouseOver() : Boolean
      {
         return this._enableMouseOver;
      }
      
      public function set enableMouseOver(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._enableMouseOver = param1;
            if(_loc2_)
            {
               this.expansionFieldObjectVo.rollOverRect.enable = param1;
            }
         }
      }
      
      public function get expansionFieldObjectVo() : ExpansionFieldObjectVo
      {
         return billboardObjectVo as ExpansionFieldObjectVo;
      }
   }
}

